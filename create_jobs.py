import yaml
import ruamel.yaml
import sys
import os

def Createjobs():
 # YAMLファイルの読み込み
 file_path = os.path.abspath('.github/workflows/new_test.yml')
 with open(file_path, 'r') as f:
    yaml_obj = ruamel.yaml.YAML().load(f)

 components = ['aaa', 'bbb']
 num_of_copies = len(components)
 print(num_of_copies)

 # 新しいjob_nodeを作成
 new_job_node = {
    f'job_node{i+1}': {
        'needs': ['check-bats-version1'],
        'uses': './.github/workflows/test_CI_run.yml',
        'name': f'yml_compo{i+1}',
        'with': {
            'input_mod': "master",
            'input_compo': components[i % len(components)]
        },
    } for i in range(0, num_of_copies)
 }

 # jobsキーの配下に新しいjob_nodeを追加
 yaml_obj['jobs'].update(new_job_node)

 # 不要なjob_nodeを削除
 del yaml_obj['jobs']['job_node']

 # 新しいjob_nodeをコピーして、job_node2~4を作成
 for i in range(0, num_of_copies):
    yaml_obj['jobs'][f'job_node{i+1}'] = dict(yaml_obj['jobs'][f'job_node{i+1}'])

 # YAMLファイルに書き込む
 with open(file_path, 'w') as f:   
    ruamel.yaml.YAML().dump(yaml_obj, f)

def main():
    # 引数の取得
    components = sys.argv[1:]
    print(components)
    Createjobs()
   
if __name__ == "__main__":
    main()
