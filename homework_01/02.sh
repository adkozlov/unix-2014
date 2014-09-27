#!/bin/bash
script -qc cal | grep -E $'\e' | sed -E $'s/.*\e\[7m(.{2}).*/\\1/g' ; rm typescript
