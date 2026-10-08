
#!/usr/bin/env bash
$ while read -r name score; do
if [[ "$score" -ge 50 ]]; then echo "$name passed"
else echo "$name failed";fi
done < marks.txt
