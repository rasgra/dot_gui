handle SIGUSR1 SIGUSR2 nostop noprint pass
handle SIG32 nostop noprint pass

def odo
	source /vobs/odo/ssd/debugger/sfk-gcc/ssd 
end
set print thread-events off
set environment GDB_AUTO_BREAK YES
