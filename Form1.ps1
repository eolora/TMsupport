$button3_Click = {
	$Form1.test1result.Clear()
}

$button2_Click = {
$Installed = Get-WmiObject -Class Win32_Product | where vendor -eq 'TeamMate, a Wolters Kluwer company' | select Name, Version | Out-String
	$Form1.test1result.text = $Installed

}

[void][System.Reflection.Assembly]::Load('System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
[void][System.Reflection.Assembly]::Load('System.Windows.Forms, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
$Form1 = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.Button]$button2 = $null
[System.Windows.Forms.TextBox]$test1result = $null
[System.Windows.Forms.Button]$button3 = $null
[System.Windows.Forms.Button]$button1 = $null
function InitializeComponent
{
$button2 = (New-Object -TypeName System.Windows.Forms.Button)
$test1result = (New-Object -TypeName System.Windows.Forms.TextBox)
$button3 = (New-Object -TypeName System.Windows.Forms.Button)
$Form1.SuspendLayout()
#
#button2
#
$button2.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]12))
$button2.Name = [System.String]'button2'
$button2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]132,[System.Int32]57))
$button2.TabIndex = [System.Int32]0
$button2.Text = [System.String]'Complementos?'
$button2.UseVisualStyleBackColor = $true
$button2.add_Click($button2_Click)
#
#test1result
#
$test1result.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]290))
$test1result.Multiline = $true
$test1result.Name = [System.String]'test1result'
$test1result.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]826,[System.Int32]210))
$test1result.TabIndex = [System.Int32]1
#
#button3
#
$button3.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]261))
$button3.Name = [System.String]'button3'
$button3.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]75,[System.Int32]23))
$button3.TabIndex = [System.Int32]2
$button3.Text = [System.String]'Limpiar'
$button3.UseVisualStyleBackColor = $true
$button3.add_Click($button3_Click)
#
#Form1
#
$Form1.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]850,[System.Int32]512))
$Form1.Controls.Add($button3)
$Form1.Controls.Add($test1result)
$Form1.Controls.Add($button2)
$Form1.Name = [System.String]'Form1'
$Form1.ResumeLayout($false)
$Form1.PerformLayout()
Add-Member -InputObject $Form1 -Name base -Value $base -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name button2 -Value $button2 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name test1result -Value $test1result -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name button3 -Value $button3 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name button1 -Value $button1 -MemberType NoteProperty
}
. InitializeComponent


$Form1.ShowDialog()