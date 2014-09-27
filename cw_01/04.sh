#!/usr/bin/perl
while (<>) {
    print if /^[-+]?(\d*|\d{1,3}?(,\d{3})+)(\.\d+)?(e[-+]?\d+)?$/i;
}
