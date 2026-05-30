# Timing Fixes

## Issue
Setup violation due to high combinational delay.

## Cause
Adder + logic delay exceeded clock period.

## Fix Applied
Inserted pipeline stage.

## Result
Slack improved from -2 ns to +1 ns.
