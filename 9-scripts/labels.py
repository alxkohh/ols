# labels

# levels
levels = {
    'U': 'UNCLASSIFIED', 
    'C': 'CLASSIFIED',
    'S': 'SECRET'
}

# compartments
departments = {
    'HR': 'HUMAN_RESOURCE',
    'FIN': 'FINANCE',
    'ENG': 'ENGINEERING'
}

eng_types = {
    'FE': 'FRONTEND',
    'BE': 'BACKEND',
    'SEC': 'SECURITY',
    'DOPS': 'DEVOPS'
}

# groups
positions = {
    'DIR': 'DIRECTOR',
    'MGR': 'MANAGER',
    'EMP': 'EMPLOYEE'
}

regions = {
    'GLOBAL': 'GLOBAL',
    'APAC': 'APAC',
    'SG': 'SINGAPORE',
    'HK': 'HONG_KONG',
    'EMEA': 'EMEA',
    'LON': 'LONDON',
    'PAR': 'PARIS',
    'AMER': 'AMER',
    'NY': 'NEW_YORK',
    'SF': 'SAN_FRANCISCO'
}

required = {
    # what to iterate over
    'employees' : [levels, departments, positions, regions],
    'projects' : [levels, eng_types, positions, regions]
}

def get(t):
    return required[t]
