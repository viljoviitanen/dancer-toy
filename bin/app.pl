#!/usr/bin/perl
#minimal jquery/dancer demo
#public domain, see file UNLICENSE
 
use Dancer;
set serializer => 'JSON';
 
get '/' => sub {
    send_file '/index.html';
};
 
get '/buttons' => sub {
    [int rand 10,int rand 10,int rand 10];
};
 
post '/buttons' => sub {
    my $a=params->{'foo'};
    { 'bar' => 2*$a };
};
 
Dancer->dance;
