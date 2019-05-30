# Welcome!

This is an SSH-Backup script. 
You can create a backup for your system to another machine if the two machine is connected to each other via SSH.


# Usage:

The "A" machine is your system to archive.
The "B" machine is your system to restore the archived machine.

1) Establish a SSH connection between two (Virtual?) Machines (between A and B).

2) Setup variables in the backup.sh file, which is on "A" machine (with your SSH settings). Open up terminal, and run "sudo chmod +x backup.sh" command

3) Create a "backup" folder to /home/username/ destination in "B" machine 

4) Copy/Save the restore.sh file to your "B" machine's /home/username/backup folder. Open up terminal, and run "sudo chmod +x restore.sh" command

5) Change back to your "A" machine, and run "sudo ./backup.sh". Wait until it's done

6) Change back to your "B" machine, and run "sudo ./restore.sh". Wait until it's done

7) Reboot and done! ;-) 

TEAM BACKUP
