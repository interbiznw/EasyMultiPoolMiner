setx GPU_FORCE_64BIT_PTR 1
setx GPU_MAX_HEAP_SIZE 100
setx GPU_USE_SYNC_OBJECTS 1
setx GPU_MAX_ALLOC_PERCENT 100
setx GPU_SINGLE_ALLOC_PERCENT 100

set "command=& .\multipoolminer.ps1 -wallet 3JfLcg4gKQApNPH3i8uJZ6KyqrFdQrUMig -username interbiznw -workername multipoolminer -region europe -currency btc,usd,eur -type amd,nvidia,cpu -poolname miningpoolhub,miningpoolhubcoins,zpool,nicehash -algorithm cryptonight,decred,decrednicehash,ethash,ethash2gb,equihash,groestl,lbry,lyra2z,neoscrypt,pascal,sia,siaclaymore,sianicehash,sib -donate 24 -watchdog"

pwsh -noexit -executionpolicy bypass -windowstyle maximized -command "%command%"
powershell -version 5.0 -noexit -executionpolicy bypass -windowstyle maximized -command "msiexec -i https://github.com/PowerShell/PowerShell/releases/download/v6.0.0-rc/PowerShell-6.0.0-rc-win-x64.msi -qn; %command%"
msiexec -i https://github.com/PowerShell/PowerShell/releases/download/v6.0.0-rc/PowerShell-6.0.0-rc-win-x64.msi -qb!
pwsh -noexit -executionpolicy bypass -windowstyle maximized -command "%command%"

pause
