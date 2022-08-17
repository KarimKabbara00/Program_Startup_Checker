# Program_Startup_Checker
Checks if new programs were added to startup.

Detects any changes in the startup folder. Results are outputted to a logfile. \
Note: The first line in the logfile does not indicate a change in that folder. It is used as a timestamp to start the comparisons. Therefore, the script must be executed once before it can be used as a checker.

Startup path: "C:\Users\USERNAME\AppData\Roaming\Microsoft\Windows\StartMenu\Programs\Startup" \
Logfile path: "C:\Users\USERNAME\Desktop\Log file.txt" \
Username must be changed to match your username.

This script can be paired with Task Scheduler for automation. 
