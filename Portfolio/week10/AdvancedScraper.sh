#!/bin/bash
#This command is used to show the study areas of ECU.
curl -s https://www.ecu.edu.au/degrees/study-areas/science | awk '{ /^Science/{print $0} }''