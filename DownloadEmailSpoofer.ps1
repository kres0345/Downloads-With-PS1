#The Download Script
new-item "c:\Users\$env:UserName\Desktop\Email Spoofer by Kresten" -itemtype directory
$uri = "http://rawgit.com/kres0345/EmailSpoofer/master/Email%20spoofer.py"
$uri2 = "http://rawgit.com/kres0345/EmailSpoofer/master/EmailSpammerNoGui.py"
$out = "c:\Users\$env:UserName\Desktop\Email Spoofer by Kresten\Email spoofer.py"
$out2 = "c:\Users\$env:UserName\Desktop\Email Spoofer by Kresten\EmailSpammerNoGui.py"
Invoke-WebRequest -Uri $uri -OutFile $out
Invoke-WebRequest -Uri $uri2 -OutFile $out2
#& $out