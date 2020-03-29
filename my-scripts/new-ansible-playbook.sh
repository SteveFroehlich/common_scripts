#!/bin/sh

# usage 
#   ./new-ansible-playbook.sh my-project-name
#  or
#   ./new-ansible-playbook.sh 
# the latter will use the default dir name of playbook

if [ -n "$1" ]; then
  projectName=$1
else
  projectName="playbook"
fi

###### create project dir
mkdir $projectName


###### create host file
host_content="
localhost ansible_connection=localhost
"
echo $host_content >> $projectName/hosts


###### create task template
mkdir $projectName/tasks
task_content="
    - debug\n
        msg: \"initial task\"\n
"
echo $task_content >> $projectName/tasks/main.yml


###### create files dir
mkdir $projectName/files/


###### create templates dir
mkdir $projectName/templates/


###### create dir for roles
mkdir $projectName/roles/


###### create ansible config
config_content="
roles_path = roles/ 
"
echo $config_content >> $projectName/ansible.cfg


###### create playbook
playbook_content="
- hosts: localhost\n
  tasks:\n
  - name: running tasks\n
    include: tasks/main.yml\n
"
echo $playbook_content >> $projectName/playbook.yml

