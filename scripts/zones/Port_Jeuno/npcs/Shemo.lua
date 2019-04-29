-----------------------------------
-- Area: Port Jeuno
--  NPC: Shemo
-- Seal trader
-- !pos -55.077 0.000 11.302
-----------------------------------
local ID = require("scripts/zones/Port_Jeuno/IDs");
-----------------------------------

function onTrade(player,npc,trade)
	if ((trade:hasItemQty(1126,3))) then
		count = trade:getItemCount();
		Beastmensseal = trade:hasItemQty(1126,3);
		if (Beastmensseal == true and count == 3) then
		    player:tradeComplete();
			player:addItem(1127)
		end
	elseif ((trade:hasItemQty(1127,3))) then
		count = trade:getItemCount();
		Beastmensseal = trade:hasItemQty(1127,3);
		if (Beastmensseal == true and count == 3) then
		    player:tradeComplete();
			player:addItem(2955)
		end
	elseif ((trade:hasItemQty(2955,3))) then
		count = trade:getItemCount();
		Beastmensseal = trade:hasItemQty(2955,3);
		if (Beastmensseal == true and count == 3) then
		    player:tradeComplete();
			player:addItem(2956)
		end
	elseif ((trade:hasItemQty(2956,3))) then
		count = trade:getItemCount();
		Beastmensseal = trade:hasItemQty(2956,3);
		if (Beastmensseal == true and count == 3) then
		    player:tradeComplete();
			player:addItem(2957)
		end
	end
end; 