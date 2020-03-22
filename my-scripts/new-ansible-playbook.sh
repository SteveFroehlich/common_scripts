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


###### create playbook
playbook_content="
- hosts: localhost\n
  tasks:\n
  - name: running tasks\n
    include: tasks/main.yml\n
"
echo $playbook_content >> $projectName/playbook.yml

