local QuestNum;
local Ret = 0;
local NPC = 24414;

if EVENT == 190 then
   QuestNum = SearchQuest(UID, NPC);
   if QuestNum == 0 then
   SelectMsg(UID, 2, -1, 3003, NPC, 10, 193);
   elseif QuestNum > 1 and  QuestNum < 100 then
   NpcMsg(UID, 3200, NPC)
   else
   EVENT = QuestNum
   end
end

if EVENT == 193 then
   Ret = 1;
end

if EVENT == 195 then
   SelectMsg(UID, 1, 305, 3001, NPC, 28, 196);
end

if EVENT == 196 then
   ShowMap(UID, 334);
   SaveEvent(UID, 3053);
end

if EVENT == 197 then
   SelectMsg(UID, 1, 305, 3002, NPC, 28, 196);
end

if EVENT == 200 then -- 25 Level Zombie Eye
   SelectMsg(UID, 2, 305, 3201, NPC, 10, 201);
end

if EVENT == 201 then
   SelectMsg(UID, 4, 305, 3202, NPC, 22, 202, 23, 193);
end

if EVENT == 202 then
   SaveEvent(UID, 3054);
end

local NATION = 0;

if EVENT == 205 then
   SaveEvent(UID, 3056);
   NATION = CheckNation(UID);
   if NATION == 1 then
   SelectMsg(UID, 1, 305, 3005, NPC, 3009, 193);
   else
   SelectMsg(UID, 1, 305, 3006, NPC, 3009, 193);
   end
end

local ITEM_COUNT=0;

if EVENT == 210 then
   ITEM_COUNT = HowmuchItem(UID, 379044000);
   if ITEM_COUNT < 3 then
   SelectMsg(UID, 2, 305, 3203, NPC, 18, 213);
   else
   SelectMsg(UID, 4, 305, 3204, NPC, 41, 214, 27, 193);
   end
end

if EVENT == 213 then
   ShowMap(UID, 22);
end

if EVENT == 214 then
   RobItem(UID, 379044000, 3)
   ExpChange(UID, 45000)
   GoldGain(UID, 150000)
   SaveEvent(UID, 3055);   
end

if EVENT == 250 then
   SelectMsg(UID, 1, 328, 170, NPC, 24, 251);
end

if EVENT == 251 then
   ShowMap(UID, 334);
   SaveEvent(UID, 7012);
end

if EVENT == 252 then
   SelectMsg(UID, 2, 328, 172, NPC, 24, 251);
end

if EVENT == 300 then -- 25 Level Rotten Eyes
   SelectMsg(UID, 2, 328, 3205, NPC, 3006, 308, 13, 193);
end

if EVENT == 308 then
   SelectMsg(UID, 2, 328, 3206, NPC, 3000, 301);
end

local MonsterSub = 0;

if EVENT == 301 then
   MonsterSub = ExistMonsterQuestSub(UID);
   if MonsterSub == 0 then
   SelectMsg(UID, 4, 328, 3207, NPC, 22, 302, 23, 309);
   else
   SelectMsg(UID, 2, 328, 173, NPC, 10, 193);
   end
end

if EVENT == 302 then
   SaveEvent(UID, 7013);
end

if EVENT == 309 then
   SaveEvent(UID, 7016);
end

if EVENT == 303 then
   SaveEvent(UID, 7015);
   NATION = CheckNation(UID);
   if NATION == 1 then
   SelectMsg(UID, 1, 328, 3851, NPC, 3003, 193);
   elseif NATION == 2 then
   SelectMsg(UID, 1, 328, 3852, NPC, 3003, 193);
   end
end

local MonsterCount = 0;

if EVENT == 305 then
   MonsterCount  = CountMonsterQuestSub(UID, 831, 1);
   if MonsterCount > 5 then
   SelectMsg(UID, 2, 328, 3210, NPC, 10, 306);
   else
   SelectMsg(UID, 4, 328, 3211, NPC, 41, 307, 27, 193);
   end
end

if EVENT == 306 then
   ShowMap(UID, 22);
end

if EVENT == 307 then
   ExpChange(UID, 50000)
   SaveEvent(UID, 7014);   
end
