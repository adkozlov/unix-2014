#!/usr/bin/perl
while (<>) {
    print if /([^.])\.(wav|mp3|ogg)$/;
}
