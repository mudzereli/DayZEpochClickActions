//  DZE_CLICK_ACTIONS
//      This is where you register your right-click actions
//  FORMAT -- (no comma after last array entry)
//      [_classname,_text,_execute,_condition],
//  PARAMETERS
//  _classname  : the name of the class to click on 
//                  (example = "ItemBloodbag")
//  _text       : the text for the option that is displayed when right clicking on the item 
//                  (example = "Self Transfuse")
//  _execute    : compiled code to execute when the option is selected 
//                  (example = "execVM 'my\scripts\self_transfuse.sqf';")
//  _condition  : compiled code evaluated to determine whether or not the option is displayed
//                  (example = {true})
//  EXAMPLE -- see below for some simple examples
DZE_CLICK_ACTIONS = [
    ["M9SD","Remove Silencer","player removeWeapon 'M9SD';player addWeapon 'M9';  player selectWeapon 'M9';  player setVariable['HasM9Silencer',true,true];" ,"currentWeapon player == 'M9SD'"],
    ["M9"  ,"Add Silencer"   ,"player removeWeapon 'M9';  player addWeapon 'M9SD';player selectWeapon 'M9SD';player setVariable['HasM9Silencer',false,true];","currentWeapon player == 'M9' && player getVariable['HasM9Silencer',false]"],
    ["ItemGPS","Scan Nearby","if(isNil 'DZE_CLICK_ACTIONS_GPS_RANGE') then {DZE_CLICK_ACTIONS_GPS_RANGE = 1000;};cutText[format['Within %1 Meters: %2 AI/players, %3 zombies, %4 vehicles',DZE_CLICK_ACTIONS_GPS_RANGE,count (player nearEntities ['CAManBase',DZE_CLICK_ACTIONS_GPS_RANGE]),count (player nearEntities ['zZombie_Base',DZE_CLICK_ACTIONS_GPS_RANGE]),count (player nearEntities ['allVehicles',DZE_CLICK_ACTIONS_GPS_RANGE])],'PLAIN DOWN'];","true"],
    ["ItemGPS","Range Up"   ,"if(isNil 'DZE_CLICK_ACTIONS_GPS_RANGE') then {DZE_CLICK_ACTIONS_GPS_RANGE = 1000;};DZE_CLICK_ACTIONS_GPS_RANGE = (DZE_CLICK_ACTIONS_GPS_RANGE + 100) min 2500; cutText[format['GPS RANGE: %1',DZE_CLICK_ACTIONS_GPS_RANGE],'PLAIN DOWN'];","true"],
    ["ItemGPS","Range Down" ,"if(isNil 'DZE_CLICK_ACTIONS_GPS_RANGE') then {DZE_CLICK_ACTIONS_GPS_RANGE = 1000;};DZE_CLICK_ACTIONS_GPS_RANGE = (DZE_CLICK_ACTIONS_GPS_RANGE - 100) max 200;  cutText[format['GPS RANGE: %1',DZE_CLICK_ACTIONS_GPS_RANGE],'PLAIN DOWN'];","true"]
    ["ItemGPS","Toggle Map Marker","execVM 'overwrites\click_actions\examples\marker.sqf';","true"],
    ["ItemMap","Toggle Map Marker","execVM 'overwrites\click_actions\examples\marker.sqf';","true"]
];