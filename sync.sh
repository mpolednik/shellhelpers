if [ "$#" -ne 1 ]; then
    echo "Usage: $0 [user@]hostname"
    echo "\tsyncs ~/Projects/src to [user@]hostname:~/Projects/src"
    exit 1
fi

echo "Syncing project sources to development machine"

rsync -r --exclude=".vagrant" --delete ~/Projects/src $1:~/Projects/
