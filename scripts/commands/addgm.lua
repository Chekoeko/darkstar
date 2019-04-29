---------------------------------------------------------------------------------------------------
-- func: additem <itemId> <quantity> <aug1> <v1> <aug2> <v2> <aug3> <v3> <aug4> <v4> <trial>
-- desc: Adds an item to the GMs inventory.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 1,
    parameters = "iiiiiiiiiii"
};

function error(player, msg)
    player:PrintToPlayer(msg);
    player:PrintToPlayer("!additem <itemId> {quantity} {aug1} {v1} {aug2} {v2} {aug3} {v3} {aug4} {v4} {trial}");
end;

function onTrigger(player)
   player:addItem(13215)
   player:addItem(17326,99)
   player:addItem(17174)
   player:addItem(13606)
   player:addItem(12551)
   player:addItem(12807)
   player:addItem(13358,2)
   player:addItem(12679)
   player:addItem(13074)
   player:addItem(12935)
   player:addItem(12523)
   player:addItem(13505,3)
   player:addItem(1127)
   player:addItem(12332)
   player:addItem(16622)
   player:addItem(17644)
end