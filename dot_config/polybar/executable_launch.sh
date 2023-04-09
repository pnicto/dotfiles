#!/bin/bash

polybar-msg cmd quit
polybar bar | tee -a /tmp/polybar.log & disown
