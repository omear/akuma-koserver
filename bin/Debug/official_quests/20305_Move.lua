
local UserClass;
local QuestNum;
local Ret = 0;
local NPC =20305;

if EVENT == 165 then
   Nation = CheckNation(UID)
   if Nation == 1 then
      SelectMsg(UID, 2, -1, 4631, NPC, 10, 168);        
   else
      Capture = CheckMiddleStatueCapture(UID)
      if Capture == 1 then
         SelectMsg(UID, 2, -1, 4634, NPC, 4226, 169, 4227, 168);        
      else
         SelectMsg(UID, 2, -1, 4633, NPC, 10, 168);        
      end
   end
end

if EVENT == 168 then
   Ret = 1;
end

if EVENT == 169 then 
   MoveMiddleStatue(UID)
end
