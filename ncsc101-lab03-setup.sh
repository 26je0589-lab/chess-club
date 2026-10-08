#!/bin/bash
# =====================================================================
#  NCSC101 -- Introduction to Unix and Software Tools
#  Laboratory 03 : Streams, Pipes, find, and Counting
#  Dataset generator -- Dr. Pranay Kumar Saha, CSE, IIT (ISM) Dhanbad
#
#  USAGE :  bash ncsc101-lab03-setup.sh
#           Creates ~/lab03 and populates it. Safe to re-run: the
#           directory is wiped and rebuilt, so a student who mangles
#           the data can always start over.
#
#  DETERMINISM:
#           No use of awk's rand()/srand() anywhere.  mawk and gawk
#           seed and step their generators differently, so the same
#           script would produce different logs on different machines.
#           Instead a fixed linear congruential generator is written
#           out longhand.  Its constants are chosen so every product
#           stays below 2^53 and is therefore exact in IEEE doubles.
#           Result: byte-identical access.log on every machine.
# =====================================================================

set -u

ROOT="$HOME/lab03"

echo
echo "  NCSC101 Lab 03 -- building practice data in $ROOT"
echo

rm -rf "$ROOT"
mkdir -p "$ROOT"
cd "$ROOT" || exit 1

# ---------------------------------------------------------------------
#  1.  access.log  -- the main pipeline dataset
# ---------------------------------------------------------------------
awk '
BEGIN {
    # --- deterministic LCG (see header note) -------------------------
    seed = 20260812
    M    = 16777216          # 2^24
    A    = 1664525
    C    = 1013904223

    # --- eight visitors, deliberately lopsided -----------------------
    nip = 8
    ip[1]="10.14.2.31";   w[1]=170
    ip[2]="10.14.2.87";   w[2]=132
    ip[3]="192.168.4.19"; w[3]= 96
    ip[4]="10.14.9.5";    w[4]= 71
    ip[5]="172.16.0.44";  w[5]= 48
    ip[6]="192.168.4.71"; w[6]= 33
    ip[7]="10.14.2.104";  w[7]= 21
    ip[8]="172.16.0.9";   w[8]=  9

    tw = 0
    for (i = 1; i <= nip; i++) tw += w[i]

    # --- pages, also lopsided ----------------------------------------
    npg = 9
    pg[1]="/index.html";    pw[1]=150
    pg[2]="/courses.html";  pw[2]=104
    pg[3]="/images/logo.png"; pw[3]=88
    pg[4]="/faculty.html";  pw[4]= 63
    pg[5]="/admin";         pw[5]= 47
    pg[6]="/notices.pdf";   pw[6]= 35
    pg[7]="/style.css";     pw[7]= 26
    pg[8]="/library.html";  pw[8]= 15
    pg[9]="/old/apply.php"; pw[9]=  6

    tp = 0
    for (i = 1; i <= npg; i++) tp += pw[i]

    mon = "Aug"
    N   = 5000

    for (n = 1; n <= N; n++) {

        seed = (A*seed + C) % M;  r1 = seed/M
        seed = (A*seed + C) % M;  r2 = seed/M
        seed = (A*seed + C) % M;  r3 = seed/M
        seed = (A*seed + C) % M;  r4 = seed/M

        # pick visitor by weight
        t = r1 * tw; acc = 0; who = ip[nip]
        for (i = 1; i <= nip; i++) {
            acc += w[i]
            if (t < acc) { who = ip[i]; break }
        }

        # pick page by weight
        t = r2 * tp; acc = 0; what = pg[npg]
        for (i = 1; i <= npg; i++) {
            acc += pw[i]
            if (t < acc) { what = pg[i]; break }
        }

        # status: /admin and /old/apply.php fail far more often
        if (what == "/admin")           lim = 0.72
        else if (what == "/old/apply.php") lim = 0.55
        else                            lim = 0.06

        if (r3 < lim)            st = 404
        else if (r3 > 0.985)     st = 500
        else                     st = 200

        bytes = 400 + int(r4 * 8600)
        if (st != 200) bytes = int(bytes / 9)

        day = 1 + int((n - 1) * 14 / N)
        hh  = int(r1 * 24); mi = int(r2 * 60); ss = int(r3 * 60)

        printf "%s - - [%02d/%s/2026:%02d:%02d:%02d +0530] \"GET %s HTTP/1.1\" %d %d\n",
               who, day, mon, hh, mi, ss, what, st, bytes
    }
}' > access.log

# ---------------------------------------------------------------------
#  2.  noisy.sh  -- a command that writes to BOTH stdout and stderr
# ---------------------------------------------------------------------
cat > noisy.sh << 'EOF'
#!/bin/bash
# Pretends to be a backup tool. Ordinary progress goes to stdout;
# anything that went wrong goes to stderr. Two different streams,
# one terminal -- which is exactly why they look mixed together.
echo "backup started"
echo "cannot read /var/lib/secret: Permission denied" >&2
echo "copied 42 files"
echo "warning: disk is 91% full" >&2
echo "backup finished"
EOF
chmod +x noisy.sh

# ---------------------------------------------------------------------
#  3.  names.txt  -- small enough to check sort/uniq by eye
# ---------------------------------------------------------------------
cat > names.txt << 'EOF'
Ananya
Rahul
Ananya
Meera
Rahul
Ananya
Vikram
Meera
Ananya
Rahul
Ananya
Meera
Vikram
Rahul
Ananya
Farhan
Meera
Ananya
Rahul
Vikram
EOF

# ---------------------------------------------------------------------
#  4.  marks.csv  -- has a header row on purpose
# ---------------------------------------------------------------------
cat > marks.csv << 'EOF'
roll,name,branch,marks
23JE0101,Ananya,CSE,78
23JE0102,Rahul,ECE,64
23JE0103,Meera,CSE,91
23JE0104,Vikram,MIN,55
23JE0105,Farhan,ECE,83
23JE0106,Divya,CSE,72
23JE0107,Karan,MEC,47
23JE0108,Sneha,ECE,88
23JE0109,Arjun,CSE,69
23JE0110,Priya,MIN,95
EOF

# ---------------------------------------------------------------------
#  5.  archive/  -- a tree with depth, mixed types, mixed sizes
# ---------------------------------------------------------------------
mkdir -p archive/2024/logs archive/2024/data \
         archive/2025/logs archive/2025/data archive/2025/notes \
         archive/2025/notes/drafts archive/scratch \
         archive/incoming archive/incoming/sub

# helper: write a file of N lines deterministically
mkfile () {   # mkfile <path> <lines> <tag>
    awk -v n="$2" -v tag="$3" 'BEGIN{
        for (i = 1; i <= n; i++)
            printf "%s record %05d payload=%s\n", tag, i, "xxxxxxxxxxxxxxxxxxxxxxxx"
    }' > "$1"
}

mkfile archive/2024/logs/jan.log    120 JAN
mkfile archive/2024/logs/feb.log     80 FEB
mkfile archive/2024/logs/mar.log   1100 MAR      # big
mkfile archive/2024/data/q1.csv      60 Q1
mkfile archive/2025/logs/jan.log    140 JAN
mkfile archive/2025/logs/feb.log   1400 FEB      # big
mkfile archive/2025/logs/audit.log   35 AUD
mkfile archive/2025/data/q1.csv      90 Q1
mkfile archive/2025/data/q2.csv    1250 Q2       # big
# Sized deliberately between 10k and 20k: `-size +20` means 20 blocks
# of 512 bytes (10k), NOT 20 kilobytes. This file is the difference
# between the two, so a wrong unit gives a visibly wrong answer.
mkfile archive/2025/data/q3.csv     300 Q3       # ~15k
mkfile archive/2025/notes/todo.txt   25 TODO
mkfile archive/2025/notes/drafts/paper.txt 40 DRAFT
mkfile archive/scratch/tmp.txt       10 TMP
mkfile archive/scratch/old.log       55 OLD

# --- "just arrived": these keep today's date on purpose ---------------
# Deliberately NOT given a -d timestamp below, so their mtime is the
# moment setup ran. These are the files `-mtime -1` must find.
# None is named *.log and none is large, so Q8 and Q9 are unaffected.
mkfile archive/incoming/scan-a.csv       45 SCANA
mkfile archive/incoming/scan-b.csv       70 SCANB
mkfile archive/incoming/readme.txt       12 INBOX
mkfile archive/incoming/sub/scan-c.csv   30 SCANC

echo "reference file -- do not edit" > archive/marker.txt

# --- fixed timestamps: everything in 2025/ is newer than the marker --
touch -d "2024-06-15 10:00:00" archive/2024/logs/jan.log \
                               archive/2024/logs/feb.log \
                               archive/2024/logs/mar.log \
                               archive/2024/data/q1.csv \
                               archive/scratch/old.log \
                               archive/scratch/tmp.txt

touch -d "2026-03-01 09:00:00" archive/marker.txt

touch -d "2026-05-20 14:30:00" archive/2025/logs/jan.log \
                               archive/2025/logs/feb.log \
                               archive/2025/logs/audit.log \
                               archive/2025/data/q1.csv \
                               archive/2025/data/q2.csv \
                               archive/2025/data/q3.csv \
                               archive/2025/notes/todo.txt \
                               archive/2025/notes/drafts/paper.txt

# Everything under incoming/ is stamped with the current moment. This
# is what makes `-mtime -1` return a known answer -- and it is why the
# lab must be checked on the same day it is set up.
touch archive/incoming/scan-a.csv archive/incoming/scan-b.csv \
      archive/incoming/readme.txt archive/incoming/sub/scan-c.csv

# ---------------------------------------------------------------------
#  6.  answers/  -- where graded output goes
# ---------------------------------------------------------------------
mkdir -p answers

cat > README.txt << 'EOF'
NCSC101 Lab 03 -- Streams, Pipes, find, Counting
------------------------------------------------
  access.log    5000 web server requests
  noisy.sh      writes to stdout AND stderr
  names.txt     20 names, with repeats
  marks.csv     10 students (first line is a header)
  archive/      a directory tree to search with find
  archive/incoming/   files that arrived today
  answers/      put your q1.txt ... q10.txt here

Nothing here matters. Break it freely -- rebuild any time with
  bash ncsc101-lab03-setup.sh
EOF

# ---------------------------------------------------------------------
#  summary
# ---------------------------------------------------------------------
echo "  Done."
echo
printf '  %-18s %s\n' "access.log"  "$(wc -l < access.log) lines"
printf '  %-18s %s\n' "names.txt"   "$(wc -l < names.txt) lines"
printf '  %-18s %s\n' "marks.csv"   "$(wc -l < marks.csv) lines (1 header)"
printf '  %-18s %s\n' "archive/"    "$(find archive -type f | wc -l) files, $(find archive -type d | wc -l) directories"
printf '  %-18s %s\n' "  modified today" "$(find archive -type f -mtime -1 | wc -l) files"
echo
echo "  Top 3 visitors:"
cut -d' ' -f1 access.log | sort | uniq -c | sort -rn | head -3 | awk '{printf "    %6d  %s\n", $1, $2}'
echo
echo "  Start here:  cd $ROOT && ls"
echo
