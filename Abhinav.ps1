$System_info = {
   $ComputerName = $txt_ComputerName.Text
   $System = Get-CimInstance -Class Win32_ComputerSystem -ComputerName $ComputerName
   $lbl_sysinfo.Text = "System Information - $(Get-Date)"
   $lbl_sysinfo.Text += $System | FL -Property Name,
                                               Manufacturer,
                                               Model,
                                               PartOfDomain,
                                               Domain,
                                               Workgroup,
                                               DNSHostName,
                                               NumberOfProcessors,
                                               NumberOfLogicalProcessors,
                                               TotalPhysicalMemory,
                                               CurrentTimeZone,
                                               DaylightInEffect,
                                               HypervisorPresent,
                                               PrimaryOwnerName,
                                               UserName | Out-String
	$lbl_sysinfo.Text | Out-File C:\Scripts\SystInfo.txt}


$bios_info = {
   $ComputerName = $txt_ComputerName.Text
   $Bios = Get-CimInstance -Class Win32_BIOS -ComputerName $ComputerName
   $lbl_sysinfo.Text = "BIOS Information - $(Get-Date)"
   $lbl_sysinfo.Text += $Bios | FL -Property Name,
                                             SerialNumber,
                                             Version,
                                             BIOSVersion,
                                             ReleaseData | Out-String
	$lbl_sysinfo.Text | Out-File C:\Scripts\BIOSInfo.txt}


$CPU_info = {
   $ComputerName = $txt_ComputerName.Text
   $CPU = Get-CimInstance -Class Win32_Processor -ComputerName $ComputerName 
  $lbl_sysinfo.Text = "CPU Information - $(Get-Date)"
   $lbl_sysinfo.Text += $CPU | FL -Property DeviceID,
                                            Manufacturer,
                                            Name,
                                            Caption,
                                            L2CacheSize,
                                            L3CacheSize,
                                            LoadPercentage,
                                            CurrentClockSpeed | Out-String
	$lbl_sysinfo.Text | Out-File C:\Scripts\CPUInfo.txt}

$RAM_info = {
   $ComputerName = $txt_ComputerName.Text
   $RAM = Get-CimInstance -Class Win32_PhysicalMemory -ComputerName $ComputerName
   $lbl_sysinfo.Text = "RAM Information - $(Get-Date)"
   $lbl_sysinfo.Text += $RAM | FL -Property Tag,
                                            DeviceLocator,
                                            Manufacturer,
                                            PartNumber,
                                            SerialNumber,
                                            Capacity,
                                            Speed | Out-String
	$lbl_sysinfo.Text | Out-File C:\Scripts\RAMInfo.txt}


$MB_info = {
   $ComputerName = $txt_ComputerName.Text
   $MB = Get-CimInstance -Class Win32_BaseBoard -ComputerName $ComputerName
   $lbl_sysinfo.Text = "MotherBoard Information - $(Get-Date)"
   $lbl_sysinfo.Text += $MB | FL -Property Manufacturer,
                                           Model,
                                           Version | Out-String
	$lbl_sysinfo.Text | Out-File C:\Scripts\MBInfo.txt}

$PhysicalDrives_info = {
   $ComputerName = $txt_ComputerName.Text
   $PhysicalDrives = Get-CimInstance -Class Win32_DiskDrive -ComputerName $ComputerName
   $lbl_sysinfo.Text = "Physical Drives Information - $(Get-Date)"
   $lbl_sysinfo.Text += $PhysicalDrives | FL -Property DeviceID,
                                                       FirmwareRevision,
                                                       Manufacturer,
                                                       Model,
                                                       MediaType,
                                                       SerialNumber,
                                                       InterfaceType,
                                                       Partitions,
                                                       Size,
                                                       TotalCylinders,
                                                       TotalHeads,
                                                       TotalSectors,
                                                       TotalTracks,
                                                       TracksPerCylinderBytePerSector,
                                                       SectorsPerTrack,
                                                       Capabilities,
                                                       CapabilityDescriptions,
                                                       Status | Out-String
	$lbl_sysinfo.Text | Out-File C:\Scripts\PDInfo.txt}

$LogicalDrives_info = {
   $ComputerName = $txt_ComputerName.Text
   $LogicalDrives = Get-CimInstance -Class Win32_LogicalDisk -ComputerName $ComputerName
   $lbl_sysinfo.Text = "Logical Drives Information - $(Get-Date)"
   $lbl_sysinfo.Text += $LogicalDrives | FL -Property DeviceID,
                                                      Description,
                                                      VolumeName,
                                                      ProviderName,
                                                      Size,
                                                      FreeSpace,
                                                      VolumeSerialNumber,
                                                      FileSystem,
                                                      Compressed | Out-String
	$lbl_sysinfo.Text | Out-File C:\Scripts\LDInfo.txt}

$GPU_info = {
   $ComputerName = $txt_ComputerName.Text
   $GPU = Get-CimInstance -Class Win32_VideoController -ComputerName $ComputerName
   $lbl_sysinfo.Text = "GPU Information - $(Get-Date)"
   $lbl_sysinfo.Text += $GPU | FL -Property DeviceID,
                                            Name,
                                            VideoProcessor,
                                            AdapterDACType,
                                            AdapterRAM,
                                            DriverDate,
                                            DriverVersion,
                                            VideoModeDescription,
                                            CurrentBitsPerPixel,
                                            CurrentHorizontalResolution,
                                            CurrentVerticalResolution,
                                            CurrentNumberOfColors,
                                            CurrentRefreshRate,
                                            MaxRefreshRate,
                                            MinRefreshRate,
                                            Status | Out-String
	$lbl_sysinfo.Text | Out-File C:\Scripts\GPUInfo.txt}

$Network_info = {
   $ComputerName = $txt_ComputerName.Text
   $Network = Get-CimInstance -Class Win32_NetworkAdapter -ComputerName $ComputerName
   $lbl_sysinfo.Text = "Network Devices Information - $(Get-Date)"
   $lbl_sysinfo.Text += $Network | FL -Property DeviceID,
                                                Name,
                                                Manufacturer,
                                                ProductName,
                                                ServiceName,
                                                MACAddress,
                                                AdapterType,
                                                NetConnectionID,
                                                NetEnabled,
                                                Speed,
                                                PhysicalAdapter,
                                                TimeOfLastReset | Out-String
	$lbl_sysinfo.Text | Out-File C:\Scripts\NETInfo.txt}

$NetSettings_info = {
   $ComputerName = $txt_ComputerName.Text
   $NetSettings = Get-CimInstance -Class Win32_NetworkAdapterConfiguration -ComputerName $ComputerName
   $lbl_sysinfo.Text = "Network Configuration Information - $(Get-Date)"
   $lbl_sysinfo.Text += $NetSettings | FL -Property Description,
                                                    DHCPEnabled, 
                                                    DHCPLeaseObtained,
                                                    DNSDomain,
                                                    DNSDomainSuffixSearchOrder,
                                                    DHCPServer,
                                                    DNSHostName,
                                                    DNSServerSearchOrder,
                                                    DomainDNSRegistrationEnabled,
                                                    FullDNSRegistrationEnabled,
                                                    IPEnabled,
                                                    IPAddress,
                                                    DefaultIPGateway,
                                                    IPSubnet,
                                                    MACAddress,
                                                    ServiceName | Out-String
	$lbl_sysinfo.Text | Out-File C:\Scripts\NetSetInfo.txt}

$Monitor_info = {
   $ComputerName = $txt_ComputerName.Text
   $Monitor = Get-CimInstance -Class Win32_DesktopMonitor -ComputerName $ComputerName
   $lbl_sysinfo.Text = "Monitors Information - $(Get-Date)"
   $lbl_sysinfo.Text += $Monitor | FL -Property DeviceID,
                                                Name,
                                                MonitorManufacturer,
                                                MonitorType,
                                                PixelsPerXLogicalInch,
                                                PixelPerYLogicalInch,
                                                ScreenHeight,
                                                ScreenWidth,
                                                Status | Out-String
	$lbl_sysinfo.Text | Out-File C:\Scripts\MonitorInfo.txt}

$OS_info = {
   $ComputerName = $txt_ComputerName.Text
   $OS = Get-CimInstance -Class Win32_OperatingSystem -ComputerName $ComputerName
   $lbl_sysinfo.Text = "Operating System Information - $(Get-Date)"
   $lbl_sysinfo.Text += $OS | FL -Property Name,
                                           Manufacturer,
                                           Caption,
                                           Version,
                                           MUILanguages,
                                           BuildNumber,
                                           BuildType,
                                           InstallDate,
                                           OSArchitecture,
                                           PortableOperatingSystem,
                                           Primary,
                                           BootDevice,
                                           LastBootUpTime,
                                           LocalDateTime,
                                           CurrentTimeZone,
                                           RegisteredUser,
                                           SerialNumber,
                                           SystemDevice,
                                           SystemDirectory,
                                           SystemDrive,
                                           WindowsDirectory,
                                           EncryptionLevel,
                                           FreePhysicalMemory,
                                           FreeSpaceInPagingFiles,
                                           FreeVirtualMemory,
                                           SizeStoredInPagingFiles,
                                           TotalVirtualMemorySize,
                                           TotalVisibleMemorySize,
                                           Status | Out-String
	$lbl_sysinfo.Text | Out-File C:\Scripts\OSInfo.txt}

$Keyboard_info = {
   $ComputerName = $txt_ComputerName.Text
   $Keyboard = Get-CimInstance -Class Win32_Keyboard -ComputerName $ComputerName
   $lbl_sysinfo.Text = "Keyboard Information - $(Get-Date)"
   $lbl_sysinfo.Text += $Keyboard | FL -Property Description,
                                                 Caption,
                                                 NumberOfFunctionKeys | Out-String
	$lbl_sysinfo.Text | Out-File C:\Scripts\KeyboardInfo.txt}

$Mouse_info = {
   $ComputerName = $txt_ComputerName.Text
   $Mouse = Get-CimInstance -Class Win32_PointingDevice -ComputerName $ComputerName
   $lbl_sysinfo.Text = "Pointing Device Information - $(Get-Date)"
   $lbl_sysinfo.Text += $Mouse | FL -Property Description,
                                              Name,
                                              HardwareType,
                                              Manufacturer | Out-String
	$lbl_sysinfo.Text | Out-File C:\Scripts\MouseInfo.txt}

$CDROM_info = {
   $ComputerName = $txt_ComputerName.Text
   $CDROM = Get-CimInstance -Class Win32_CDROMDrive -ComputerName $ComputerName
   $lbl_sysinfo.Text = "CD-ROM Drives Information - $(Get-Date)"
   $lbl_sysinfo.Text += $CDROM | FL -Property Drive,
                                              Name,
                                              Caption,
                                              Description,
                                              Manufacturer,
                                              MediaType,
                                              MfrAssignedRevisionLevel,
                                              CapabilityDescriptions,
                                              MediaLoaded | Out-String
	$lbl_sysinfo.Text | Out-File C:\Scripts\CDRInfo.txt}

$Sound_info = {
   $ComputerName = $txt_ComputerName.Text
   $Sound = Get-CimInstance -Class Win32_SoundDevice -ComputerName $ComputerName
   $lbl_sysinfo.Text = "Sound Devices Information - $(Get-Date)"
   $lbl_sysinfo.Text += $Sound | FL -Property DeviceID,
                                              Name,
                                              Manufacturer,
                                              ProductName | Out-String
	$lbl_sysinfo.Text | Out-File C:\Scripts\SoundInfo.txt}

$Printers_info = {
   $ComputerName = $txt_ComputerName.Text
   $Printers = Get-CimInstance -Class Win32_Printer -ComputerName $ComputerName
   $lbl_sysinfo.Text = "Printers Information - $(Get-Date)"
   $lbl_sysinfo.Text += $Printers | FL -Property DeviceID,
                                                 Name,
                                                 HorizontalResolution,
                                                 VerticalResolution,
                                                 Default,
                                                 DriverName,
                                                 Direct,
                                                 Network,
                                                 Local,
                                                 Hidden,
                                                 KeepPrintedJobs,
                                                 PrintJobDataType,
                                                 PrintProcessor,
                                                 PortName,
                                                 Shared,
                                                 ServerName,
                                                 SpoolEnabled,
                                                 WorkOffline,
                                                 CapabilityDescriptions,
                                                 Status | Out-String
	$lbl_sysinfo.Text | Out-File C:\Scripts\PrintInfo.txt}

$Fan_info = {
   $ComputerName = $txt_ComputerName.Text
   $Fan = Get-CimInstance -Class Win32_Fan -ComputerName $ComputerName
   $lbl_sysinfo.Text = "Fans Information - $(Get-Date)"
   $lbl_sysinfo.Text += $Fan | FL -Property Name,
                                            Caption,
                                            Description,
                                            InstallDate,
                                            ActiveCooling,
                                            DesiredSpeed,
                                            VariableSpeed | Out-String
	$lbl_sysinfo.Text | Out-File C:\Scripts\FanInfo.txt}

$Battery_info = {
   $ComputerName = $txt_ComputerName.Text
   $Battery = Get-CimInstance -Class Win32_Battery -ComputerName $ComputerName
   $lbl_sysinfo.Text = "Battery Information - $(Get-Date)"
   $lbl_sysinfo.Text += $Battery | FL -Property * | Out-String
	$lbl_sysinfo.Text | Out-File C:\Scripts\BatteryInfo.txt}

$PortBattery_info = {
   $ComputerName = $txt_ComputerName.Text
   $PortBattery = Get-CimInstance -Class Win32_PortableBattery -ComputerName $ComputerName
   $lbl_sysinfo.Text = "Portable Battery Information - $(Get-Date)"
   $lbl_sysinfo.Text = $PortBattery | FL -Property * | Out-String
	$lbl_sysinfo.Text | Out-File C:\Scripts\PBatInfo.txt}


$Process_info = {
   $ComputerName = $txt_ComputerName.Text
   $Process = Get-CimInstance -Class Win32_Process -ComputerName $ComputerName
   $lbl_sysinfo.Text = "Processes Information - $(Get-Date)"
   $lbl_sysinfo.Text += $Process | FL -Property ProcessName,
                                                Path,
                                                CreationDate | Out-String
	$lbl_sysinfo.Text | Out-File C:\Scripts\ProInfo.txt}

$Services_info = {
   $ComputerName = $txt_ComputerName.Text
   $Services = Get-CimInstance -Class Win32_Service -ComputerName $ComputerName
   $lbl_sysinfo.Text = "Services Information - $(Get-Date)"
   $lbl_sysinfo.Text += $Services | FL -Property Name,
                                                 DisplayName,
                                                 Description,
                                                 StartMode,
                                                 Started,
                                                 State,
                                                 PathName | Out-String
	$lbl_sysinfo.Text | Out-File C:\Scripts\ServInfo.txt}

$Ping_Test_info = {
   $ComputerName = $txt_ComputerName.Text

   If ($ComputerName -eq ""){
      $lbl_sysinfo.ForeColor = "Red"
      $lbl_sysinfo.Text = "Please provide a computer name to test the connection"}
   else {
      $Ping_Test = Test-Connection $ComputerName
      $lbl_sysinfo.Text = "Ping Test Information - $(Get-Date)"
      $lbl_sysinfo.Text += $Ping_Test | Out-String
	$lbl_sysinfo.Text | Out-File C:\Scripts\PingInfo.txt}}



Add-Type -AssemblyName System.Windows.Forms

$Font = New-Object System.Drawing.Font("Consolas",12,[System.Drawing.FontStyle]::Regular)

cat SystInfo.txt, BIOSInfo.txt, BatteryInfo.txt, CDRInfo.txt, CPUInfo.txt, FanInfo.txt, GPUInfo.txt, KeyboardInfo.txt, LDInfo.txt, MBInfo.txt, MonitorInfo.txt, MouseInfo.txt, NETInfo.txt, NetSetInfo.txt, OSInfo.txt, PBatInfo.txt, PDInfo.txt, PrintInfo.txt, ProInfo.txt, RAMInfo.txt, ServInfo.txt, SoundInfo.txt | sc examples.txt

$MainForm = New-Object System.Windows.Forms.Form
$MainForm.Text = "Computer Information"
$MainForm.Size = New-Object System.Drawing.Size(1200,800)
$MainForm.AutoScroll = $True
$MainForm.MinimizeBox = $True
$MainForm.MaximizeBox = $True
$MainForm.WindowState = "Normal"
$MainForm.SizeGripStyle = "Hide"
$MainForm.ShowInTaskbar = $True
$MainForm.Opacity = 1
$MainForm.StartPosition = "CenterScreen"
$MainForm.ShowInTaskbar = $True
$MainForm.Font = $Font

$lbl_ComputerName = New-Object System.Windows.Forms.Label
$lbl_ComputerName.Location = New-Object System.Drawing.Point(0,5)
$lbl_ComputerName.Size = New-Object System.Drawing.Size(150,20)
$lbl_ComputerName.Font = $Font
$lbl_ComputerName.Text = "Computer Name"
$MainForm.Controls.Add($lbl_ComputerName)


$lbl_sysinfo = New-Object System.Windows.Forms.Label
$lbl_sysinfo.Location = New-Object System.Drawing.Point(155,50)
$lbl_sysinfo.Size = New-Object System.Drawing.Size(500,500)
$lbl_sysinfo.AutoSize = $True
$lbl_sysinfo.Font = $Font
$lbl_sysinfo.Text = ""
$MainForm.Controls.Add($lbl_sysinfo)


$txt_ComputerName = New-Object System.Windows.Forms.TextBox
$txt_ComputerName.Location = New-Object System.Drawing.Point(150,5)
$txt_ComputerName.Size = New-Object System.Drawing.Size(200,20)
$txt_ComputerName.Font = $Font
$MainForm.Controls.Add($txt_ComputerName)

$btn_System = New-Object System.Windows.Forms.Button
$btn_System.Location = New-Object System.Drawing.Point(5,50)
$btn_System.Size = New-Object System.Drawing.Size(145,25)
$btn_System.Font = $Font
$btn_System.Text = "System"
$btn_System.Add_Click($System_info)
$MainForm.Controls.Add($btn_System)

$btn_BIOS = New-Object System.Windows.Forms.Button
$btn_BIOS.Location = New-Object System.Drawing.Point(5,75)
$btn_BIOS.Size = New-Object System.Drawing.Size(145,25)
$btn_BIOS.Font = $Font
$btn_BIOS.Text = "BIOS"
$btn_BIOS.Add_Click($bios_info)
$MainForm.Controls.Add($btn_BIOS)

$btn_CPU = New-Object System.Windows.Forms.Button
$btn_CPU.Location = New-Object System.Drawing.Point(5,100)
$btn_CPU.Size = New-Object System.Drawing.Size(145,25)
$btn_CPU.Font = $Font
$btn_CPU.Text = "CPU"
$btn_CPU.Add_Click($cpu_info)
$MainForm.Controls.Add($btn_CPU)

$btn_RAM = New-Object System.Windows.Forms.Button
$btn_RAM.Location = New-Object System.Drawing.Point(5,125)
$btn_RAM.Size = New-Object System.Drawing.Size(145,25)
$btn_RAM.Font = $Font
$btn_RAM.Text = "RAM"
$btn_RAM.Add_Click($ram_info)
$MainForm.Controls.Add($btn_RAM)

$btn_MB = New-Object System.Windows.Forms.Button
$btn_MB.Location = New-Object System.Drawing.Point(5,150)
$btn_MB.Size = New-Object System.Drawing.Size(145,25)
$btn_MB.Font = $Font
$btn_MB.Text = "Motherboard"
$btn_MB.Add_Click($mb_info)
$MainForm.Controls.Add($btn_MB)

$btn_PhysicalDrives = New-Object System.Windows.Forms.Button
$btn_PhysicalDrives.Location = New-Object System.Drawing.Point(5,175)
$btn_PhysicalDrives.Size = New-Object System.Drawing.Size(145,25)
$btn_PhysicalDrives.Font = $Font
$btn_PhysicalDrives.Text = "Physical Drives"
$btn_PhysicalDrives.Add_Click($PhysicalDrives_info)
$MainForm.Controls.Add($btn_PhysicalDrives)

$btn_LogicalDrives = New-Object System.Windows.Forms.Button
$btn_LogicalDrives.Location = New-Object System.Drawing.Point(5,200)
$btn_LogicalDrives.Size = New-Object System.Drawing.Size(145,25)
$btn_LogicalDrives.Font = $Font
$btn_LogicalDrives.Text = "Logical Drives"
$btn_LogicalDrives.Add_Click($LogicalDrives_info)
$MainForm.Controls.Add($btn_LogicalDrives)

$btn_Graphics = New-Object System.Windows.Forms.Button
$btn_Graphics.Location = New-Object System.Drawing.Point(5,225)
$btn_Graphics.Size = New-Object System.Drawing.Size(145,25)
$btn_Graphics.Font = $Font
$btn_Graphics.Text = "Graphics"
$btn_Graphics.Add_Click($GPU_info)
$MainForm.Controls.Add($btn_Graphics)

$btn_Network = New-Object System.Windows.Forms.Button
$btn_Network.Location = New-Object System.Drawing.Point(5,250)
$btn_Network.Size = New-Object System.Drawing.Size(145,25)
$btn_Network.Font = $Font
$btn_Network.Text = "Network"
$btn_Network.Add_Click($Network_info)
$MainForm.Controls.Add($btn_Network)

$btn_NetSettings = New-Object System.Windows.Forms.Button
$btn_NetSettings.Location = New-Object System.Drawing.Point(5,275)
$btn_NetSettings.Size = New-Object System.Drawing.Size(145,25)
$btn_NetSettings.Font = $Font
$btn_NetSettings.Text = "Net Settings"
$btn_NetSettings.Add_Click($NetSettings_info)
$MainForm.Controls.Add($btn_NetSettings)

$btn_Monitors = New-Object System.Windows.Forms.Button
$btn_Monitors.Location = New-Object System.Drawing.Point(5,300)
$btn_Monitors.Size = New-Object System.Drawing.Size(145,25)
$btn_Monitors.Font = $Font
$btn_Monitors.Text = "Monitors"
$btn_Monitors.Add_Click($Monitor_info)
$MainForm.Controls.Add($btn_Monitors)

$btn_OS = New-Object System.Windows.Forms.Button
$btn_OS.Location = New-Object System.Drawing.Point(5,325)
$btn_OS.Size = New-Object System.Drawing.Size(145,25)
$btn_OS.Font = $Font
$btn_OS.Text = "OS"
$btn_OS.Add_Click($OS_info)
$MainForm.Controls.Add($btn_OS)

$btn_Keyboard = New-Object System.Windows.Forms.Button
$btn_Keyboard.Location = New-Object System.Drawing.Point(5,350)
$btn_Keyboard.Size = New-Object System.Drawing.Size(145,25)
$btn_Keyboard.Font = $Font
$btn_Keyboard.Text = "Keyboard"
$btn_Keyboard.Add_Click($Keyboard_info)
$MainForm.Controls.Add($btn_Keyboard)

$btn_Mouse = New-Object System.Windows.Forms.Button
$btn_Mouse.Location = New-Object System.Drawing.Point(5,375)
$btn_Mouse.Size = New-Object System.Drawing.Size(145,25)
$btn_Mouse.Font = $Font
$btn_Mouse.Text = "Mouse"
$btn_Mouse.Add_Click($Mouse_info)
$MainForm.Controls.Add($btn_Mouse)

$btn_CDROM = New-Object System.Windows.Forms.Button
$btn_CDROM.Location = New-Object System.Drawing.Point(5,400)
$btn_CDROM.Size = New-Object System.Drawing.Size(145,25)
$btn_CDROM.Font = $Font
$btn_CDROM.Text = "CDROM"
$btn_CDROM.Add_Click($CDROM_info)
$MainForm.Controls.Add($btn_CDROM)

$btn_Sound = New-Object System.Windows.Forms.Button
$btn_Sound.Location = New-Object System.Drawing.Point(5,425)
$btn_Sound.Size = New-Object System.Drawing.Size(145,25)
$btn_Sound.Font = $Font
$btn_Sound.Text = "Sound"
$btn_Sound.Add_Click($Sound_info)
$MainForm.Controls.Add($btn_Sound)

$btn_Printers = New-Object System.Windows.Forms.Button
$btn_Printers.Location = New-Object System.Drawing.Point(5,450)
$btn_Printers.Size = New-Object System.Drawing.Size(145,25)
$btn_Printers.Font = $Font
$btn_Printers.Text = "Printers"
$btn_Printers.Add_Click($Printers_info)
$MainForm.Controls.Add($btn_Printers)

$btn_Fan = New-Object System.Windows.Forms.Button
$btn_Fan.Location = New-Object System.Drawing.Point(5,475)
$btn_Fan.Size = New-Object System.Drawing.Size(145,25)
$btn_Fan.Font = $Font
$btn_Fan.Text = "Fan"
$btn_Fan.Add_Click($Fan_info)
$MainForm.Controls.Add($btn_Fan)

$btn_Battery = New-Object System.Windows.Forms.Button
$btn_Battery.Location = New-Object System.Drawing.Point(5,500)
$btn_Battery.Size = New-Object System.Drawing.Size(145,25)
$btn_Battery.Font = $Font
$btn_Battery.Text = "Battery"
$btn_Battery.Add_Click($Battery_info)
$MainForm.Controls.Add($btn_Battery)

$btn_PortBattery = New-Object System.Windows.Forms.Button
$btn_PortBattery.Location = New-Object System.Drawing.Point(5,525)
$btn_PortBattery.Size = New-Object System.Drawing.Size(145,25)
$btn_PortBattery.Font = $Font
$btn_PortBattery.Text = "Port Battery"
$btn_PortBattery.Add_Click($PortBattery_info)
$MainForm.Controls.Add($btn_PortBattery)

$btn_Process = New-Object System.Windows.Forms.Button
$btn_Process.Location = New-Object System.Drawing.Point(5,575)
$btn_Process.Size = New-Object System.Drawing.Size(145,25)
$btn_Process.Font = $Font
$btn_Process.Text = "Process"
$btn_Process.Add_Click($Process_info)
$MainForm.Controls.Add($btn_Process)


$btn_Ping = New-Object System.Windows.Forms.Button
$btn_Ping.Location = New-Object System.Drawing.Point(5,625)
$btn_Ping.Size = New-Object System.Drawing.Size(145,25)
$btn_Ping.Font = $Font
$btn_Ping.Text = "Ping Test"
$btn_Ping.Add_Click($Ping_Test_info)
$MainForm.Controls.Add($btn_Ping)




$MainForm.ShowDialog()