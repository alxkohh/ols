import employees
import projects

output_file = '7-insert_tables.sql'
to_gen = [employees, projects]

with open('7-insert_employees', 'w+') as f:
    for s in employees.gen_statements():
        f.write(s)

with open('8-insert_projects', 'w+') as f:
    for s in projects.gen_statements():
        f.write(s)
