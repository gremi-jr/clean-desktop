#File extensions
$extension_paths = @{
    # No name
    'noname'=  'other/uncategorized';
    # audio
    '.aif'=    'media/audio';
    '.cda'=    'media/audio';
    '.mid'=    'media/audio';
    '.midi'=   'media/audio';
    '.mp3'=    'media/audio';
    '.mpa'=    'media/audio';
    '.ogg'=    'media/audio';
    '.wav'=    'media/audio';
    '.wma'=    'media/audio';
    '.wpl'=    'media/audio';
    '.m3u'=    'media/audio';
    # text
    '.txt'=    'text/text_files';
    '.doc'=    'text/microsoft/word';
    '.docx'=   'text/microsoft/word';
    '.odt '=   'text/text_files';
    '.pdf'=    'text/pdf';
    '.rtf'=    'text/text_files';
    '.tex'=    'text/text_files';
    '.wks '=   'text/text_files';
    '.wps'=    'text/text_files';
    '.wpd'=    'text/text_files';
    # video
    '.3g2'=    'media/video';
    '.3gp'=    'media/video';
    '.avi'=    'media/video';
    '.flv'=    'media/video';
    '.h264'=   'media/video';
    '.m4v'=    'media/video';
    '.mkv'=    'media/video';
    '.mov'=    'media/video';
    '.mp4'=    'media/video';
    '.mpg'=    'media/video';
    '.mpeg'=   'media/video';
    '.rm'=     'media/video';
    '.swf'=    'media/video';
    '.vob'=    'media/video';
    '.wmv'=    'media/video';
    # images
    '.ai'=     'media/images';
    '.bmp'=    'media/images';
    '.gif'=    'media/images';
    '.jpg'=    'media/images';
    '.jpeg'=   'media/images';
    '.png'=    'media/images';
    '.ps'=     'media/images';
    '.psd'=    'media/images';
    '.svg'=    'media/images';
    '.tif'=    'media/images';
    '.tiff'=   'media/images';
    '.cr2'=    'media/images';
    # internet
    '.asp'=    'other/internet';
    '.aspx'=   'other/internet';
    '.cer'=    'other/internet';
    '.cfm'=    'other/internet';
    '.cgi'=    'other/internet';
    '.pl'=     'other/internet';
    '.css'=    'other/internet';
    '.htm'=    'other/internet';
    '.js'=     'other/internet';
    '.jsp'=    'other/internet';
    '.part'=   'other/internet';
    '.php'=    'other/internet';
    '.rss'=    'other/internet';
    '.xhtml'=  'other/internet';
    '.html'=   'other/internet';
    # compressed
    '.7z'=     'other/compressed';
    '.arj'=    'other/compressed';
    '.deb'=    'other/compressed';
    '.pkg'=    'other/compressed';
    '.rar'=    'other/compressed';
    '.rpm'=    'other/compressed';
    '.tar.gz'= 'other/compressed';
    '.z'=      'other/compressed';
    '.zip'=    'other/compressed';
    # disc
    '.bin'=    'other/disc';
    '.dmg'=    'other/disc';
    '.iso'=    'other/disc';
    '.toast'=  'other/disc';
    '.vcd'=    'other/disc';
    # data
    '.csv'=    'programming/database';
    '.dat'=    'programming/database';
    '.db'=     'programming/database';
    '.dbf'=    'programming/database';
    '.log'=    'programming/database';
    '.mdb'=    'programming/database';
    '.sav'=    'programming/database';
    '.sql'=    'programming/database';
    '.tar'=    'programming/database';
    '.xml'=    'programming/database';
    '.json'=   'programming/database';
    # executables
    '.apk'=    'other/executables';
    '.bat'=    'other/executables';
    '.com'=    'other/executables';
    '.exe'=    'other/executables';
    '.gadget'= 'other/executables';
    '.jar'=    'other/executables';
    '.wsf'=    'other/executables';
    # fonts
    '.fnt'=    'other/fonts';
    '.fon'=    'other/fonts';
    '.otf'=    'other/fonts';
    '.ttf'=    'other/fonts';
    # presentations
    '.key'=    'text/presentations';
    '.odp'=    'text/presentations';
    '.pps'=    'text/presentations';
    '.ppt'=    'text/presentations';
    '.pptx'=   'text/presentations';
    # programming
    '.c'=      'programming/c&c++';
    '.class'=  'programming/java';
    '.java'=   'programming/java';
    '.py'=     'programming/python';
    '.sh'=     'programming/shell';
    '.h'=      'programming/c&c++';
    # spreadsheets
    '.ods'=    'text/microsoft/excel';
    '.xlr'=    'text/microsoft/excel';
    '.xls'=    'text/microsoft/excel';
    '.xlsx'=   'text/microsoft/excel';
    # system
    '.bak'=    'text/other/system';
    '.cab'=    'text/other/system';
    '.cfg'=    'text/other/system';
    '.cpl'=    'text/other/system';
    '.cur'=    'text/other/system';
    '.dll'=    'text/other/system';
    '.dmp'=    'text/other/system';
    '.drv'=    'text/other/system';
    '.icns'=   'text/other/system';
    '.ico'=    'text/other/system';
    '.ini'=    'text/other/system';
    '.lnk'=    'text/other/system';
    '.msi'=    'text/other/system';
    '.sys'=    'text/other/system';
    '.tmp'=    'text/other/system';
    'directory' = 'folders'
}
#Variables
$DesktopPath = [System.Environment]::GetFolderPath("Desktop")
$font = "Arial"
$IconPath = ".\pictures\broom.ico"
$Version = "1.0.1"
$LastUpdate = "2020-04-17"

#Import Windows Forms Assembly
Add-Type -assembly System.Windows.Forms

#Create a Form + Design
$main_form = New-Object System.Windows.Forms.Form
$main_form.Text = 'Clean-Desktop'
$main_form.Size = New-Object System.Drawing.Size(400, 140)
$main_form.StartPosition = "CenterScreen"
$main_form.MaximizeBox = $false
$main_form.FormBorderStyle = "FixedDialog"
$main_form.AutoSize = $true
$main_form.Icon = New-Object System.Drawing.Icon($IconPath)

$help_form = New-Object System.Windows.Forms.Form
$help_form.Text = 'Help'
$help_form.Size = New-Object System.Drawing.Size(50, 90)
$help_form.FormBorderStyle = "FixedDialog"
$help_form.AutoSize = $true
$help_form.Icon = New-Object System.Drawing.Icon($IconPath)
$help_form.StartPosition = "CenterScreen"
$help_form.FormBorderStyle = "FixedDialog"
$help_form.MaximizeBox = $false

$labelHelp = New-Object System.Windows.Forms.Label
$labelHelp.AutoSize =$true
$labelHelp.Text = "Documentation can you find here: "
$labelHelp.Left = 10
$labelHelp.Top = 20;
$help_form.Controls.Add($labelHelp)

$linkLabelGitHub2 = New-Object System.Windows.Forms.LinkLabel 
$linkLabelGitHub2.LinkColor = "BLUE" 
$linkLabelGitHub2.ActiveLinkColor = "RED" 
$linkLabelGitHub2.Text = "GitHub" 
$linkLabelGitHub2.Top = 20
$linkLabelGitHub2.Left = 200
$linkLabelGitHub2.add_Click({[system.Diagnostics.Process]::start("https://github.com/gremi-jr/clean-desktop")}) 
$help_form.Controls.Add($linkLabelGitHub2)

$linkLabelGitHub = New-Object System.Windows.Forms.LinkLabel 
$linkLabelGitHub.LinkColor = "BLUE" 
$linkLabelGitHub.ActiveLinkColor = "RED" 
$linkLabelGitHub.Text = "GitHub" 
$linkLabelGitHub.Top = 20
$linkLabelGitHub.Left = 200
$linkLabelGitHub.add_Click({[system.Diagnostics.Process]::start("https://github.com/gremi-jr/clean-desktop")}) 


$about_form = New-Object System.Windows.Forms.Form
$about_form.Text = 'About'
$about_form.Size = New-Object System.Drawing.Size(50, 120)
$about_form.FormBorderStyle = "FixedDialog"
$about_form.AutoSize = $true
$about_form.Icon = New-Object System.Drawing.Icon($IconPath)
$about_form.Controls.Add($linkLabelGitHub)
$about_form.StartPosition = "CenterScreen"
$about_form.MaximizeBox = $false
$about_form.FormBorderStyle = "FixedDialog"

$linkLabelMail = New-Object System.Windows.Forms.LinkLabel 
$linkLabelMail.LinkColor = "BLUE" 
$linkLabelMail.ActiveLinkColor = "RED" 
$linkLabelMail.Text = "Mail" 
$linkLabelMail.Top = 42
$linkLabelMail.Left = 200
$linkLabelMail.add_Click({[system.Diagnostics.Process]::start("mailto:info@timogremler.de")}) 
$about_form.Controls.Add($linkLabelMail) 

$labelAbout = New-Object System.Windows.Forms.Label
$labelAbout.AutoSize =$true
$labelAbout.Text = "Developer: Timo Gremler`nVersion: $($Version)`nLast Update: $($LastUpdate)"
$labelAbout.Left = 10
$labelAbout.Top = 20;
$about_form.Controls.Add($labelAbout)

#Create Button for start cleaning
$cleaningButton = New-Object System.Windows.Forms.Button
$cleaningButton.Left = 10;
$cleaningButton.Text = "Start cleaning"
$cleaningButton.Top = 70;
$cleaningButton.Width = 100;
$cleaningButton.Font = New-Object System.Drawing.Font($font, 10, [System.Drawing.FontStyle]::Regular)

#Menubar 
$mainMenu = New-Object System.Windows.Forms.MenuStrip
$mainMenu.Font = New-Object System.Drawing.Font($font, 9, [System.Drawing.FontStyle]::Regular)
#Menue
$menuMenue = New-Object System.Windows.Forms.ToolStripMenuItem
$mainMenu.Items.Add($menuMenue)
$menuMenue.Text = "Menu"
#Menue_Beenden
$menuMenueBeenden = New-Object System.Windows.Forms.ToolStripMenuItem
$menuMenue.DropDownItems.Add($menuMenueBeenden)
$menuMenueBeenden.Text = "Exit"
$menuMenueBeenden.Add_Click( { $main_form.Close() })

#Help
$menuHelp = New-Object System.Windows.Forms.ToolStripMenuItem
$mainMenu.Items.Add($menuHelp)
$menuHelp.Text = "Help"
$menuHelp.Add_Click( { $help_form.ShowDialog() })
#About
$menuAbout = New-Object System.Windows.Forms.ToolStripMenuItem
$mainMenu.Items.Add($menuAbout)
$menuAbout.Text = "About"
$menuAbout.Add_Click( { $about_form.ShowDialog() })

#Path
$pathbox = New-Object System.Windows.Forms.TextBox
$pathbox.Width = 350;
$pathbox.Left = 10;
$pathbox.Top = 40;
$pathbox.Text = "$DesktopPath\clean-desktop"
$pathbox.ForeColor = 'Black'

$checkBoxFolder = New-Object System.Windows.Forms.CheckBox
$checkBoxFolder.Text = "Move Folder"
$checkBoxFolder.Top = 70
$checkBoxFolder.Left = 250
$checkBoxFolder.Font =  [System.Drawing.Font]::new($font, 10, [System.Drawing.FontStyle]::Regular)
$main_form.Controls.Add($checkBoxFolder)

function cleanDesktop($path){
    $desktopFiles = Get-ChildItem $env:USERPROFILE\Desktop\ 
    foreach ($item in $desktopFiles){
        foreach($key in $extension_paths.Keys){
            if($item.Extension -eq $key){
                $Filedirectory = $extension_paths[$key]
                createSubDirectory("$path\$Filedirectory")
                Move-Item -Path "$DesktopPath\$item" -Destination "$path\$Filedirectory"
            }
        }
        if ($checkBoxFolder.Checked -eq $true) {
            if ($item.Attributes -match "Directory"-and $item.Name -ne "clean-desktop") {
                $Filedirectory = $extension_paths["Directory"]
                Move-Item -Path "$DesktopPath\$item" -Destination "$path\$Filedirectory"
            }
        }
    }

    [System.Windows.Forms.MessageBox]::Show("Cleaning done!", "Info", 0, [System.Windows.Forms.MessageBoxIcon]::Asterisk)

}


#Function checks if the directory exists, if not it will create one
function createSubDirectory($path) {

    if ((Test-Path -Path $path )-eq $false) {
        New-Item -ItemType Directory -Path $path
    }
}

#Checks the path if it conatins the directory and add it with a backslash if missing
function createDirectory($path){

    if(($path -like "*\clean-desktop") -eq $false){
        
        if($path -notmatch '\\$'){
            $path +='\'
        }
        $pathbox.Text = $path+"clean-desktop"

        if ((Test-Path -Path $pathbox.Text )-eq $false) {
            New-Item -ItemType Directory -Path $pathbox.Text
        }
    } else {
        if ((Test-Path -Path $path )-eq $false) {
            New-Item -ItemType Directory -Path $path
        }
    }
}


$cleaningButton.Add_Click({
    
    createDirectory($pathbox.Text)
    cleanDesktop($pathbox.Text)

})

$main_form.Controls.Add($pathbox)
$main_form.Controls.Add($cleaningButton)
$main_form.Controls.Add($mainMenu)
#Shows the Window
$main_form.ShowDialog()