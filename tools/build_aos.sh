#!/bin/bash
# Specify colors utilized in the terminal
    red=$(tput setaf 1)             #  red
    txtrst=$(tput sgr0)             # reset
    normal='tput sgr0'
echo -e "";
echo -e ${red}" Building SUPPORTED variant "${txtrst}
export AOS_BUILD_TYPE=SUPPORTED
echo -e "";
echo -e "";
$normal
