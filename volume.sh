#!/bin/bash

export VOLUME=${1:-/tmp/volume1/}
export MASTER=${2:-localhost:3000}
export TYPE=volume
uwsgi --http :${PORT:-3001} --wsgi-file src/run.py --callable volume --master --processes 4
