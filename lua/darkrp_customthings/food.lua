--[[---------------------------------------------------------------------------
DarkRP custom food
---------------------------------------------------------------------------

This file contains your custom food.
This file should also contain food from DarkRP that you edited.

THIS WILL ONLY LOAD IF HUNGERMOD IS ENABLED IN darkrp_config/disabled_defaults.lua.
IT IS DISABLED BY DEFAULT.

Note: If you want to edit a default DarkRP food, first disable it in darkrp_config/disabled_defaults.lua
    Once you've done that, copy and paste the food item to this file and edit it.

The default food can be found here:
https://github.com/FPtje/DarkRP/blob/master/gamemode/modules/hungermod/sh_init.lua#L33

Add food under the following line:
---------------------------------------------------------------------------]]
DarkRP.createFood("Hotdog", {
    model = "models/foodnhouseholditems/hotdog.mdl",
    energy = 26,
    price = 50
})
DarkRP.createFood("Burger", {
    model = "models/foodnhouseholditems/burgersims2.mdl",
    energy = 45,
    price = 80
})
DarkRP.createFood("Doritos", {
    model = "models/foodnhouseholditems/chipsdoritos.mdl",
    energy = 11,
    price = 25
})
DarkRP.createFood("Chicken Wrap", {
    model = "models/foodnhouseholditems/chicken_wrap.mdl",
    energy = 37,
    price = 70
})
DarkRP.createFood("Pancakes", {
    model = "models/foodnhouseholditems/pancakes.mdl",
    energy = 79,
    price = 200
})
DarkRP.createFood("Watermelon", {
    model = "models/foodnhouseholditems/watermelon_slice.mdl",
    energy = 7,
    price = 10
})
DarkRP.createFood("Bleach", {
    model = "models/foodnhouseholditems/clorox.mdl",
    energy = -80,
    price = 50
})
DarkRP.createFood("Cake", {
    model = "models/foodnhouseholditems/cakeslice2.mdl",
    energy = 49,
    price = 100
})
DarkRP.createFood("Doughnut", {
    model = "models/foodnhouseholditems/donut.mdl",
    energy = 30,
    price = 60
})
DarkRP.createFood("Candy", {
    model = "models/foodnhouseholditems/toffifee.mdl",
    energy = 12,
    price = 10
})
DarkRP.createFood("Icecream", {
    model = "models/foodnhouseholditems/icecream.mdl",
    energy = 21,
    price = 25
})
DarkRP.createFood("McCombo", {
    model = "models/foodnhouseholditems/mcdmeal2.mdl",
    energy = 71,
    price = 200
})
DarkRP.createFood("Ketchup", {
    model = "models/foodnhouseholditems/mcdketchup.mdl",
    energy = 4,
    price = 5 
})
DarkRP.createFood("Soda", {
    model = "models/foodnhouseholditems/cola.mdl",
    energy = 15,
    price = 40 
})
DarkRP.createFood("Milk", {
    model = "models/foodnhouseholditems/milk2.mdl",
    energy = 22,
    price = 50 
})
