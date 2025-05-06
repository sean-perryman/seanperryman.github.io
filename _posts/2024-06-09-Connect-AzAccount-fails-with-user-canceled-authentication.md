--- 
layout: post 
title: Connect-AzAccount fails with user canceled authentication 
date: '2024-06-09  7:02:24.12 -0400' 
--- 
I ran into an issue that really kicked my ass. Leaving everything else out, I was trying to join an Azure 
storage account to an active directory domain. I've done this before, it has always worked. This time, when you 
run the Connect-AzAccount command, it looks like it is working but as soon as the authentication window pops up 
the terminal says "user authentication cancelled" and you cannot proceed. 

I tried the other stuff like -DeviceCode and specifying the tenantID and all that, but nothing worked, so I let 
it mellow. Yesterday morning I found a GitHub post that looked like the issue I was having, and just left it up 
on my screen. Turns out it is the exact issue I am having, and is a problem with the new version of the 
Azure powershell scripts. 

A user, msqishengc, noted that this command fixed the issue for him

Update-AzConfig -EnableLoginByWam $false

And it fixed it for me too, so there you go! 
