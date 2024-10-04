#!/bin/bash

/app/assets/sh/convert.sh

bundle exec jekyll serve --host 0.0.0.0 --no-watch
