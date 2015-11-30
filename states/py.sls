#!py
# -*- coding: utf-8 -*-
# vim: ts=4 sw=4 et

__formula__ = 'skeleton'


def run():
    config = {}
    datamap = __salt__['formhelper.defaults'](__formula__, __env__)
    _gen_state = __salt__['formhelper.generate_state']

    # SLS includes/ excludes
    config['include'] = datamap.get('sls_include', [])
    config['extend'] = datamap.get('sls_extend', {})

    # Test states
    attrs = [
        {'name': 'echo The time is $(date)'},
        ]

    state_id = 'py_cmd_date'
    config[state_id] = _gen_state('cmd', 'run', attrs)

    attrs = [
        {'name': 'echo Your system is \'{system}\''.format(system=datamap['system'])},
        ]

    state_id = 'py_cmd_system'
    config[state_id] = _gen_state('cmd', 'run', attrs)

    return config
