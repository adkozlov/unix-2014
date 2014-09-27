#!/usr/bin/perl
while (<>) {
    print if /([\da-f]{2}:){5}[\da-f]{2}/i;
}
