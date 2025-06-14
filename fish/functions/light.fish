function light
    if not count $argv >/dev/null
        set --local all_on (curl -k -s https://huebridge.fritz.box/api/iEFeAPhtElmPFcHfsF2HI9vN5Ky1R4iPfd1DSQR1/lights/2/ | jq '.state.on')
        if [ $all_on = "false" ]
            light "on"
        else
            light "off"
        end
    else if [ $argv[1] = "on" ]
        curl -k -X PUT -H 'Content-Type: application/json' -d '{"on":true}' https://huebridge.fritz.box/api/iEFeAPhtElmPFcHfsF2HI9vN5Ky1R4iPfd1DSQR1/lights/2/state
    else if [ $argv[1] = "off" ]
        curl -k -X PUT -H 'Content-Type: application/json' -d '{"on":false}' https://huebridge.fritz.box/api/iEFeAPhtElmPFcHfsF2HI9vN5Ky1R4iPfd1DSQR1/lights/2/state
    else
        echo "Usage"
        echo "'light'     toggle lights"
        echo "'light on'  switch lights on"
        echo "'light off' switch lights off"
    end
end
