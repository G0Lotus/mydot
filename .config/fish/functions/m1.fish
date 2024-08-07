#!/usr/bin/env fish

function m1
    # regex current path to strip the path until xxx.git
    set extracted (echo $PWD | sed -n 's/\(.*\.git\).*/\1/p')
    if [ -n "$extracted" ]
        cd "$extracted"
    end
end
