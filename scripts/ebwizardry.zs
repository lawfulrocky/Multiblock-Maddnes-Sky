##########################################################################################
import crafttweaker.item.IItemStack;
import mods.botania.ManaInfusion;

print("==================== loading mods ebwizardry.zs ====================");
##########################################################################################

### REMOVE RECIPES ###
val itemstoRemove =
[
    <ebwizardry:arcane_workbench>,
    <ebwizardry:magic_wand>,
    <ebwizardry:novice_earth_wand>,
    <ebwizardry:novice_necromancy_wand>,
    <ebwizardry:novice_ice_wand>,
    <ebwizardry:novice_lightning_wand>,
    <ebwizardry:novice_sorcery_wand>,
    <ebwizardry:novice_healing_wand>,
    <ebwizardry:novice_fire_wand>,
]
 as IItemStack[];
for item in itemstoRemove {
	recipes.remove(item);
}
### Add recipes ###
recipes.addShaped(<ebwizardry:magic_wand>, [[null, null, <ebwizardry:magic_crystal>],[null, <contenttweaker:greatwood_handle>, null], [<minecraft:gold_nugget>, null, null]]);
recipes.addShaped(<ebwizardry:novice_earth_wand>, [[null, null, <ebwizardry:magic_crystal:5>],[null, <contenttweaker:greatwood_handle>, null], [<minecraft:gold_nugget>, null, null]]);
recipes.addShaped(<ebwizardry:novice_necromancy_wand>, [[null, null, <ebwizardry:magic_crystal:4>],[null, <contenttweaker:greatwood_handle>, null], [<minecraft:gold_nugget>, null, null]]);
recipes.addShaped(<ebwizardry:novice_ice_wand>, [[null, null, <ebwizardry:magic_crystal:2>],[null, <contenttweaker:greatwood_handle>, null], [<minecraft:gold_nugget>, null, null]]);
recipes.addShaped(<ebwizardry:novice_lightning_wand>, [[null, null, <ebwizardry:magic_crystal:3>],[null, <contenttweaker:greatwood_handle>, null], [<minecraft:gold_nugget>, null, null]]);
recipes.addShaped(<ebwizardry:novice_sorcery_wand>, [[null, null, <ebwizardry:magic_crystal:6>],[null, <contenttweaker:greatwood_handle>, null], [<minecraft:gold_nugget>, null, null]]);
recipes.addShaped(<ebwizardry:novice_healing_wand>, [[null, null, <ebwizardry:magic_crystal:7>],[null, <contenttweaker:greatwood_handle>, null], [<minecraft:gold_nugget>, null, null]]);
recipes.addShaped(<ebwizardry:novice_fire_wand>, [[null, null, <ebwizardry:magic_crystal:1>],[null, <contenttweaker:greatwood_handle>, null], [<minecraft:gold_nugget>, null, null]]);

recipes.addShaped(<ebwizardry:arcane_workbench>, [[<minecraft:gold_ingot>, <minecraft:carpet:10>, <minecraft:gold_ingot>],[<ebwizardry:magic_crystal>, <minecraft:lapis_block>, <ebwizardry:magic_crystal>], [<thaumcraft:stone_arcane_brick>, <thaumcraft:stone_arcane_brick>, <thaumcraft:stone_arcane_brick>]]);

ManaInfusion.addInfusion(<ebwizardry:grand_crystal>,<ebwizardry:magic_crystal>,250000);
<ebwizardry:grand_crystal>.addTooltip(format.aqua("Created by dropping a Magic Crystal into a Mana Pool at least 1/4 full"));


# [Stone of Transportation]*2 from [Emeradic Crystal Block][+3]
craft.remake(<ebwizardry:transportation_stone> * 2, ["pretty",
  "A E A",
  "M * M",
  "A E A"], {
  "A": <thaumcraft:stone_arcane>,           # Arcane Stone
  "E": <enderutilities:enderpart:15>,       # Ender Core (Basic)
  "M": <ebwizardry:medium_mana_flask>,      # Medium Mana Flask
  "*": <actuallyadditions:block_crystal:4>, # Emeradic Crystal Block
});

##########################################################################################
print("==================== end of mods ebwizardry.zs ====================");
