SEMESTER="$HOME/university/00-bachelor-computer-science/05-semester/"
export SEMESTER

function md-to-pdf() {
        local author
        local date

        author="$(getent passwd "$USER" | cut -d: -f5 | cut -d, -f1)"
        date="$(date +%d.\ %B\ %Y)"
        pandoc -M author="$author" -M date="$date" -s -o $2 $1
}


COURSE=""
source senf


