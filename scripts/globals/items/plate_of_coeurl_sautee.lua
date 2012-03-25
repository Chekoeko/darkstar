-----------------------------------------
-- ID: 4548
-- Item: plate_of_coeurl_sautee
-- Food Effect: 180Min, All Races
-----------------------------------------
-- Strength 5
-- Agility 1
-- Intelligence -2
-- Attack % 20
-- Attack Cap 75
-- Ranged ATT % 20
-- Ranged ATT Cap 75
-- Stun Resist 5
-----------------------------------------

require("scripts/globals/status");

-----------------------------------------
-- OnItemCheck
-----------------------------------------

function onItemCheck(target)
result = 0;
	if (target:hasStatusEffect(EFFECT_FOOD) == true) then
		result = 246;
	end
return result;
end;

-----------------------------------------
-- OnItemUse
-----------------------------------------

function onItemUse(target)
	target:addStatusEffect(EFFECT_FOOD,0,0,10800,4548);
end;

-----------------------------------------
-- onEffectGain Action
-----------------------------------------

function onEffectGain(target,effect)
	target:addMod(MOD_STR, 5);
	target:addMod(MOD_AGI, 1);
	target:addMod(MOD_INT, -2);
	target:addMod(MOD_FOOD_ATTP, 20);
	target:addMod(MOD_FOOD_ATT_CAP, 75);
	target:addMod(MOD_FOOD_RATTP, 20);
	target:addMod(MOD_FOOD_RATT_CAP, 75);
	target:addMod(MOD_STUNRES, 5);
end;

-----------------------------------------
-- onEffectLose Action
-----------------------------------------

function onEffectLose(target,effect)
	target:delMod(MOD_STR, 5);
	target:delMod(MOD_AGI, 1);
	target:delMod(MOD_INT, -2);
	target:delMod(MOD_FOOD_ATTP, 20);
	target:delMod(MOD_FOOD_ATT_CAP, 75);
	target:delMod(MOD_FOOD_RATTP, 20);
	target:delMod(MOD_FOOD_RATT_CAP, 75);
	target:delMod(MOD_STUNRES, 5);
end;
