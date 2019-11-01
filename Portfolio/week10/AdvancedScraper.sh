#!/bin/bash
curl -s https://www.ecu.edu.au/degrees/study-areas/science | awk '/^Science/{print $0}'