function albumlist
    set --local py ~/Git/AlbumList-CLI/.venv/bin/python3
    $py ~/Git/AlbumList-CLI/albumlist-cli.py $argv
end
