#!jinja|yaml

{% from 'template/defaults.yaml' import rawmap with context %}
{% set datamap = salt['grains.filter_by'](rawmap, merge=salt['pillar.get']('template:lookup')) %}

