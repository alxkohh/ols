import employees
import projects

output_file = 'insert_tables.sql'
to_gen = [employees, projects]

with open(output_file, 'w+') as f:
    for table in to_gen:
        for s in table.gen_statements():
            f.write(s)
