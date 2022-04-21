fullyr="$(date +%Y)"
yr="${fullyr: -2}"

MON="$(date +%m)"
dy="$(date +%d)"

notetoday="${MON}${dy}${yr} DN"

echo "SELECT body FROM notes WHERE title='${notetoday}'" | sqlite3 .config/database.sqlite

tyear=$(date -d "+1 days" "+%Y")
tyear="${tyear: -2}"

tmonth=$(date -d "+1 days" "+%m")
tday=$(date -d "+1 days" "+%d")
newnote="${tmonth}${tday}${tyear} DN"

echo $newnote