#!/bin/bash
# Simple Interest Calculator

echo "Enter Principal Amount:"
read p
echo "Enter Rate of Interest:"
read r
echo "Enter Time Period (years):"
read t

interest=$(echo "scale=2; ($p * $r * $t) / 100" | bc -l 2>/dev/null || awk "BEGIN {print ($p * $r * $t) / 100}")
echo "Simple Interest is: $interest"
