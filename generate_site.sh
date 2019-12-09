#!/bin/bash

mkdir -p site/charts
python3 flathub-api-stats-generator/main.py --report downloads_by_app --cache-dir stats_cache --type graph --model-skip-today \
	--output site/charts/downloads.png \
	--report-args app-id=org.eclipse.Java,app-id=org.eclipse.Committers
