use strict;
use warnings;
use LWP::Simple; # get
use utf8; # for 'Wide character in print'
use feature 'unicode_strings';
binmode(STDIN, ':encoding(utf8)');
binmode(STDOUT, ':encoding(utf8)');
binmode(STDERR, ':encoding(utf8)');

sub printTheaterInform {
	foreach my $inUrl (@_) {
		#print '[debug] $inUrl = ' . $inUrl . "\n";
		# init
		my $doc = get $inUrl;
		my $docBak = $doc;
		my $title;
		my $name;
		# 戲院名稱
		# <span class="at21b">XXX</span>
		($title)=($doc =~ /\<span class="at21b"\>(.*)\<\/span\>/);
		print "【$title】\n";
		# 電影名稱
		# <a href="/movie/fsen32872750/">笑笑羊大電影</a> 
		while ($doc =~ /\<a href="\/movie\/\S+\/"\>\S+\<\/a\>/s) {
			# init
			my $tmp;
			my $time;

			($tmp, $name, $tmp)
				= ($doc =~ /\<a href="\/movie\/(\S+)\/"\>(\S+)\<\/a\>(.*)/s);
			#print '[debug] $name = ';
			print "- $name -\n";
			$doc = $tmp; # search 
			# 時間表
			#<UL>
			# 	<LI>10：20</LI><LI>14：35</LI><LI>18：55</LI><LI>21：15</LI>
			#</UL>
			#<UL>
			#	<LI>10：20
			#		</LI>
			#	<LI>14：35
			#		</LI>
			#</UL>
			if ( $doc =~ /\<LI\>(\S*(\s*\<\/LI\>\s*\<LI\>\S*\s*)*)+\s*\<\/LI\>/s ) {
				# <LI>(\S*(\s*</LI>\s*<LI>\S*\s*)*)+\s*</LI>
				($time)=($doc =~ /\<LI\>((\S*(\s*\<\/LI\>\s*\<LI\>\S*\s*)*)+)\s*\<\/LI\>/s);
				$time =~ s/[ \r\n\t]//g;
				$time =~ s/<\/LI><LI>/\n/g;
				print "$time\n";
			}
		}
		print "--- ### ---\n\n";
	}
}

package main;

my @url;
$url[0] = 'http://www.atmovies.com.tw/showtime/theater_t06608_a06.html'; # 台南國賓影城
$url[1] = 'http://www.atmovies.com.tw/showtime/theater_t06607_a06.html'; # 台南新光影城
$url[2] = 'http://www.atmovies.com.tw/showtime/theater_t06609_a06.html'; # 台南威秀影城

printTheaterInform( @url );
