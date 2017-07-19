#!/bin/bash
# Specify colors utilized in the terminal
    red=$(tput setaf 1)             #  red
    txtrst=$(tput sgr0)             # reset
    normal='tput sgr0'
echo -e "";
echo -e "";
echo -e "";
echo -e 1- atomicity
echo -e "";
echo -e 2- weekly
echo -e "";
echo -e "";
$normal
read askvariant
if [ "$askvariant" == "1" ]
then echo -e "";
echo -e ▪Building atomicity
export AOS_BUILD_TYPE=atomicity
echo -e "";
echo -e "";
fi
if [ "$askvariant" == "2" ]
then
echo -e "";
$normal
echo -e ▪ Building weekly
export AOS_BUILD_TYPE=weekly
echo -e "";
fi
