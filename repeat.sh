#!/bin/bash

while inotifywait -e modify ~/.bash_history; do echo yeye; done
