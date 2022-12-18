mongodump --archive --db="$1" | mongorestore --archive  --nsFrom="$1.*" --nsTo="$2.*"
mongo $1 --eval "db.dropDatabase()"
