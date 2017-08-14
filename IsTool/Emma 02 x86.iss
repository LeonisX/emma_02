; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

[Setup]
AppName=Emma 02
AppVerName=Emma 02 - V1.24.39
AppVersion=1.24
AppPublisher=Marcel van Tongeren
DefaultDirName={pf}\Emma 02
DefaultGroupName=Emma 02
OutputDir=x86
OutputBaseFilename=Emma_02_x86_setup_v1.24.39
Compression=lzma
SolidCompression=true
SetupIconFile=..\images\app.ico
UninstallDisplayIcon={app}\images\app.ico
DisableDirPage=false
FlatComponentsList=false
InfoBeforeFile=..\copyright.rtf
WizardImageBackColor=clWhite
WizardImageStretch=true
WizardImageFile=emma 02 large.bmp
WizardSmallImageFile=emma 02.bmp
ShowLanguageDialog=no
AppPublisherURL=http://www.emma02.hobby-site.com/
AppSupportURL=http://www.comxclub.hobby-site.com/forum/forumdisplay.php?fid=4
AppUpdatesURL=http://www.emma02.hobby-site.com/index_change_log.html

[Languages]
Name: english; MessagesFile: compiler:Default.isl

[Tasks]
Name: desktopicon; Description: {cm:CreateDesktopIcon}; GroupDescription: {cm:AdditionalIcons}; Flags: unchecked

[Files]
Source: vcredist_x86.exe; DestDir: {tmp}; Flags: deleteafterinstall; Components: MAIN
Source: ..\Win32\Release\Emma 02.exe; DestDir: {app}; Components: MAIN; Tasks: ; Languages: 
Source: ..\emma_02.htb; DestDir: {app}; Components: MAIN
Source: ..\about.xrc; DestDir: {app}; Components: MAIN
Source: ..\cassette.xrc; DestDir: {app}; Components: MAIN
Source: ..\colour.xrc; DestDir: {app}; Components: MAIN
Source: ..\configuration.xrc; DestDir: {app}; Components: MAIN
Source: ..\datadir.xrc; DestDir: {app}; Components: MAIN
Source: ..\diag.xrc; DestDir: {app}; Components: MAIN
Source: ..\eprom.xrc; DestDir: {app}; Components: MAIN
Source: ..\functionkey.xrc; DestDir: {app}; Components: MAIN
Source: ..\keymap.xrc; DestDir: {app}; Components: MAIN
Source: ..\keymap_tmc.xrc; DestDir: {app}; Components: MAIN
Source: ..\main.xrc; DestDir: {app}; Components: MAIN
Source: ..\menu_Cas_Mem.xrc; DestDir: {app}; Components: MAIN
Source: ..\menuComx.xrc; DestDir: {app}; Components: MAIN
Source: ..\menuCosmicos.xrc; DestDir: {app}; Components: MAIN
Source: ..\menuElf.xrc; DestDir: {app}; Components: MAIN
Source: ..\menuElf2K.xrc; DestDir: {app}; Components: MAIN
Source: ..\menuMembership.xrc; DestDir: {app}; Components: MAIN
Source: ..\menuMS2000.xrc; DestDir: {app}; Components: MAIN
Source: ..\menuPecom.xrc; DestDir: {app}; Components: MAIN
Source: ..\menuTmc600.xrc; DestDir: {app}; Components: MAIN
Source: ..\menuVelf.xrc; DestDir: {app}; Components: MAIN
Source: ..\menuVip.xrc; DestDir: {app}; Components: MAIN
Source: ..\ports.xrc; DestDir: {app}; Components: MAIN
Source: ..\sb.xrc; DestDir: {app}; Components: MAIN
Source: ..\splash.xrc; DestDir: {app}; Components: MAIN
Source: ..\vt.xrc; DestDir: {app}; Components: MAIN
Source: ..\..\SDL2-2.0.5\lib\x86\SDL2.dll; DestDir: {app}; Components: MAIN
Source: ..\OpenSSL - LICENSE; DestDir: {app}; Components: MAIN
Source: ..\Quest_license.txt; DestDir: {app}; Components: MAIN
Source: ..\Quest_CC_Lic.jpg; DestDir: {app}; Components: MAIN
Source: ..\README-SDL.txt; DestDir: {app}; Components: MAIN
Source: ..\LGPL.txt; DestDir: {app}; Components: MAIN
Source: ..\COPYING - curl; DestDir: {app}; Components: MAIN
Source: ..\data\data dir for portable mode.txt; DestDir: {app}\data; Components: MAIN
Source: ..\data\Configurations\Cidelsa\*.*; DestDir: {userappdata}\Emma 02\Configurations\Cidelsa; Components: CONF
Source: ..\data\Configurations\Comx\*.*; DestDir: {userappdata}\Emma 02\Configurations\Comx; Components: CONF
Source: ..\data\Configurations\Cosmicos\*.*; DestDir: {userappdata}\Emma 02\Configurations\Cosmicos; Components: CONF
Source: ..\data\Configurations\Elf\*.*; DestDir: {userappdata}\Emma 02\Configurations\Elf; Components: CONF
Source: ..\data\Configurations\Elf2K\*.*; DestDir: {userappdata}\Emma 02\Configurations\Elf2K; Components: CONF
Source: ..\data\Configurations\Eti\*.*; DestDir: {userappdata}\Emma 02\Configurations\Eti; Components: CONF
Source: ..\data\Configurations\Membership\*.*; DestDir: {userappdata}\Emma 02\Configurations\Membership; Components: CONF
Source: ..\data\Configurations\Microtutor\*.*; DestDir: {userappdata}\Emma 02\Configurations\Microtutor; Components: CONF
Source: ..\data\Configurations\MS2000\*.*; DestDir: {userappdata}\Emma 02\Configurations\MS2000; Components: CONF
Source: ..\data\Configurations\Nano\*.*; DestDir: {userappdata}\Emma 02\Configurations\Nano; Components: CONF
Source: ..\data\Configurations\Pecom\*.*; DestDir: {userappdata}\Emma 02\Configurations\Pecom; Components: CONF
Source: ..\data\Configurations\Studio2\*.*; DestDir: {userappdata}\Emma 02\Configurations\Studio2; Components: CONF
Source: ..\data\Configurations\TMC600\*.*; DestDir: {userappdata}\Emma 02\Configurations\TMC600; Components: CONF
Source: ..\data\Configurations\TMC1800\*.*; DestDir: {userappdata}\Emma 02\Configurations\TMC1800; Components: CONF
Source: ..\data\Configurations\TMC2000\*.*; DestDir: {userappdata}\Emma 02\Configurations\TMC2000; Components: CONF
Source: ..\data\Configurations\Victory\*.*; DestDir: {userappdata}\Emma 02\Configurations\Victory; Components: CONF
Source: ..\data\Configurations\Vip\*.*; DestDir: {userappdata}\Emma 02\Configurations\Vip; Components: CONF
Source: ..\data\Configurations\VipII\*.*; DestDir: {userappdata}\Emma 02\Configurations\VipII; Components: CONF
Source: ..\data\Configurations\Visicom\*.*; DestDir: {userappdata}\Emma 02\Configurations\Visicom; Components: CONF
Source: ..\data\keydefinition.txt; DestDir: {userappdata}\Emma 02; Components: MAIN
Source: ..\data\keydefinition_studio.txt; DestDir: {userappdata}\Emma 02; Components: MAIN
Source: ..\data\multi-cart.txt; DestDir: {userappdata}\Emma 02; Components: MAIN
Source: ..\data\us.ini; DestDir: {userappdata}\Emma 02; Components: MAIN
Source: ..\data\swedish.ini; DestDir: {userappdata}\Emma 02; Components: MAIN
Source: ..\data\german.ini; DestDir: {userappdata}\Emma 02; Components: MAIN
Source: ..\data\dutch.ini; DestDir: {userappdata}\Emma 02; Components: MAIN
Source: ..\data\french.ini; DestDir: {userappdata}\Emma 02; Components: MAIN
Source: ..\data\Comx\comx35.bin; DestDir: {userappdata}\Emma 02\Comx; Components: MAIN
Source: ..\data\Comx\comx35.1.1.bin; DestDir: {userappdata}\Emma 02\Comx; Components: MAIN
Source: ..\data\Comx\f&m.expansion.3.1.bin; DestDir: {userappdata}\Emma 02\Comx; Components: MAIN
Source: ..\data\Comx\f&m.expansion.3.2.bin; DestDir: {userappdata}\Emma 02\Comx; Components: MAIN
Source: ..\data\Comx\f&m.eprom.board.1.1.bin; DestDir: {userappdata}\Emma 02\Comx; Components: MAIN
Source: ..\data\Comx\f&m.eprom.board.1.2.bin; DestDir: {userappdata}\Emma 02\Comx; Components: MAIN
Source: ..\data\Comx\fdc.bin; DestDir: {userappdata}\Emma 02\Comx; Components: MAIN
Source: ..\data\Comx\diag_pal1.bin; DestDir: {userappdata}\Emma 02\Comx; Components: MAIN
Source: ..\data\Comx\diag_pal2.bin; DestDir: {userappdata}\Emma 02\Comx; Components: MAIN
Source: ..\data\Comx\diag_pal2_v1.1.bin; DestDir: {userappdata}\Emma 02\Comx; Components: MAIN
Source: ..\data\Comx\diag_ntsc1.bin; DestDir: {userappdata}\Emma 02\Comx; Components: MAIN
Source: ..\data\Comx\diag_ntsc2.bin; DestDir: {userappdata}\Emma 02\Comx; Components: MAIN
Source: ..\data\Comx\diag_ntsc2_v1.1.bin; DestDir: {userappdata}\Emma 02\Comx; Components: MAIN
Source: ..\data\Comx\rs232.bin; DestDir: {userappdata}\Emma 02\Comx; Components: MAIN
Source: ..\data\Comx\f&m.joycard.bin; DestDir: {userappdata}\Emma 02\Comx; Components: MAIN
Source: ..\data\Comx\f&m.printer.1.2.bin; DestDir: {userappdata}\Emma 02\Comx; Components: MAIN
Source: ..\data\Comx\printer.bin; DestDir: {userappdata}\Emma 02\Comx; Components: MAIN
Source: ..\data\Comx\thermal.bin; DestDir: {userappdata}\Emma 02\Comx; Components: MAIN
Source: ..\data\Comx\expansion.bin; DestDir: {userappdata}\Emma 02\Comx; Components: MAIN
Source: ..\data\Comx\80column.1.0.bin; DestDir: {userappdata}\Emma 02\Comx; Components: MAIN
Source: ..\data\Comx\80column.1.1.bin; DestDir: {userappdata}\Emma 02\Comx; Components: MAIN
Source: ..\data\Comx\pl80.bin; DestDir: {userappdata}\Emma 02\Comx; Components: MAIN
Source: ..\data\Comx\pl80.it.em.ou.bin; DestDir: {userappdata}\Emma 02\Comx; Components: MAIN
Source: ..\data\Comx\pl80.tiny.bin; DestDir: {userappdata}\Emma 02\Comx; Components: MAIN
Source: ..\data\Comx\usb_super.bin; DestDir: {userappdata}\Emma 02\Comx; Components: MAIN
Source: ..\data\Comx\eprom_super.bin; DestDir: {userappdata}\Emma 02\Comx; Components: MAIN
Source: ..\data\Comx\Comx Key File Example.txt; DestDir: {userappdata}\Emma 02\Comx; Components: MAIN
Source: ..\data\Comx\Recall Basic.txt; DestDir: {userappdata}\Emma 02\Comx; Components: MAIN
Source: ..\data\Comx\Trainspotting.txt; DestDir: {userappdata}\Emma 02\Comx; Components: MAIN
Source: ..\data\Comx\Usb FW Development\sb*.bin; DestDir: {userappdata}\Emma 02\Comx\Usb FW; Components: MAIN
Source: ..\data\Comx\Usb FW Development\*.debug; DestDir: {userappdata}\Emma 02\Comx\Usb FW; Components: MAIN
Source: ..\data\Comx\Usb FW\sb.config; DestDir: {userappdata}\Emma 02\Comx\Usb FW; Components: MAIN
Source: ..\data\Comx\Demo\*.comx; DestDir: {userappdata}\Emma 02\Comx\Demo; Components: SW/COMX
Source: ..\data\Comx\Spellen\*.comx; DestDir: {userappdata}\Emma 02\Comx\Spellen; Components: SW/COMX
Source: ..\data\Comx\Programmas\*.comx; DestDir: {userappdata}\Emma 02\Comx\Programmas; Components: SW/COMX
Source: ..\data\Comx\Educatief\*.comx; DestDir: {userappdata}\Emma 02\Comx\Educatief; Components: SW/COMX
Source: ..\data\Comx\Games\*.comx; DestDir: {userappdata}\Emma 02\Comx\Games; Components: SW/COMX
Source: ..\data\Comx\Programs\*.comx; DestDir: {userappdata}\Emma 02\Comx\Programs; Components: SW/COMX
Source: ..\data\Comx\Educational\*.comx; DestDir: {userappdata}\Emma 02\Comx\Educational; Components: SW/COMX
Source: ..\data\Comx\Talen - Languages\*.comx; DestDir: {userappdata}\Emma 02\Comx\Talen - Languages; Components: SW/COMX
Source: ..\data\Comx\Hulpmiddelen - Utilities\*.comx; DestDir: {userappdata}\Emma 02\Comx\Hulpmiddelen - Utilities; Components: SW/COMX
Source: ..\data\Comx\F&M Basic\*.comx; DestDir: {userappdata}\Emma 02\Comx\F&M Basic; Components: SW/COMX
Source: ..\data\Comx\Plotter\*.comx; DestDir: {userappdata}\Emma 02\Comx\Plotter; Components: SW/COMX
Source: ..\data\Comx\Disks\dos.1.4+f&m.disk.tools.img; DestDir: {userappdata}\Emma 02\Comx\Disks; Components: SW/COMX
Source: ..\data\Comx\Disks\f&m-heijmans.sw.img; DestDir: {userappdata}\Emma 02\Comx\Disks; Components: SW/COMX
Source: ..\data\Comx\Disks\games.img; DestDir: {userappdata}\Emma 02\Comx\Disks; Components: SW/COMX
Source: ..\data\Comx\Disks\hit.it.img; DestDir: {userappdata}\Emma 02\Comx\Disks; Components: SW/COMX
Source: ..\data\Comx\Disks\comxstar.img; DestDir: {userappdata}\Emma 02\Comx\Disks; Components: SW/COMX
Source: ..\data\Comx\Disks\assembler.img; DestDir: {userappdata}\Emma 02\Comx\Disks; Components: SW/COMX
Source: ..\data\Comx\Disks\plotter.img; DestDir: {userappdata}\Emma 02\Comx\Disks; Components: SW/COMX
Source: ..\data\Comx\Disks\plotter-2.img; DestDir: {userappdata}\Emma 02\Comx\Disks; Components: SW/COMX
Source: ..\data\Comx\F&M EPROM Switchboard\*.*; DestDir: {userappdata}\Emma 02\Comx\F&M EPROM Switchboard; Components: MAIN
Source: ..\data\Studio2\studio2.rom; DestDir: {userappdata}\Emma 02\Studio2; Components: MAIN
Source: ..\data\Studio2\*.bin; DestDir: {userappdata}\Emma 02\Studio2; Components: MAIN
Source: ..\data\Studio2\*.rom; DestDir: {userappdata}\Emma 02\Studio2; Components: MAIN
Source: ..\data\Studio2\*.st2; DestDir: {userappdata}\Emma 02\Studio2; Components: SW/STUDIO
Source: ..\data\Studio2\*.txt; DestDir: {userappdata}\Emma 02\Studio2; Components: SW/STUDIO
Source: ..\data\Studio2\*.pdf; DestDir: {userappdata}\Emma 02\Studio2; Components: SW/STUDIO
Source: ..\data\Studio2\*.zip; DestDir: {userappdata}\Emma 02\Studio2; Components: SW/STUDIO
Source: ..\data\Visicom\visicom.rom; DestDir: {userappdata}\Emma 02\Visicom; Components: MAIN
Source: ..\data\Visicom\*.st2; DestDir: {userappdata}\Emma 02\Visicom; Components: SW/VISICOM
Source: ..\data\Victory\victory.rom; DestDir: {userappdata}\Emma 02\Victory; Components: MAIN
Source: ..\data\Victory\*.bin; DestDir: {userappdata}\Emma 02\Victory; Components: MAIN
Source: ..\data\Victory\*.st2; DestDir: {userappdata}\Emma 02\Victory; Components: SW/VICTORY
Source: ..\data\Victory\*.txt; DestDir: {userappdata}\Emma 02\Victory; Components: SW/VICTORY
Source: ..\data\Victory\*.pdf; DestDir: {userappdata}\Emma 02\Victory; Components: SW/VICTORY
Source: ..\data\Cidelsa\altair.rom; DestDir: {userappdata}\Emma 02\Cidelsa; Components: SW/CIDELSA
Source: ..\data\Cidelsa\destroyer set 1.bin; DestDir: {userappdata}\Emma 02\Cidelsa; Components: SW/CIDELSA
Source: ..\data\Cidelsa\destroyer set 2.bin; DestDir: {userappdata}\Emma 02\Cidelsa; Components: SW/CIDELSA
Source: ..\data\Cidelsa\draco.bin; DestDir: {userappdata}\Emma 02\Cidelsa; Components: SW/CIDELSA
Source: ..\data\Chip-8\Chip-8 Demos\*.*; DestDir: {userappdata}\Emma 02\Chip-8\Chip-8 Demos; Components: SW/TMC2000 SW/NANO SW/VIP
Source: ..\data\Chip-8\Chip-8 Games\*.*; DestDir: {userappdata}\Emma 02\Chip-8\Chip-8 Games; Components: SW/TMC2000 SW/NANO SW/VIP
Source: ..\data\Chip-8\Chip-8 Programs\*.*; DestDir: {userappdata}\Emma 02\Chip-8\Chip-8 Programs; Components: SW/TMC2000 SW/NANO SW/VIP
Source: ..\data\Chip-8\Chip-8 ETI660 Hybrids\*.*; DestDir: {userappdata}\Emma 02\Chip-8\Chip-8 ETI660 Hybrids; Components: SW/TMC2000 SW/NANO SW/VIP SW/ETI
Source: ..\data\Chip-8\Chip-8 Hires\*.*; DestDir: {userappdata}\Emma 02\Chip-8\Chip-8 Hires; Components: SW/TMC2000 SW/NANO SW/VIP SW/ETI
Source: ..\data\Chip-8\Chip-8 Hybrids\*.*; DestDir: {userappdata}\Emma 02\Chip-8\Chip-8 Hybrids; Components: SW/TMC2000 SW/NANO SW/VIP SW/ETI
Source: ..\data\Chip-8\Chip-8X\*.*; DestDir: {userappdata}\Emma 02\Chip-8\Chip-8X; Components: SW/TMC2000 SW/NANO SW/VIP SW/ETI
Source: ..\data\Chip-8\Chip-10\*.*; DestDir: {userappdata}\Emma 02\Chip-8\Chip-10; Components: SW/VIP
Source: ..\data\Vip\vip.rom; DestDir: {userappdata}\Emma 02\Vip; Components: MAIN
Source: ..\data\Vip\vip.32.rom; DestDir: {userappdata}\Emma 02\Vip; Components: MAIN
Source: ..\data\Vip\fpb.bin; DestDir: {userappdata}\Emma 02\Vip; Components: MAIN
Source: ..\data\Vip\fpb_color.bin; DestDir: {userappdata}\Emma 02\Vip; Components: MAIN
Source: ..\data\Vip\*.ram; DestDir: {userappdata}\Emma 02\Vip; Components: SW/VIP
Source: ..\data\Vip\*.bin; DestDir: {userappdata}\Emma 02\Vip; Components: SW/VIP
Source: ..\data\Vip\chip8.stepper.hex; DestDir: {userappdata}\Emma 02\Vip; Components: SW/VIP
Source: ..\data\Vip\chip10.hex; DestDir: {userappdata}\Emma 02\Vip; Components: SW/VIP
Source: ..\data\VipII\vip.rom; DestDir: {userappdata}\Emma 02\VipII; Components: MAIN
Source: ..\data\VipII\vip.32.rom; DestDir: {userappdata}\Emma 02\VipII; Components: MAIN
Source: ..\data\VipII\fpb.rom; DestDir: {userappdata}\Emma 02\VipII; Components: MAIN
Source: ..\data\VipII\*.ram; DestDir: {userappdata}\Emma 02\VipII; Components: SW/VIP
Source: ..\data\VipII\chip10.hex; DestDir: {userappdata}\Emma 02\VipII; Components: SW/VIP
Source: ..\data\MCDS\*.bin; DestDir: {userappdata}\Emma 02\MCDS; Components: MAIN
Source: ..\data\MS2000\*.bin; DestDir: {userappdata}\Emma 02\MS2000; Components: MAIN
Source: ..\data\MS2000\MICRODOS\*.*; DestDir: {userappdata}\Emma 02\MS2000\MICRODOS; Components: MAIN
Source: ..\data\MS2000\microdos.img; DestDir: {userappdata}\Emma 02\MS2000\; Components: MAIN
Source: ..\data\MS2000\basic1.img; DestDir: {userappdata}\Emma 02\MS2000\; Components: SW/MS2000
Source: ..\data\MS2000\PLM 1800.img; DestDir: {userappdata}\Emma 02\MS2000\; Components: SW/MS2000
Source: ..\data\MS2000\RP.img; DestDir: {userappdata}\Emma 02\MS2000\; Components: SW/MS2000
Source: ..\data\MS2000\BASIC\*.*; DestDir: {userappdata}\Emma 02\MS2000\BASIC; Components: SW/MS2000
Source: ..\data\MS2000\Software\*.*; DestDir: {userappdata}\Emma 02\MS2000\Software; Components: SW/MS2000
Source: ..\data\MS2000\PLM\*.*; DestDir: {userappdata}\Emma 02\MS2000\PLM; Components: SW/MS2000
Source: ..\data\MS2000\RP\*.*; DestDir: {userappdata}\Emma 02\MS2000\RP; Components: SW/MS2000
Source: ..\data\Velf\*.bin; DestDir: {userappdata}\Emma 02\Velf; Components: SW/VIP
Source: ..\data\Velf\VELFbios-v3.1.HEX; DestDir: {userappdata}\Emma 02\Velf; Components: MAIN
Source: ..\data\Velf\VELFbios-v3.1.LST; DestDir: {userappdata}\Emma 02\Velf; Components: MAIN
Source: ..\data\Velf\*.ram; DestDir: {userappdata}\Emma 02\Velf; Components: SW/VELF
Source: ..\data\TMC600\*.bin; DestDir: {userappdata}\Emma 02\TMC600; Components: MAIN
Source: ..\data\TMC600\demo.txt; DestDir: {userappdata}\Emma 02\TMC600; Components: SW/TMC600
Source: ..\data\TMC600\demo2.txt; DestDir: {userappdata}\Emma 02\TMC600; Components: SW/TMC600
Source: ..\data\TMC600\snoopy.txt; DestDir: {userappdata}\Emma 02\TMC600; Components: SW/TMC600
Source: ..\data\TMC600\demo.tmc600; DestDir: {userappdata}\Emma 02\TMC600; Components: SW/TMC600
Source: ..\data\TMC600\demo2.tmc600; DestDir: {userappdata}\Emma 02\TMC600; Components: SW/TMC600
Source: ..\data\TMC600\snoopy.tmc600; DestDir: {userappdata}\Emma 02\TMC600; Components: SW/TMC600
Source: ..\data\TMC1800\telmac1800.rom; DestDir: {userappdata}\Emma 02\TMC1800; Components: MAIN
Source: ..\data\TMC1800\*.ram; DestDir: {userappdata}\Emma 02\TMC1800; Components: SW/TMC1800
Source: ..\data\TMC2000\telmac2000.rom; DestDir: {userappdata}\Emma 02\TMC2000; Components: MAIN
Source: ..\data\TMC2000\*.ram; DestDir: {userappdata}\Emma 02\TMC2000; Components: SW/TMC2000
Source: ..\data\Nano\nano.rom; DestDir: {userappdata}\Emma 02\Nano; Components: MAIN
Source: ..\data\Nano\*.ram; DestDir: {userappdata}\Emma 02\Nano; Components: SW/NANO
Source: ..\data\Pecom\*.bin; DestDir: {userappdata}\Emma 02\Pecom; Components: MAIN
Source: ..\data\Pecom\*.pecom; DestDir: {userappdata}\Emma 02\Pecom; Components: SW/PECOM
Source: ..\data\Eti\eti-660.bin; DestDir: {userappdata}\Emma 02\Eti; Components: MAIN
Source: ..\data\Cosmicos\*.bin; DestDir: {userappdata}\Emma 02\Cosmicos; Components: MAIN
Source: ..\data\Membership\*.bin; DestDir: {userappdata}\Emma 02\Membership; Components: MAIN
Source: ..\data\Membership\*.rom; DestDir: {userappdata}\Emma 02\Membership; Components: MAIN
Source: ..\data\Membership\*.hex; DestDir: {userappdata}\Emma 02\Membership; Components: MAIN
Source: ..\data\Membership\*.txt; DestDir: {userappdata}\Emma 02\Membership; Components: MAIN
Source: ..\data\Microtutor\*.bin; DestDir: {userappdata}\Emma 02\Microtutor; Components: MAIN
Source: ..\data\Elf2K\v87a.bin; DestDir: {userappdata}\Emma 02\Elf2K; Components: MAIN
Source: ..\data\Elf2K\v88.bin; DestDir: {userappdata}\Emma 02\Elf2K; Components: MAIN
Source: ..\data\Elf2K\intel8275.bin; DestDir: {userappdata}\Emma 02\Elf2K; Components: MAIN
Source: ..\data\Elf2K\vt52.a.bin; DestDir: {userappdata}\Emma 02\Elf2K; Components: MAIN
Source: ..\data\Elf2K\vt52.b.bin; DestDir: {userappdata}\Emma 02\Elf2K; Components: MAIN
Source: ..\data\Elf2K\vt100.bin; DestDir: {userappdata}\Emma 02\Elf2K; Components: MAIN
Source: ..\data\Elf2K\elfos2k_0_2_8.hex; DestDir: {userappdata}\Emma 02\Elf2K; Components: MAIN
Source: ..\data\Elf2K\LOAD-8275.hex; DestDir: {userappdata}\Emma 02\Elf2K; Components: SW/ELF
Source: ..\data\Elf2K\elf2k-installation.ide; DestDir: {userappdata}\Emma 02\Elf2K; Components: SW/ELF
Source: ..\data\Elf2K\clock2.hex; DestDir: {userappdata}\Emma 02\Elf2K; Components: SW/ELF
Source: ..\data\Elf2K\Clock\*.*; DestDir: {userappdata}\Emma 02\Elf2K\Clock\; Components: SW/ELF
Source: ..\data\Elf2K\1802 Disassembler.hex; DestDir: {userappdata}\Emma 02\Elf2K; Components: SW/ELF
Source: ..\data\Elf2K\1802 Disassembler\*.*; DestDir: {userappdata}\Emma 02\Elf2K\1802 Disassembler\; Components: SW/ELF
Source: ..\data\Elf2K\Tinyos2k\*.*; DestDir: {userappdata}\Emma 02\Elf2K\Tinyos2k; Components: SW/ELF
Source: ..\data\Elf\bios.1.0.rom; DestDir: {userappdata}\Emma 02\Elf; Components: MAIN
Source: ..\data\Elf\bios.1.0.4.rom; DestDir: {userappdata}\Emma 02\Elf; Components: MAIN
Source: ..\data\Elf\elfos.0.2.6.hex; DestDir: {userappdata}\Emma 02\Elf; Components: MAIN
Source: ..\data\Elf\elfos.0.2.8.hex; DestDir: {userappdata}\Emma 02\Elf; Components: MAIN
Source: ..\data\Elf\biosio.elfos.0.2.5.rom; DestDir: {userappdata}\Emma 02\Elf; Components: MAIN
Source: ..\data\Elf\bios+biosiov92.rom; DestDir: {userappdata}\Emma 02\Elf; Components: MAIN
Source: ..\data\Elf\bios+biosiov93.rom; DestDir: {userappdata}\Emma 02\Elf; Components: MAIN
Source: ..\data\Elf\biosio.elfos.0.2.5_32.column.rom; DestDir: {userappdata}\Emma 02\Elf; Components: MAIN
Source: ..\data\Elf\bios+biosiov92_32.column.rom; DestDir: {userappdata}\Emma 02\Elf; Components: MAIN
Source: ..\data\Elf\bios+biosiov93_32.column.rom; DestDir: {userappdata}\Emma 02\Elf; Components: MAIN
Source: ..\data\Elf\mc6847.ntsc.round.bin; DestDir: {userappdata}\Emma 02\Elf; Components: MAIN
Source: ..\data\Elf\mc6847.ntsc.square.bin; DestDir: {userappdata}\Emma 02\Elf; Components: MAIN
Source: ..\data\Elf\mc6847.pal.round.bin; DestDir: {userappdata}\Emma 02\Elf; Components: MAIN
Source: ..\data\Elf\mc6847.pal.square.bin; DestDir: {userappdata}\Emma 02\Elf; Components: MAIN
Source: ..\data\Elf\mc6845.comx.bin; DestDir: {userappdata}\Emma 02\Elf; Components: MAIN
Source: ..\data\Elf\super.video.bin; DestDir: {userappdata}\Emma 02\Elf; Components: MAIN
Source: ..\data\Elf\intel8275.bin; DestDir: {userappdata}\Emma 02\Elf; Components: MAIN
Source: ..\data\Elf\vt52.a.bin; DestDir: {userappdata}\Emma 02\Elf; Components: MAIN
Source: ..\data\Elf\vt52.b.bin; DestDir: {userappdata}\Emma 02\Elf; Components: MAIN
Source: ..\data\Elf\vt100.bin; DestDir: {userappdata}\Emma 02\Elf; Components: MAIN
Source: ..\data\Elf\pixie-installation.ide; DestDir: {userappdata}\Emma 02\Elf; Components: SW/ELF
Source: ..\data\Elf\tms-installation.ide; DestDir: {userappdata}\Emma 02\Elf; Components: SW/ELF
Source: ..\data\Elf\gra-installation.ide; DestDir: {userappdata}\Emma 02\Elf; Components: SW/ELF
Source: ..\data\Elf\mc6845-installation.ide; DestDir: {userappdata}\Emma 02\Elf; Components: SW/ELF
Source: ..\data\Elf\mc6847-installation.ide; DestDir: {userappdata}\Emma 02\Elf; Components: SW/ELF
Source: ..\data\Elf\vt100-installation.ide; DestDir: {userappdata}\Emma 02\Elf; Components: SW/ELF
Source: ..\data\Elf\serial-installation.ide; DestDir: {userappdata}\Emma 02\Elf; Components: SW/ELF
Source: ..\data\Elf\rommapper.bin; DestDir: {userappdata}\Emma 02\Elf; Components: SW/ELF
Source: ..\data\Elf\chip8.hex; DestDir: {userappdata}\Emma 02\Elf; Components: MAIN
Source: ..\data\Elf\rcabug.hex; DestDir: {userappdata}\Emma 02\Elf; Components: SW/ELF
Source: ..\data\Elf\Games\*.*; DestDir: {userappdata}\Emma 02\Elf\Games; Components: SW/ELF
Source: ..\data\Elf\Music\*.*; DestDir: {userappdata}\Emma 02\Elf\Music; Components: SW/ELF
Source: ..\data\Elf\QuestData\*.*; DestDir: {userappdata}\Emma 02\Elf\QuestData; Components: SW/ELF
Source: ..\data\Elf\elf-emulation.com\*.*; DestDir: {userappdata}\Emma 02\Elf\elf-emulation.com; Components: SW/ELF
Source: ..\data\Elf\elf-emulation.com\EdtAsm\*.*; DestDir: {userappdata}\Emma 02\Elf\elf-emulation.com\EdtAsm; Components: SW/ELF
Source: ..\data\Elf\elf-emulation.com\RcForth Rom Version\*.*; DestDir: {userappdata}\Emma 02\Elf\elf-emulation.com\RcForth Rom Version; Components: SW/ELF
Source: ..\data\Elf\elf-emulation.com\RcForth v1.0\*.*; DestDir: {userappdata}\Emma 02\Elf\elf-emulation.com\RcForth v1.0; Components: SW/ELF
Source: ..\data\Elf\elf-emulation.com\RcLisp Rom Version\*.*; DestDir: {userappdata}\Emma 02\Elf\elf-emulation.com\RcLisp Rom Version; Components: SW/ELF
Source: ..\data\Elf\elf-emulation.com\Tiny Basic Compiler Rom Version\*.*; DestDir: {userappdata}\Emma 02\Elf\elf-emulation.com\Tiny Basic Compiler Rom Version; Components: SW/ELF
Source: ..\data\Elf\Netronics Tiny Basic\*.*; DestDir: {userappdata}\Emma 02\Elf\Netronics Tiny Basic; Components: SW/ELF
Source: ..\data\Elf\netronic.tinyBasic.hex; DestDir: {userappdata}\Emma 02\Elf\; Components: SW/ELF
Source: ..\data\Elf\Fig Forth 1802\*.*; DestDir: {userappdata}\Emma 02\Elf\Fig Forth 1802; Components: SW/ELF
Source: ..\data\Elf\fig.forth.1802.hex; DestDir: {userappdata}\Emma 02\Elf\; Components: SW/ELF
Source: ..\data\Elf\tiny.basic.interpreter.v2.hex; DestDir: {userappdata}\Emma 02\Elf\; Components: SW/ELF
Source: ..\data\Elf\quest.tape.loader.hex; DestDir: {userappdata}\Emma 02\Elf\; Components: SW/ELF
Source: ..\data\Elf\superbasic.1.4.bin; DestDir: {userappdata}\Emma 02\Elf\; Components: SW/ELF
Source: ..\data\Elf\superbasic.1.45.bin; DestDir: {userappdata}\Emma 02\Elf\; Components: SW/ELF
Source: ..\data\Elf\superbasic.1.46.bin; DestDir: {userappdata}\Emma 02\Elf\; Components: SW/ELF
Source: ..\data\Elf\superbasic.1.47.bin; DestDir: {userappdata}\Emma 02\Elf\; Components: SW/ELF
Source: ..\data\Elf\superbasic.3.0.bin; DestDir: {userappdata}\Emma 02\Elf\; Components: SW/ELF
Source: ..\data\Elf\superbasic.5.0.bin; DestDir: {userappdata}\Emma 02\Elf\; Components: SW/ELF
Source: ..\data\Elf\superbasic.6.0.bin; DestDir: {userappdata}\Emma 02\Elf\; Components: SW/ELF
Source: ..\data\Elf\rca.basic3.v1.1.hex; DestDir: {userappdata}\Emma 02\Elf\; Components: SW/ELF
Source: ..\data\Elf\rca.basic4.v1.1.install.hex; DestDir: {userappdata}\Emma 02\Elf\; Components: SW/ELF
Source: ..\data\Elf\supermon.hex; DestDir: {userappdata}\Emma 02\Elf\; Components: SW/ELF
Source: ..\data\Elf\super.gold.monitor.hex; DestDir: {userappdata}\Emma 02\Elf\; Components: SW/ELF
Source: ..\data\Elf\mini.monitor.and.super.basic.hex; DestDir: {userappdata}\Emma 02\Elf\; Components: SW/ELF
Source: ..\data\Elf\giantboard.hex; DestDir: {userappdata}\Emma 02\Elf\; Components: SW/ELF
Source: ..\data\Elf\giantboard.v2.hex; DestDir: {userappdata}\Emma 02\Elf\; Components: SW/ELF
Source: ..\data\Elf\tapeloader.txt; DestDir: {userappdata}\Emma 02\Elf\; Components: SW/ELF
Source: ..\data\Elf\emma 02.cos; DestDir: {userappdata}\Emma 02\Elf\; Components: SW/ELF
Source: ..\data\Elf\TinyosTS\*.*; DestDir: {userappdata}\Emma 02\Elf\TinyosTS; Components: SW/ELF
Source: ..\data\Elf\Biosio\BIOSIO93.ROM; DestDir: {userappdata}\Emma 02\Elf\Biosio; Components: SW/ELF
Source: ..\data\Elf\Biosio\BIOSIOV9.ROM; DestDir: {userappdata}\Emma 02\Elf\Biosio; Components: SW/ELF
Source: ..\data\Elf\Biosio\BIOSiov9REQ.txt; DestDir: {userappdata}\Emma 02\Elf\Biosio; Components: SW/ELF
Source: ..\data\Elf\Biosio\GRAINIZ.ROM; DestDir: {userappdata}\Emma 02\Elf\Biosio; Components: SW/ELF
Source: ..\data\Elf\Biosio\GRAINIZnotes.txt; DestDir: {userappdata}\Emma 02\Elf\Biosio; Components: SW/ELF
Source: ..\data\Elf\Biosio\PIXINIZ.ROM; DestDir: {userappdata}\Emma 02\Elf\Biosio; Components: SW/ELF
Source: ..\data\Elf\Biosio\pixiniznotes.txt; DestDir: {userappdata}\Emma 02\Elf\Biosio; Components: SW/ELF
Source: ..\data\Elf\Biosio\SERINIZ.ROM; DestDir: {userappdata}\Emma 02\Elf\Biosio; Components: SW/ELF
Source: ..\data\Elf\Biosio\seriniznotes.txt; DestDir: {userappdata}\Emma 02\Elf\Biosio; Components: SW/ELF
Source: ..\data\Elf\Biosio\TMSINIZ.ROM; DestDir: {userappdata}\Emma 02\Elf\Biosio; Components: SW/ELF
Source: ..\data\Elf\Biosio\TMSINIZnotes.txt; DestDir: {userappdata}\Emma 02\Elf\Biosio; Components: SW/ELF
Source: ..\data\Elf\Biosio\VIDINIZ.ROM; DestDir: {userappdata}\Emma 02\Elf\Biosio; Components: SW/ELF
Source: ..\data\Elf\Biosio\VIDINIZnotes.txt; DestDir: {userappdata}\Emma 02\Elf\Biosio; Components: SW/ELF
Source: ..\data\Elf\biosioPS2\BIOSPSV1.ROM; DestDir: {userappdata}\Emma 02\Elf\BiosioPS2; Components: SW/ELF
Source: ..\data\Elf\biosioPS2\BIOSPSV1REQ.txt; DestDir: {userappdata}\Emma 02\Elf\BiosioPS2; Components: SW/ELF
Source: ..\data\Elf\biosioPS2\PSiniz.rom; DestDir: {userappdata}\Emma 02\Elf\BiosioPS2; Components: SW/ELF
Source: ..\data\Elf\biosioPS2\PSiniznotes.txt; DestDir: {userappdata}\Emma 02\Elf\BiosioPS2; Components: SW/ELF
Source: ..\images\*.*; DestDir: {app}\images; Components: MAIN
Source: ..\src\*.*; DestDir: {app}\src; Components: SOURCEFILES
Source: ..\Emma 02 vc9.sln; DestDir: {app}; Components: SOURCEFILES
Source: ..\Emma 02 vc9.vcproj; DestDir: {app}; Components: SOURCEFILES
Source: ..\Emma 02.rc; DestDir: {app}; Components: SOURCEFILES

[Icons]
Name: {group}\Emma 02; Filename: {app}\Emma 02.exe; WorkingDir: {app}; Components: MAIN
Name: {group}\{cm:UninstallProgram,Emma 02}; Filename: {uninstallexe}; Components: MAIN
Name: {commondesktop}\Emma 02; Filename: {app}\Emma 02.exe; WorkingDir: {app}; Tasks: desktopicon


[Run]
Filename: {tmp}\vcredist_x86.exe; Parameters: /quiet; Components: MAIN
Filename: {app}\Emma 02.exe; Description: {cm:LaunchProgram,Emma 02}; WorkingDir: {app}; Flags: nowait postinstall skipifsilent; OnlyBelowVersion: 0,6

[Components]
Name: MAIN; Description: Main Files; Types: full compact custom minimum; Flags: disablenouninstallwarning fixed
Name: CONF; Description: Computer Configuration Files; Types: full compact custom; Flags: disablenouninstallwarning
Name: SW; Description: Software for Emulated Machines; Types: full compact; Flags: disablenouninstallwarning
Name: SW/COMX; Description: COMX; Types: full compact; Flags: disablenouninstallwarning
Name: SW/ELF; Description: Elf; Types: full compact; Flags: disablenouninstallwarning
Name: SW/STUDIO; Description: RCA Studio II; Types: full compact; Flags: disablenouninstallwarning
Name: SW/VISICOM; Description: Visicom COM-100; Types: full compact; Flags: disablenouninstallwarning
Name: SW/VICTORY; Description: Victory MPT-02; Types: full compact; Flags: disablenouninstallwarning
Name: SW/CIDELSA; Description: Cidelsa; Types: full compact; Flags: disablenouninstallwarning
Name: SW/VIP; Description: Cosmac Vip; Types: full compact; Flags: disablenouninstallwarning
Name: SW/VELF; Description: VELF; Types: full compact; Flags: disablenouninstallwarning
Name: SW/MS2000; Description: MS2000; Types: full compact; Flags: disablenouninstallwarning
Name: SW/TMC600; Description: Telmac TMC-600; Types: full compact; Flags: disablenouninstallwarning
Name: SW/TMC1800; Description: Telmac 1800; Types: full compact; Flags: disablenouninstallwarning
Name: SW/TMC2000; Description: Telmac 2000; Types: full compact; Flags: disablenouninstallwarning
Name: SW/NANO; Description: Oscom Nano; Types: full compact; Flags: disablenouninstallwarning
Name: SW/PECOM; Description: Pecom 64; Types: full compact; Flags: disablenouninstallwarning
Name: SW/ETI; Description: ETI 660; Types: full compact; Flags: disablenouninstallwarning
Name: SOURCEFILES; Description: Install Source Files; Types: full; Flags: disablenouninstallwarning

[Types]
Name: full; Description: Full installation
Name: compact; Description: Compact installation
Name: minimum; Description: Minimum installation
Name: custom; Description: Custom installation; Flags: iscustom

[Code]
procedure CurStepChanged(CurStep: TSetupStep);

  var
    ResultCode: Integer;
    Uninstall: String;
    StrVersion: String;
    IntVersion: Integer;
    UserDir: String;
    OldUserDir: String;
    MajorVersion: Cardinal;
    MinorVersion: Cardinal;
  begin
    if (CurStep = ssInstall) then begin

      if RegQueryStringValue(HKLM, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\1802 Emulator_is1', 'UninstallString', Uninstall) then begin
        StrVersion := '0';
        RegQueryStringValue(HKLM, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\1802 Emulator_is1', 'DisplayVersion', StrVersion);
        IntVersion := StrToInt (StrVersion);
        if (IntVersion < 4) then begin
          if MsgBox('An older version of the 1802 Emulator has been detected and needs to be uninstalled, do you want to continue?', mbConfirmation, MB_YESNO) = IDNO then
          begin
             Abort;
          end;
          Exec(RemoveQuotes(Uninstall), ' /SILENT', '', SW_SHOWNORMAL, ewWaitUntilTerminated, ResultCode);
          UserDir := ExpandConstant('{userappdata}') + '\Emma 02';
          OldUserDir := ExpandConstant('{userappdata}') + '\1802_Emulator';
          if DirExists(OldUserDir) = True then
          begin
            if RenameFile(OldUserDir, UserDir) = False then
            begin
              MsgBox('Not all user data could be moved, please check 1802_Emulator user directory and manually move needed files to the Emma 02 folder.', mbInformation, MB_OK);
            end;
          end;
        end;
      end;

      if RegQueryStringValue(HKLM, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Emma 02_is1', 'UninstallString', Uninstall) then begin
        MajorVersion := 0;
        MinorVersion := 0;
        RegQueryDWordValue(HKLM, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Emma 02_is1', 'MajorVersion', MajorVersion);
        RegQueryDWordValue(HKLM, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Emma 02_is1', 'MinorVersion', MinorVersion);
        if (MajorVersion < 2) then begin
          if (MinorVersion < 18) then begin
            if MsgBox('An older version of Emma 02 has been detected and needs to be uninstalled, do you want to continue?', mbConfirmation, MB_YESNO) = IDNO then
            begin
              Abort;
            end;
            Exec(RemoveQuotes(Uninstall), ' /SILENT', '', SW_SHOWNORMAL, ewWaitUntilTerminated, ResultCode);
          end;
        end;
      end;

	    if IsWin64 then
  	  begin
	      if RegQueryStringValue(HKLM64, 'SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Emma 02_is1', 'UninstallString', Uninstall) then
        begin
          if MsgBox('A 64 bit version of Emma 02 has been detected and needs to be uninstalled, do you want to continue?', mbConfirmation, MB_YESNO) = IDNO then
          begin
            Abort;
          end;
          Exec(RemoveQuotes(Uninstall), ' /SILENT', '', SW_SHOWNORMAL, ewWaitUntilTerminated, ResultCode);
        end;
      end;

    end;
  end;
end.

[Registry]
Root: HKCU; Subkey: Software\1802_emulator; Flags: deletekey; Components: ; Tasks: ; Languages: 
Root: HKCU; Subkey: Software\Marcel van Tongeren\Emma 02; Flags: deletekey; Components: ; Tasks: ; Languages: 
