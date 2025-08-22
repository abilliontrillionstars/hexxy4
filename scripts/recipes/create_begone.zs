// removes full recipes
<recipetype:create:crushing>.removeAll();
<recipetype:create:milling>.removeAll();
<recipetype:create:sequenced_assembly>.removeAll();
<recipetype:create:haunting>.removeAll();
<recipetype:create:pressing>.removeAll();
<recipetype:create:mixing>.removeAll();
<recipetype:create:deploying>.removeAll();
<recipetype:create:sandpaper_polishing>.removeAll();
<recipetype:create:filling>.removeAll();
<recipetype:create:emptying>.removeAll();
<recipetype:create:compacting>.removeAll();
<recipetype:create:mechanical_crafting>.removeAll();

var air = <item:minecraft:air>;
var stick = <item:minecraft:stick>;
var alloy = <item:create:andesite_alloy>;
var glass = <tag:items:c:glass_blocks>;

// Adding recipes back in
stoneCutter.addRecipe("hex_rose_quartz", <item:create:polished_rose_quartz>, <item:create:rose_quartz>);

stoneCutter.addRecipe("hex_sheet_iron", <item:create:iron_sheet>, <item:minecraft:iron_ingot>);
stoneCutter.addRecipe("hex_sheet_gold", <item:create:golden_sheet>, <item:minecraft:gold_ingot>); //Why is it Golden, not Gold
stoneCutter.addRecipe("hex_sheet_copper", <item:create:copper_sheet>, <item:minecraft:copper_ingot>);
stoneCutter.addRecipe("hex_sheet_brass", <item:create:brass_sheet>, <item:create:brass_ingot>);

craftingTable.addShapeless("hex_brass_ingot", <item:create:brass_ingot>,
 [<item:minecraft:copper_ingot>, <item:create:zinc_ingot>]
);

craftingTable.addShapeless("hex_sturdy_sheet", <item:create:sturdy_sheet>,
 [<item:minecraft:obsidian>, <item:create:iron_sheet>]
);

craftingTable.addShapeless("hex_mek", <item:create:precision_mechanism>, 
 [<item:create:golden_sheet>, <item:create:cogwheel>, <item:create:large_cogwheel>]
);

// Foods!
craftingTable.addShapeless("hex_food_sweet_roll", <item:create:sweet_roll>, 
 [<item:minecraft:bread>, <item:minecraft:milk_bucket>]
);
craftingTable.addShapeless("hex_food_glazed_berries", <item:create:chocolate_glazed_berries>, //Werewolf Sim-
 [<item:create:bar_of_chocolate>, <item:minecraft:sweet_berries>]
);
craftingTable.addShapeless("hex_food_honey_apple", <item:create:honeyed_apple>,
 [<item:minecraft:honey_bottle>, <item:minecraft:apple>]
);
craftingTable.addShapeless("hex_food_chocolate", <item:create:chocolate_bucket>,
 [<item:minecraft:bucket>, <item:minecraft:cocoa_beans>, <item:minecraft:sugar>]
);
craftingTable.addShapeless("hex_food_chocolate_bar", <item:create:bar_of_chocolate>*4,
 [<item:create:chocolate_bucket>]
);

craftingTable.addShaped("hex_potato_cannon", <item:create:potato_cannon>, [ // Tight squeze
    [alloy, <item:create:precision_mechanism>, <item:create:copper_sheet>],
    [<item:minecraft:copper_ingot>, <item:minecraft:copper_ingot>, <item:create:copper_sheet>],
    [air, <item:create:copper_sheet>, <item:create:copper_sheet>]
]);
craftingTable.addShaped("hex_extendo_grip", <item:create:extendo_grip>, [
    [stick, stick, <item:create:brass_hand>],
    [stick, <item:create:precision_mechanism>, stick],
    [<item:create:brass_ingot>, stick, stick]
]);

craftingTable.addShaped("hex_crushing_wheel", <item:create:crushing_wheel>, [ //You get only 1, but it is cheaper
    [alloy, alloy, alloy],
    [alloy, <tag:items:c:stone>, alloy],
    [alloy, alloy, alloy]
]);
craftingTable.addShaped("hex_wand_of_symmetry", <item:create:wand_of_symmetry>, [ //Wands?? We only have Staves???
    [air, glass, <item:minecraft:ender_pearl>],
    [air, <item:create:brass_ingot>, glass],
    [<item:create:precision_mechanism>, air, air]
]);

craftingTable.addShapeless("hex_train_tracks_iron", <item:create:track>, 
 [<tag:items:create:sleepers>, <tag:items:c:iron_nuggets>, <tag:items:c:iron_nuggets>]
);
craftingTable.addShapeless("hex_train_tracks_zinc", <item:create:track>, 
 [<tag:items:create:sleepers>, <tag:items:c:zinc_nuggets>, <tag:items:c:zinc_nuggets>]
);



/*
    TODO, must figure out the following:

    TODO, remove the following:
    
    TODO, what about:
        - Haunted Bell
            - A simple block that is relitvly harmless
        - Keeping blocks that lose all of their recipes
*/




