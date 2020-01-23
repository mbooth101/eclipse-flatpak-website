#!/bin/bash

mkdir -p site/charts

python3 flathub-api-stats-generator/main.py --report downloads_by_app --cache-dir stats_cache --type graph \
	--model-skip-today --start-date 2019-11-11 --output site/charts/downloads.png \
	--report-args app-id=org.eclipse.Java,app-id=org.eclipse.Committers

python3 flathub-api-stats-generator/main.py --report monthly_downloads_by_app --cache-dir stats_cache --type data \
	--model-skip-today --start-date 2019-11-11 --output site/charts/monthly_downloads.json \
	--report-args app-id=org.eclipse.Java,app-id=org.eclipse.Committers
