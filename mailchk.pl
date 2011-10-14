#!/usr/bin/perl

$mailaddress = $ARGV[0];
if (length($mailaddress) == 0) {
	print 'メールアドレスを入力してください';
	exit;

}

#$mail_pattern = '^[\w\.\-]+\@[\w\.\-]+\.[a-zA-Z]{2,4}$';
#$mail_pattern = '([\w\+\-]+)@([\w\+\-]+)\.([\w\+\-]+)';
#$mail_pattern = '[\w\.\-]+?@(?:[\w\-]+\.)+[\w\-]+';
#$mail_pattern = '^[\x01-\x7F]+@(([-a-z0-9]+\.)*[a-z]+|\[\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}\])';
#$mail_pattern = '^[a-zA-Z0-9_\.\-]+?@[A-Za-z0-9_\.\-]+$';

$mail_pattern = '^([a-z0-9_]|\-|\.|\+)+@(([a-z0-9_]|\-)+\.)+[a-z]{2,6}$';

if ($mailaddress !~ /$mail_pattern/) {
	print '無効なメールアドレスです';
	print "NG\n";
	exit;
}

print "OK\n";

exit(0);
