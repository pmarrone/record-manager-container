#!/bin/bash
#Koha
{% for koha in sources.koha %}
./batch-import-marc.sh -p /usr/local/vu-find/local/import/{{ koha.name }}.properties {{ koha.name }} &&
./batch-delete.sh {{ koha.name }} &&
{% endfor %}
#OJS
{% for ojs in sources.ojs %}
./batch-import-marc.sh -p /usr/local/vu-find/local/import/{{ ojs.name }}.properties {{ ojs.name }} &&
./batch-delete.sh {{ ojs.name }} &&
{% endfor %}
#DSpace
{% for dspace in sources.dspace %}
./batch-import-marc.sh -p /usr/local/vu-find/local/import/{{ dspace.name }}.properties {{ dspace.name }} &&
./batch-delete.sh {{ dspace.name }} &&
{% endfor %}

echo "All done!"
