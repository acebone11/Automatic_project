Add-Type -AssemblyName System.Windows.Forms
$window_form = New-Object System.Windows.Forms.Form
$window_form.Text ='GUI'
$window_form.Width =500
$window_form.Height = 300
$window_form.AutoSize = $true
$list = Get-ChildItem -Path C:\Users\a.chemaev\Desktop
$button = New-Object Windows.Forms.Button
$button.Text = 'start'
$button.Location = New-Object System.Drawing.Point (20,85)
$textBox = New-Object System.Windows.Forms.TextBox
$textBox.Location = New-Object System.Drawing.Point(50,250)

#labels
$label1 = New-Object System.Windows.Forms.Label
$label1.Width = 100
$label1.Height = 150
$label1.Location = New-Object System.Drawing.Point(100,150)
$label1.Text = 'bla'
$label1.AutoSize =$true
$label2 = New-Object System.Windows.Forms.Label
$label2.Width = 100
$label2.Height = 150
$label2.Location = New-Object System.Drawing.Point(200,150)
$label2.Text = 'bla'
$label2.AutoSize =$true
# выпадающий список
$listBox = New-Object System.Windows.Forms.ComboBox
$listBox.Location = New-Object System.Drawing.Point(100,100)
$listBox.Size = New-Object System.Drawing.Size(260,20)
$listBox.Height = 70
$listBox.DataSource = @($list)
$listBox.AutoSize = $true



# обработка кнопки
$button.Add_Click({$button.Text='oops';
$vdisk = $listBox.SelectedItem.ToString();
$space = $textBox.Text.ToString();
$label2.Text = $space
$label1.Text=$vdisk
# diskpart
# SELECT VDISK file =$vdisk
#expand vdisk maximum = $space
#extend
#Wait-Event expand 
})

#
$window_form.Controls.Add($label2)
$window_form.Controls.Add($label1)
$window_form.Controls.Add($button)
$window_form.Controls.Add($textBox)
$window_form.Controls.Add($listBox)


$window_form.ShowDialog()
