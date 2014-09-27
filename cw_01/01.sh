#!/usr/bin/perl
while (<>) {
    print if /^#([\da-f]{2})\1\1$/i;
}
