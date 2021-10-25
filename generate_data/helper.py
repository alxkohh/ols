import string
import random

insert_stmt = 'INSERT INTO {table} ({columns}) VALUES ({{values}});\n'

def sql_columns_format(cols):
    return ', '.join(cols)

quote_str = '\'{s}\'' 

def add_quotes(s):
    return quote_str.format(s=s)

def sql_values_format(values):
    for i in range(len(values)):
        if type(values[i]) == str:
            values[i] = add_quotes(values[i])
        elif type(values[i]) == int:
            values[i] = str(values[i])

    return ', '.join(values)

def get_insert_statement(table, cols):
    return insert_stmt.format(table=table, columns=cols)

def insert_vals(stmt, values):
    return stmt.format(values=values)

# random generators

def gen_random_alpha_str(length):
    return ''.join((random.choice(string.ascii_lowercase) for x in range(length)))

def gen_random_numeric_str(length):
    return ''.join((random.choice(string.digits) for x in range(length)))

def gen_random_numeric(low, high):
    return random.randint(low, high)
