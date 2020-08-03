"""
example:
    $ python ~/common_scripts/my-scripts/gen_pipenv_cmd_from_requirements.py /path/to/requirements.txt

        pipenv install pckg1 pckg2 pckg3
    $_

    then copy past the command in the terminal with an active 
    pipenv managed virtualenv to install all the deps
    make sure to commit the Pipfile and Pipfile.lock changes
"""

import sys

def gen_pipenv_command(requirements_file):
    with open(requirements_file, 'r') as f:
        packages = [p for p in f.read().split('\n') if p != '']

    cmd = "pipenv install"
    for package in packages:
        cmd = cmd + " " + package

    return cmd


def main():
    if len(sys.argv) != 2:
        raise Exception("expecting a path to requirement.txt file as an argument")

    file = sys.argv[1]
    print("pipenv command to install the dependencies found")
    print("in file: " + file)
    print("is below:")
    print()
    print("  " + gen_pipenv_command(file))
    print()


if __name__ == "__main__":
    main()
