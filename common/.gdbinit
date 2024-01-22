# for inkscape
set pagination off

define bpl
    info breakpoints
end

define st
    start
end

source /usr/share/gdb-dashboard/.gdbinit

set follow-fork-mode parent
set debuginfod enabled on

# source ~/splitmind/gdbinit.py
source ~/repos/splitmind/gdbinit.py
