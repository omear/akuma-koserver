local UserClass;
local QuestNum;
local Ret = 0;
local NPC=24433; --NPC ��ȣ 
local savenum = -1;

-----------------------------------------------------------
-- �� ����
-----------------------------------------------------------

-- if EVENT == 500 then
--    SelectMsg(UID, 2, savenum, 4704, NPC, 4238, 501, 4239, 502, 4240, 503, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
-- end


if EVENT == 500 then
   SelectMsg(UID, 9, savenum, 4704, NPC, 4070, 408, 10, 101, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

if EVENT == 502 then
   SelectMsg(UID, 9, savenum, 4704, NPC, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end

if EVENT == 503 then
   SelectMsg(UID, 9, savenum, 4704, NPC, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1);
end


-----------------------------------------------------------
-- �� ��
-----------------------------------------------------------
