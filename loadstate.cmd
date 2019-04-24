#Step 3: Install Windows 10 or Unpack New computer with OS already loaded 

loadstate \\server\migration\user1store /i:migapp.xml /i:miguser.xml /v:4 /decrypt /key:"vistamigratel"

#I will assume you know how to prepare a new machine with windows 10.In windows 10 by selecting Join AD on the first choice for setting up the user then on the next screen on the lower left there is a link to setup a Local account.

Step 4: Apply (Restore) data using the USMT LoadState tool

loadstate  /i:migapp.xml /i:miguser.xml d:USMTDataDanStolts /all /lac:ITProGuru2015 /lae /progress:progress.log /l:load.log

F:USMTx64 is the location on your destination computer where you have saved the USMT files and tools.
G:USMTDataDanStolts = G: is the big drive (network or USB) where I saved the users data.  In this case there should be a G:USMTDataDanStoltsUSMTUSMT.MIG file.  You will need to change your drive and path locations.

#< loadstate – This is the executable that will restore data from the migration store
/i:miguser.xml => Read in this user configuration file
/i:migdocs.xml => Read in this documents configuration file Default configuration files come with the USMT. 

USMTDataDanStolts is the full path to a folder on a network server (or USB drive) where you have the migration store data (USMTUSMT.MIG).
/all = Migrates all of the users on the computer.
/lac:ITProGuru2015 = (local account create)
Specifies that if a user account is a local (non-domain) account, and it does not exist on the destination computer, USMT will create the account on the destination computer but it will be disabled. To enable the account, you must also specify /lae.

If /lac is not specified, any local user accounts (that do not already exist on the destination computer) will not be migrated. ITProGuru2015 is the password for the new created account. An empty password is used by default.

[optional] /lae (local account enable)
Enables the account that was created with /lac. You must specify /lac with this option.

#>

OR 
loadstate  /i:migapp.xml /i:miguser.xml G:USMTDataDanStolts /all /lac:ITProGuru2015 /lae /progress:progress.log /l:load.log

OR 
loadstate d:\Migstore /i:migapp.xml /i:miguser.xml /v:4 /decrypt /key:"vistamigratel" /progress:"D:\Temp\USMTprog.log"

OR 
loadstate \\server\migration\user1store /i:migapp.xml /i:miguser.xml /v:4 /decrypt /key:"vistamigratel"
