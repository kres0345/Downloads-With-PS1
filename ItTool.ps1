Add-Type -AssemblyName System.Windows.Forms

$Form = New-Object system.Windows.Forms.Form
$Form.Text = "IT-tool"
$Form.TopMost = $true
$Form.Width = 400
$Form.Height = 400

$button2 = New-Object system.windows.Forms.Button
$button2.Text = "Printer installation"
$button2.Width = 90
$button2.Height = 40
$button2.Add_Click({
#add here code triggered by the event
#https://github.com/juskdtlm/juskdtlm.github.io/raw/master/Stuff/Printer.exe
new-item "c:\Users\$env:UserName\Desktop\Hedensted printer" -itemtype directory
$uri = "http://github.com/juskdtlm/juskdtlm.github.io/raw/master/Stuff/Printer.exe"
$out = "c:\Users\$env:UserName\Desktop\Hedensted printer\Printer.exe"
Invoke-WebRequest -Uri $uri -OutFile $out
& $out
})
$button2.location = new-object system.drawing.point(29,48)
$button2.Font = "Microsoft Sans Serif,10"
$Form.controls.Add($button2)

$button3 = New-Object system.windows.Forms.Button
$button3.Text = "Remove folder"
$button3.Width = 90
$button3.Height = 40
$button3.Add_Click({
Remove-Item "c:\Users\$env:UserName\Desktop\Hedensted printer\*"
})
$button3.location = new-object system.drawing.point(150,48)
$button3.Font = "Microsoft Sans Serif,10"
$Form.controls.Add($button3)

[void]$Form.ShowDialog()
$Form.Dispose()