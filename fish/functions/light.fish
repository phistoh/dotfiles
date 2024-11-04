function light
    if not count $argv >/dev/null
        set --local all_on (curl -s http://huebridge.fritz.box/api/iEFeAPhtElmPFcHfsF2HI9vN5Ky1R4iPfd1DSQR1/groups/1/ | jq '.state.all_on')
        if [ $all_on = "false" ]
            light "on"
        else
            light "off"
        end
    else if [ $argv[1] = "on" ]
        curl -X PUT -H 'Content-Type: application/json' -d '{"on":true}' http://huebridge.fritz.box/api/iEFeAPhtElmPFcHfsF2HI9vN5Ky1R4iPfd1DSQR1/groups/1/action
    else if [ $argv[1] = "off" ]
        curl -X PUT -H 'Content-Type: application/json' -d '{"on":false}' http://huebridge.fritz.box/api/iEFeAPhtElmPFcHfsF2HI9vN5Ky1R4iPfd1DSQR1/groups/1/action
    else
        echo "Usage"
        echo "'light'     toggle lights"
        echo "'light on'  switch lights on"
        echo "'light off' switch lights off"
    end
end
