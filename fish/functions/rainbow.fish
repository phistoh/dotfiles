function rainbow
    if not count $argv >/dev/null
        echo "Usage"
        echo "'rainbow on'  switch infinity mirror rainbow on"
        echo "'rainbow off' switch infinity mirror rainbow off"
    else if [ $argv[1] = "on" ]
        curl http://infinitypi.fritz.box:8187/rainbow
    else if [ $argv[1] = "off" ]
        curl http://infinitypi.fritz.box:8187/off
    else
        echo "Usage"
        echo "'rainbow on'  switch infinity mirror rainbow on"
        echo "'rainbow off' switch infinity mirror rainbow off"
    end
end
