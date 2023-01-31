# Linux administration with bash -- homework tasks
## Task 1
This script checks its parameters for correctness and contains dedicated functions for two modes. It will actually scan networks, after Sergiy tells me HOW the script should detect the "current subnet". As for now, it gets anything looking like a subnet from route table, the first match; dirty, but may work.
Also, I need approval for nmap, our lecturer said using NMAP is not allowed in EPAM!

## Task 2
This was the easiest task, using cut, wc, grep (with Perl regexp expression matching). The only issue is that in subtask 6 I suspect that bots can be identified by 2 different fields in the log. I'll research Apache documentation and then adapt the script appropriately.

Also, if I'd output all the data that matches, it would overflow the screens, so I've implemented MAX_LIMIT variables in the script, limiting hosts, IPs etc to e.g 5 or 10 max.


## Task 3
Right now we are only checking syntax and if the parameters passed are actually directories, but now I'm working on enumerating all files in the source directory.I think I'll sort the file list in source and target dirs, and then will 'diff' them, probably by join. I'll find out to get a list that will be clearly different when a file is present in both dirs or is not.
As an alternative, I can just run "for" loop for this list and check if each of files is present in target dir, e.g. using 'ls $TARGETDIR | grep $SOURCE_FILE_NAME | wc -l", but it's such a waste! I'd be running ls and grep for EACH of the source files, every time! 
