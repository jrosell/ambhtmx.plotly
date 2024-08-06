(docker build -f Dockerfile -t ambhtmx-plotly-image . || true) \
		&& docker run --env-file=.Renviron -p 7860:7860 --name ambhtmx-plotly-container --rm ambhtmx-plotly-image