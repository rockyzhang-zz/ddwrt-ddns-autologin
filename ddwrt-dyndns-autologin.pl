#!/usr/bin/perl

use WWW::Mechanize;

my $mech = WWW::Mechanize->new();
my $url  = "https://account.dyn.com";

my $USERNAME = `nvram get ddns_username_buf`;
my $PASSWORD = `nvram get ddns_password_buf`;

$mech->add_header( User-agent => 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/27.0.1453.110 Safari/537.36');
$mech->get($url);

$result = $mech->submit_form(
    form_number => 1,
    fields      => {
        username => $USERNAME,
        password => $PASSWORD,
    }
);

