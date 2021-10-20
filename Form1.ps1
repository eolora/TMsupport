$button5_Click = {
	$test = test-netconnection SERVER -Port 8080 | Out-String
	$Form1.logpanel.AppendText("$test")
}

$button4_Click = {
	$test = (Get-ItemProperty "HKLM:\SOFTWARE\Microsoft\NET Framework Setup\NDP\v4\Full").version | Out-String
	$Form1.logpanel.AppendText("$test")
}

$button3_Click = {
	$Form1.logpanel.Clear()
}

$button2_Click = {
	$test = Get-WmiObject -Class Win32_Product | where vendor -eq 'TeamMate, a Wolters Kluwer company' | select Name, Version | Out-String
	$Form1.logpanel.AppendText("$test")

}

[void][System.Reflection.Assembly]::Load('System.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
[void][System.Reflection.Assembly]::Load('System.Windows.Forms, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
$Form1 = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.Button]$button2 = $null
[System.Windows.Forms.Button]$button3 = $null
[System.Windows.Forms.Button]$button4 = $null
[System.Windows.Forms.Button]$button5 = $null
[System.Windows.Forms.RichTextBox]$logpanel = $null
[System.Windows.Forms.Button]$button1 = $null
function InitializeComponent
{
$button2 = (New-Object -TypeName System.Windows.Forms.Button)
$button3 = (New-Object -TypeName System.Windows.Forms.Button)
$button4 = (New-Object -TypeName System.Windows.Forms.Button)
$button5 = (New-Object -TypeName System.Windows.Forms.Button)
$logpanel = (New-Object -TypeName System.Windows.Forms.RichTextBox)
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
#button4
#
$button4.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]75))
$button4.Name = [System.String]'button4'
$button4.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]132,[System.Int32]57))
$button4.TabIndex = [System.Int32]3
$button4.Text = [System.String]'.Net Framework'
$button4.UseVisualStyleBackColor = $true
$button4.add_Click($button4_Click)
#
#button5
#
$button5.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]260,[System.Int32]12))
$button5.Name = [System.String]'button5'
$button5.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]132,[System.Int32]57))
$button5.TabIndex = [System.Int32]4
$button5.Text = [System.String]'Por 8080 test'
$button5.UseVisualStyleBackColor = $true
$button5.add_Click($button5_Click)
#
#logpanel
#
$logpanel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]12,[System.Int32]290))
$logpanel.Name = [System.String]'logpanel'
$logpanel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]826,[System.Int32]210))
$logpanel.TabIndex = [System.Int32]5
$logpanel.Text = [System.String]''
#
#Form1
#
$Form1.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]850,[System.Int32]512))
$Form1.Controls.Add($logpanel)
$Form1.Controls.Add($button5)
$Form1.Controls.Add($button4)
$Form1.Controls.Add($button3)
$Form1.Controls.Add($button2)
$Form1.Name = [System.String]'Form1'
$Form1.ResumeLayout($false)
Add-Member -InputObject $Form1 -Name base -Value $base -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name button2 -Value $button2 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name button3 -Value $button3 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name button4 -Value $button4 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name button5 -Value $button5 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name logpanel -Value $logpanel -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name button1 -Value $button1 -MemberType NoteProperty
}
. InitializeComponent


$Form1.ShowDialog()