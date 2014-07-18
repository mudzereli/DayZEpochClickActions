#DayZ Custom Right Click Actions 3.0.3

This script lets you easily add right click actions to items on your server. 

Here is a screen shot showing some example right-click actions that are added to a GPS through the configuration.

![GPS Right-Click](https://dl.dropboxusercontent.com/u/39416623/pics/gps_rc.png "GPS Right-Click")

The examples that are included (GPS Scan and Self Map Marker) are included as examples but do actually work so feel free to use them or remove them by taking them out of the config.

The point of this script, however, is to allow users to easily add their own custom actions, so [see below for that](#custom-actions).

-----

##Installation

**skip this if you already have the [deploy anything](https://github.com/mudzereli/DayZEpochDeployableBike "deploy anything") or [safe suicide](https://github.com/mudzereli/DayZEpochSuicide "safe suicide") scripts** (but make sure they are up to date)

1) [download the click actions script](https://github.com/mudzereli/DayZEpochClickActions/archive/master.zip "download")

2) copy only the **overwrites** folder from the download file to the **root of your mission file/pbo**

    - if you don't have this file and are using deploy/suicide then you need to update your deploy and suicide scripts

4) find this line in your **init.sqf** (**warning**: if you have a custom compiles file, find that line instead of the one below!)

```call compile preprocessFileLineNumbers "\z\addons\dayz_code\init\compiles.sqf";```


5) place this line directly after the line you found

```call compile preprocessFileLineNumbers "overwrites\click_actions\init.sqf";```

-----

##Change Log

version | change
--------|-------
3.0.3   | update to prevent map marker causing people to get kicked for script restriction
3.0.2   | default config update
3.0.1   | better conflict handling when already loaded
3.0.0   | github release

-----

##Custom Actions

1) open **overwrites\click_actions\config.sqf** 

2) edit the **DZE_CLICK_ACTIONS** array to add your actions

**FORMAT** -- (note no comma after last array entry)

```
DZE_CLICK_ACTIONS = [
    [_classname,_text,_execute,_condition],
    [_classname,_text,_execute,_condition],
    [...more stuff here...]
];
```

 parameter  | description                                                                | example
------------|----------------------------------------------------------------------------|---------
_classname  | the name of the class to click on                                          | "ItemBloodbag"
_text       | the text for the option that is displayed when right clicking on the item  | "Self Transfuse"
_execute    | string to execute when the option is selected                              | "execVM 'my\scripts\self_transfuse.sqf';"
_condition  | string to evaluate to determine whether or not the option is displayed     | "true"

*note: if you are having trouble getting the click actions to show up and are using my [deploy anything](https://github.com/mudzereli/DayZEpochDeployableBike "deploy anything") or [safe suicide](https://github.com/mudzereli/DayZEpochSuicide "safe suicide") scripts -- make sure they are up to date!!