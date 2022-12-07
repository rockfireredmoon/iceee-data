#!/usr/bin/env python3
import glob

sources = glob.glob('Static/**/*.html') + glob.glob('Static/**/*.txt') + glob.glob('Static/**/*.nut')
for i in sources:
    print(i)
