#!/bin/bash
#Purpose: Here Document Example
#Version:1.0
#Modified Date:
#WebSite: http://steven.com.my
#Author: Steven
# START #
ftp -n <<- EOF 2> /dev/null
        open ftp.server.com
        user ftp ftp
        ascii
        cd uploadfolder
        mput file1 file1 file2
        bye
EOF

