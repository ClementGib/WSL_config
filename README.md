### INSTALL WSL

## Graphic install :

EN: Control Panel -> programs-features -> turn on/off Windows features -> Windows Subsystem for Linux 

FR:Panneau de configuration -> Programmes et fonctionnalités-> Activer ou désactiver des fonctionnalités -> Sous-système Windows pour Linux

Reboot your computer.

Install distribution in Microsoft Store like Debian or Ubuntu


## Commands install : 

Run Admin PowerShell and type this command -> 

```console 
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux
```

Reboot your computer.

Download Distribution of Linux (Use Google or Store) -> 

```console
https://aka.ms › Distrib-name Exemple : https://aka.ms › wsl-debian-gnulinux
```

Install distribution with Admin PowerShell -> Add-AppxPackage .\Name_Distribution Exemple : Add-AppxPackage .\DebianGNULinux_1-1-3-0_x64__76v4gfsz19hv4.Appx




