--- 
layout: post 
title: Windows Credential Manager 
date: '2023-05-23 13:22:56.27 -0400' 
--- 
I found something really weird today. An on-prem user changed their Windows AD password a couple of weeks ago, 
and since then every day when they log in and open Outlook their account locks. I unlock, then they can get into 
Outlook and work for the rest of the day with no problems. I tried resetting thei Outlook profile and almost was 
going to reset their Windows profile (which would have fixed it apparently), but I googled and found that there 
is something called the "Windows Credential Manager" in the control panel. Sure enough this had an old password 
stored in it, so I just cleared taht out and Outlook was happy again. Weird. 
