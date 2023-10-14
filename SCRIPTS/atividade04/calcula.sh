#!/bin/bash


echo "O valor total dos produtos comprados é $(grep " " compras.txt | cut -d ' ' -f 2 | paste -s -d "+" | bc)"
