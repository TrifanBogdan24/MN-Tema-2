#!/bin/bash

rm -f arhiva.zip
zip -r arhiva.zip             \
    "Digit Recognition - in"  \
    "Digit Recognition - ref" \
    functions/ in/ ref/       \
    Readme.pdf