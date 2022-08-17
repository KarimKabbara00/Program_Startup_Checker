$Log_file = "C:\Users\IEUser\Desktop\Log File.txt" # Log File Path
$Startup_path = "C:\Users\IEUser\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup" # Programs added to starup are added here

[string]$new_write_time = (gi $Startup_path).LastWriteTime # Gets the newest write time of start up folder
$old_write_time = Get-Content $Log_file -tail 1 # Gets the last stored write time

# Compare last write time to new write time
if ($new_write_time -ne $old_write_time){
    "" | Out-File -FilePath $Log_file -Append
    $new_write_time | Out-File -FilePath $Log_file -Append -NoNewline # Add Newest Write Time to Log
}
