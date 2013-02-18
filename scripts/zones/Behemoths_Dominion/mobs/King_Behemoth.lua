-----------------------------------
-- Area: Behemoth's Dominion
--  HNM: King Behemoth
-----------------------------------

require("scripts/globals/titles");

-----------------------------------
-- onMobEngaged Action
-----------------------------------

function onMobEngaged(mob,target)
	SetServerVariable("KingBehemoth_Engaged", os.time(t));
end;

-----------------------------------
-- onMobFight Action
-----------------------------------

function onMobFight(mob,target)

	-- Regain
	mob:addTP(15);

	-- Auto-regen
	if (mob:getHP() < mob:getMaxHP()) then
		mob:addHP(50);
	end

	if (mob:getBattleTime() % 60 == 0) then -- Check every minute to reduce load
		if(os.time(t) >= (GetServerVariable("KingBehemoth_Engaged") + 3600)) then
			mob:rageMode(); -- Stats = Stats * 10
		end
	end

end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, killer)

	killer:addTitle(BEHEMOTH_DETHRONER);
  
  -- Set King_Behemoth's Window Open Time
  wait = 72 * 3600
  SetServerVariable("[POP]King_Behemoth", os.time(t) + wait); -- 3 days
  
  -- Set Behemoth's spawnpoint and respawn time (21-24 hours)
  SetServerVariable("[PH]King_Behemoth", 0);
  DeterMob(17297440, false);
  UpdateNMSpawnPoint(17297440);
  SpawnMob(17297440, '', math.random((75600),(86400)));
  
end;