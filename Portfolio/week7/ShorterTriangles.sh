#!/bin/bash
#The script uses sed command to replace base with Base and height with height.
#The word area is replaced with Area .
bash ../week6/triangles.sh | sed 's/The area for a triangle with base/Base/g' | sed 's/and height/Height/g' | sed 's/is/Area/g'
