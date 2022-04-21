
fullyr="$(date +%Y)"
yr="${fullyr: -2}"

MON="$(date +%m)"
dy="$(date +%d)"

notetoday="${MON}${dy}${yr} DN"

echo "SELECT body FROM notes WHERE title='${notetoday}'" | sqlite3 .config/database.sqlite


