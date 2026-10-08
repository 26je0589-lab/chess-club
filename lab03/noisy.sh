#!/bin/bash
# Pretends to be a backup tool. Ordinary progress goes to stdout;
# anything that went wrong goes to stderr. Two different streams,
# one terminal -- which is exactly why they look mixed together.
echo "backup started"
echo "cannot read /var/lib/secret: Permission denied" >&2
echo "copied 42 files"
echo "warning: disk is 91% full" >&2
echo "backup finished"
