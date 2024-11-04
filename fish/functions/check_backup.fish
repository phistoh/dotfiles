function check_backup
    set --local backup_time (cat ~/Backups/last_sync.txt)
    set --local backup_epoch (date "+%s" -d $backup_time)
    set --local day_before_yesterday_epoch (date +%s -d "-2 days")
    if test $backup_epoch -le $day_before_yesterday_epoch
        echo "⚠️"
    else
        echo "✔️"
    end
end
