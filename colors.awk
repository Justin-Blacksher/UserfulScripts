#!/usr/bin/awk



# Text colors
BEGIN {
        # This deals with text colors
        BLACK_TEXT="\033[30m"
        RED_TEXT="\033[31m"
        GREEN_TEXT="\033[32m"
        YELLOW_TEXT="\033[33m"
        BLUE_TEXT="\033[34m"
        MAGENTA_TEXT="\033[35m"
        CYAN_TEXT="\033[36m"
        WHITE_TEXT="\033[37m"

        # This deals with Background Colors
        BLACK_BG="\033[40m"
        RED_BG="\033[41m"
        GREEN_BG="\033[42m"
        YELLOW_BG="\033[43m"
        BLUE_BG="\033[44m"
        MAGENTA_BG="\033[45m"
        CYAN_BG="\033[46m"
        WHITE_BG="\033[47m"

        # This deals with Bright Colors
        BLACK_BT="\033[90m"
