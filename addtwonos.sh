#!/bin/bash

echo -n "Enter the first number: "
read a
echo -n "Enter the second number: "
read b

sum=$((a + b))

echo "The sum of $a and $b is $sum"
