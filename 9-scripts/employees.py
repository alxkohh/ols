# cols: emp_name, phone, position, dept, region

import helper
import labels
from itertools import product

emp_table_name = 'employees'
sal_table_name = 'salary'

emp_table_cols = ['emp_name', 'phone', 'position', 'dept', 'region']
sal_table_cols = ['emp_name', 'salary']

emp_stmt = helper.get_insert_statement(emp_table_name, helper.sql_columns_format(emp_table_cols))
sal_stmt = helper.get_insert_statement(sal_table_name, helper.sql_columns_format(sal_table_cols))

def gen_statements():
    results = []
    for elem in product(*labels.get('employees')):
        emp_name = helper.gen_random_alpha_str(10)
        phone = '9' + helper.gen_random_numeric_str(7)
        level = elem[0]
        dept = elem[1]
        pos = elem[2]
        region = elem[3]
        salary = helper.gen_random_numeric(30, 100) * 1000

        emp_table_vals_f = helper.sql_values_format([emp_name, phone, pos, dept, region])
        sal_table_vals_f = helper.sql_values_format([emp_name, salary])
        results.append(helper.insert_vals(emp_stmt, emp_table_vals_f))
        results.append(helper.insert_vals(sal_stmt, sal_table_vals_f))

    results.append('UPDATE employees SET employees.emp_r_label = gen_emp_r_label(employees.position, employees.region)')
    return results

