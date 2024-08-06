(docker container rm -f ambhtmx-plotly-container || true) \
		&& (docker rmi $(docker images --format '{{.Repository}}:{{.ID}}'| egrep 'ambhtmx-plotly-image' | cut -d':' -f2 | uniq) --force || true)