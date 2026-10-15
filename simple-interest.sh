#!/bin/bash
# Script to calculate simple interest based on user input

echo "---------------------------------------"
echo "       SIMPLE INTEREST CALCULATOR       "
echo "---------------------------------------"

# Prompt for inputs
echo "Enter the Principal Amount (P):"
read p

echo "Enter the Rate of Interest per year (%) (R):"
read r

echo "Enter the Time period in years (T):"
read t

# Calculate Simple Interest using bc for decimal/floating-point arithmetic
interest=$(echo "scale=2; ($p * $r * $t) / 100" | bc)
total=$(echo "scale=2; $p + $interest" | bc)

# Output results
echo "---------------------------------------"
echo "Simple Interest: $interest"
echo "Total Amount Payable: $total"
echo "---------------------------------------"
