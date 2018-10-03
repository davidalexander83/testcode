class testcode {
  windowsfeature { 'telnet-client':
    ensure   => present,
  }
  registry_value { 'IE ESC Off Admins':
    ensure => present,
    path   => 'HKLM\\SOFTWARE\\Microsoft\\Active Setup\\Installed Components\\{A509B1A7-37EF-4b3f-8CFC-4F3A74704073}\\IsInstalled',
    type   => dword,
    data   => '00000000',
  }
  registry_value { 'IE ESC Off Users':
    ensure => present,
    path   => 'HKLM\\SOFTWARE\\Microsoft\\Active Setup\\Installed Components\\{A509B1A8-37EF-4b3f-8CFC-4F3A74704073}\\IsInstalled',
    type   => dword,
    data   => '00000000',
  }
  registry_value { 'Server Manager off':
    ensure => present,
    path   => 'HKLM\\SOFTWARE\\Microsoft\\ServerManager\\DoNotOpenServerManagerAtLogon',
    type   => dword,
    data   => '00000001',
  }
  include chocolatey
  package { 'googlechrome':
    ensure => latest,
  }
}
