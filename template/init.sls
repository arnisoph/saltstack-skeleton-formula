{% import_yaml "templates/map.yaml" as rawmap %}
{% set datamap = salt['grains.filter_by'](rawmap, merge=salt['pillar.get']('templates:lookup')) %}
