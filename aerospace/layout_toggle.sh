#!/bin/bash

# Query current layout
CURRENT_LAYOUT=$(aerospace --query layout)

# Toggle layout
if [ "$CURRENT_LAYOUT" = "floating" ]; then
    aerospace --set layout tiling
else
    aerospace --set layout floating
fi
