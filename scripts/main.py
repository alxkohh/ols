import employees
import projects

with open('7-insert_employees.sql', 'w+') as f:
    for s in employees.gen_statements():
        f.write(s)

with open('8-insert_projects.sql', 'w+') as f:
    for s in projects.gen_statements():
        f.write(s)
