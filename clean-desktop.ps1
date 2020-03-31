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
    '.tmp'=    'text/other/system'
}
#Variables
$DesktopPath = [System.Environment]::GetFolderPath("Desktop")
$cleandesktopFolderPath = "$DesktopPath\clean-desktop"
$font = "Arial"





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
$msgHilfe = "If you have any issues, contact me over github or write an email (timo@timogremler.de)."
$menuHelp.Add_Click( { [System.Windows.Forms.MessageBox]::Show($msgHilfe, "Hilfe", 0) })
#About
$menuAbout = New-Object System.Windows.Forms.ToolStripMenuItem
$mainMenu.Items.Add($menuAbout)
$menuAbout.Text = "About"
$msgAbout = "Developer: Timo Gremler`nVersion: $($Version)`nLast Update: $($LastUpdate)"
$menuAbout.Add_Click( { [System.Windows.Forms.MessageBox]::Show($msgAbout, "About", 0) })

#Path
$pathbox = New-Object System.Windows.Forms.TextBox
$pathbox.Width = 350;
$pathbox.Left = 10;
$pathbox.Top = 40;
$pathbox.Text = "$DesktopPath\clean-desktop"
$pathbox.ForeColor = 'Black'


function cleanDesktop($path){
    $desktopFiles = Get-ChildItem $env:USERPROFILE\Desktop\ | Where-Object {$_.Name -match "\.[a-zA-Z0-9]+"}
    foreach ($item in $desktopFiles){
        foreach($key in $extension_paths.Keys){
            if($item.Extension -eq $key){
                $Filedirectory = $extension_paths[$key]
                createSubDirectory("$path\$Filedirectory")
                Move-Item -Path "$DesktopPath\$item" -Destination "$path\$Filedirectory"
            }
        }
    }
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

$cleaningButton.Add_Click({createDirectory($pathbox.Text)})
$cleaningButton.Add_Click({cleanDesktop($pathbox.Text)})

$main_form.Controls.Add($pathbox)
$main_form.Controls.Add($cleaningButton)
$main_form.Controls.Add($mainMenu)
#Shows the Window
$main_form.ShowDialog()