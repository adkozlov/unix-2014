#!/usr/bin/perl
while (<>) {
    s/(?:\+?\d)?\(?(\d{3})\)?[\s-]?\d{3}[\s-]?\d{4}$/\1/;
    print;
}
