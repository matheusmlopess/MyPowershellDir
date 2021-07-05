Get-DnsClientServerAddress 

Get-NetAdapter

$Interface = Get-NetAdapter | % { Process { If ( $_.Status -eq "up" ) { $_.ifIndex } }};
$DNSset    = DNSsetSet-DNSClientServerAddress –interfaceIndex $intix –ServerAddresses ("1.1.1.1","8.8.8.8");

# with -noexit
#start-process powershell.exe -argument "-noexit -nologo -noprofile -command $DNSset" -verb runas 
#start-process powershell.exe -argument "-nologo -noprofile -command $DNSset; exit" -verb runas
 
start-process powershell.exe -argument " -nologo -noprofile -command $DNSset" -verb runas 

<#
CMD as Admin equals to "wmic nicconfig where (IPEnabled=TRUE) call SetDNSServerSearchOrder ('8.8.8.8', '8.8.4.4')"

    O método foi executado com êxito.
    Parâmetros de saída:
    instance of __PARAMETERS
    {
            ReturnValue = 0;
    };
#>