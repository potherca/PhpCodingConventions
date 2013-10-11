#!/usr/bin/env bash

sWarning="/*\\n\\t!!! DO NOT EDIT THIS FILE !!!\\n\\n\\tThis file has be generated and your edits will be overwritten\\n*/"
sFile="PHP-coding-standards.dot"

echo -e "${sWarning}" | cat - graph/* > "${sFile}"    \
    && dot -Tpng -O "${sFile}"  -Ln50 -v -x \
    && eom "${sFile}.png" --fullscreen


#EOF
