## Backup

Usage: `backup.sh`

* Should be executed in its own directory as it uses
  relative paths to files that it should backup.

* Should be executed with root privileges 
  as some of the files, such as ssh keys, require root  
  permissions to be read and archived.

## Restore

Usage: `restore.sh path/to/backup/file`

* Should be executed in its own directory as it uses
  relative paths to locations where it would restore data.


