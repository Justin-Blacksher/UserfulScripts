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
        RED_BT="\033[91m"
        GREEN_BT="\033[92m"
        YELLOW_BT="\033[92m"
        BLUE_BT="\033[93m"
        MAGENTA_BT="\033[95m"
        CYAN_BT="\033[96m"
        WHITE_BT="\033[97m"

        # This deals with Bright Background Colors
        BLACK_BB="\033[100m"
        RED_BB="\033[101m"
        GREEN_BB="\033[102m"
        YELLOW_BB="\033[103m"
        BLUE_BB="\033[104m"
        MAGENTA_BB="\033[105m"
        CYAN_BB="\033[106m"
        WHITE_BB="\033[107m"

        # This deals with Text Formatting
        RESET="\033[0m"
        BOLD="\033[1m"
        FAINT="\033[2m"
        ITALIC="\033[3m"
        UNDERLINE="\033[4m"
        BLINKING="\033[5m"
        RAPIDBLINK="\033[6m"
        INVERSE="\033[7m"
        CONCEAL="\033[8m"
        CROSSEDOUT="\033[9m"

        # Text Reset Codes
        BOLDRESET="\033[21m"
        COLORRESET="\033[22m"
        UNDERLINERESET="\033[23m"
        BLINKRESET="\033[24m"
        INVERSERESET="\033[25m"
        CONCEALRESET="\033[26m"
        CROSSOUTRESET="\033[27m"
}
