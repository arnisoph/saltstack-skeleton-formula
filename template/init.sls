{% import_yaml "template/map.yaml" as rawmap %}
{% set datamap = salt['grains.filter_by'](rawmap, merge=salt['pillar.get']('template:lookup')) %}
