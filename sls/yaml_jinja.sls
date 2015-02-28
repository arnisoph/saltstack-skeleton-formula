#!jinja|yaml

{% set datamap = salt['formhelper.get_defaults']('template', saltenv, ['yaml'])['yaml'] %}

# SLS includes/ excludes
include: {{ datamap.sls_include|default([]) }}
extend: {{ datamap.sls_extend|default({}) }}

# Test states
cmd_date:
  cmd:
    - run
    - name: echo The time is $(date)

cmd_system:
  cmd:
    - run
    - name: echo Your system is '{{ datamap.system }}'
