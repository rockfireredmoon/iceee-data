#!/usr/bin/env python3
import glob

sources = glob.glob('Variable/**/*.txt') + glob.glob('Variable/**/*.nut')
for i in sources:
    print(i)
