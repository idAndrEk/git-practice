DATE=$(date +%Y-%m-%d)

DIR_NAME=$(basename "$1")

ARCHIVE_NAME="${DIR_NAME}_${DATE}.tar.gz"

if [ -d "$1" ]; then
echo "Директория "${DIR_NAME}" существует."
tar -czf "/home/user/$ARCHIVE_NAME" $1
else 
echo "Директория "${DIR_NAME}" не существует."
fi

#tar -czf "/home/user/$ARCHIVE_NAME" -C "$(dirname "$1")" "$(basename "$1")"
