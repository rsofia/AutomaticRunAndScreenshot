param (
$Path = $(throw "The path, for the exe and screenshot."),
$Num = $(throw "Number of iterations"),
$ExeName = $(throw "We meed the name of the .exe file!")
)



$myexepath = "$Path\Build\$ExeName"


function ExecuteExe
{
	
	Start-Process -FilePath $myexepath

}

function TakeScreenshot
{
	
	Add-Type -AssemblyName System.Windows.Forms
	Add-Type -AssemblyName System.Drawing

	$Screen = [System.Windows.Forms.SystemInformation]::VirtualScreen
	$Width  = $Screen.Width
	$Height = $Screen.Height
	$Left   = $Screen.Left
	$Top    = $Screen.Top

	$bitmap  = New-Object System.Drawing.Bitmap $Width, $Height
	$graphic = [System.Drawing.Graphics]::FromImage($bitmap)
	$graphic.CopyFromScreen($Left, $Top, 0, 0, $bitmap.Size)

	$myscreenshotpath = "$Path\Screenshots\MyScreenshot$i.bmp"

	$bitmap.Save($myscreenshotpath)
	Write-Output "Screenshot saved to:"
	Write-Output $myscreenshotpath
}

for($i = 0; $i -lt $Num; $i++)
{
	Write-Output "Iteration $i"
	ExecuteExe $myexepath 
	Start-Sleep -s 3
	TakeScreenshot $myscreenshotpath $i
	Start-Sleep -s 1
}


