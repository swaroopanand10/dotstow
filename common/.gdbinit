# for inkscape
set pagination off

define bpl
    info breakpoints
end

define st
    start
end
# source /home/swaroop/.gdbdashboard
# source /usr/share/gdb-dashboard/.gdbinit
source ~/repos/pwndbg/gdbinit.py
# source /usr/share/pwndbg/gdbinit.py

set context-clear-screen on
set follow-fork-mode parent
set debuginfod enabled on

# source ~/splitmind/gdbinit.py
source ~/repos/splitmind/gdbinit.py

python
import splitmind
(splitmind.Mind()
  .tell_splitter(show_titles=True)
  .tell_splitter(set_title="Main")
  .right(of="main", display="disasm", size="40%", banner="top")
  .show("code", on="disasm", banner="none")
  .above(of="main",display="legend", size="50%")
  .above(of="main",display="backtrace", size="11%")
  .right(cmd='tty; tail -f /dev/null', size="50%", clearing=False)
  .tell_splitter(set_title='Input / Output')
  .above(of="disasm",display="stack", size="35%")
  .show("regs", on="legend")
  # .below(of="backtrace", cmd="ipython", size="30%")
).build(nobanner=True)
end

set context-code-lines 13
set context-source-code-lines -1
set context-sections  "regs args code disasm stack backtrace"
