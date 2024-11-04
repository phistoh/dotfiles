function copy-wow-addon
    set --local addonname (basename (pwd))
    cp -r ~/Games/World\ of\ Warcraft/_retail_/Interface/AddOns/$addonname/ .
    echo $addonname
end
