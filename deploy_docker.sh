(docker container rm -f ambhtmx-plotly-container || true)\
		&& (docker rmi $(docker images --format '{{.Repository}}:{{.ID}}'| egrep 'ambhtmx-plotly-image' | cut -d':' -f2 | uniq) --force || true) \
		&& docker build -f Dockerfile -t ambhtmx-plotly-image . \
		&& docker run --env-file=.Renviron -p 7860:7860 --name ambhtmx-plotly-container --rm ambhtmx-plotly-image