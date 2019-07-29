local EternalPalace = LibStub("AceAddon-3.0"):GetAddon("BestInSlotRedux"):NewModule("EternalPalace")
local EP = "EP"
function EternalPalace:OnEnable()
  local L = LibStub("AceLocale-3.0"):GetLocale("BestInSlotRedux")
  
  local palaceName = C_Map.GetMapInfo(1515).name
  self:RegisterExpansion("Battle for Azeroth", EXPANSION_NAME7)
  self:RegisterRaidTier("Battle for Azeroth", 80200, palaceName, PLAYER_DIFFICULTY1, PLAYER_DIFFICULTY2, PLAYER_DIFFICULTY6)
  self:RegisterRaidInstance(80200, EP, palaceName, {
    bonusids = {
      [1] = {3524},
      [2] = {3524},
      [3] = {3524}
    },
    difficultyconversion = {
      [1] = 3, --Raid Normal
      [2] = 5, --Raid Heroic
      [3] = 6, --Raid Mythic
    }
  })
  --------------------------------------------------
  ----- EternalPalace
  --------------------------------------------------

  -----------------------------------
  ----- Abyssal Commander
  -----------------------------------
  local bossName = EJ_GetEncounterInfo(2352)
  local lootTable = {
    168359,
    168273,
    168361,
    168345,
    168901,
    168903,
    168276,
    168386,
    168477,
    168387,
    168377,
    168306,
    168341,
    168390,
    168818,
    168371,
    168384,
    168905,
  }
  self:RegisterBossLoot(EP, lootTable, bossName)
  -----------------------------------
  ----- Blackwater Behemoth
  -----------------------------------
  local bossName = EJ_GetEncounterInfo(2347)
  local lootTable = {
    168389,
    168353,
    168397,
    168900,
    169304,
    168376,
    168343,
    168385,
    168373,
    169312,
    168885,
    168383,
    168362,
    168379,
    168342,
    169360,
  }
  self:RegisterBossLoot(EP, lootTable, bossName)
  -----------------------------------
  ----- Lady Ashvane
  -----------------------------------
  local bossName = EJ_GetEncounterInfo(2354)
  local lootTable = {
    168354,
    168870,
    168877,
    168347,
    169311,
    169310,
    168904,
    168883,
    168367,
    168335,
    169305,
    168876,
    168889,
    169358,
  }
  self:RegisterBossLoot(EP, lootTable, bossName)
  -----------------------------------
  ----- Orgozoa
  -----------------------------------
  local bossName = EJ_GetEncounterInfo(2351)
  local lootTable = {
    168346,
    168872,
    168274,
    168893,
    169309,
    168476,
    168339,
    169319,
    168899,
    168365,
    168604,
    168897,
    168894,
    168352,
    168875,
  }
  self:RegisterBossLoot(EP, lootTable, bossName)
  -----------------------------------
  ----- Radiance of Azshara
  -----------------------------------
  local bossName = EJ_GetEncounterInfo(2353)
  local lootTable = {
    168475,
    168478,
    168355,
    169313,
    168348,
    168336,
    168360,
    168388,
    168382,
    168375,
    168378,
    168380,
    168381,
    168372,
    168374,
    169694,
  }
  self:RegisterBossLoot(EP, lootTable, bossName)
  -----------------------------------
  ----- Za'Qul
  -----------------------------------
  local bossName = EJ_GetEncounterInfo(2349)
  local lootTable = {
    169307,
    168363,
    168337,
    168902,
    168884,
    169308,
    168301,
    169306,
    168391,
    169588,
    168882,
    168349,
    169362,
    168868,
  }
  self:RegisterBossLoot(EP, lootTable, bossName)

  -----------------------------------
  ----- Queen Azshara
  -----------------------------------
  local bossName = EJ_GetEncounterInfo(2361)
  local lootTable = {
    168874,
    168891,
    168888,
    168869,
    168887,
    168275,
    168880,
    168878,
    168873,
    168871,
    169314,
    169694,
    169348,
    168857,
    168538,
    168944,
  }
  self:RegisterBossLoot(EP, lootTable, bossName)

  -----------------------------------
  ----- Trash loot
  -----------------------------------
  local bossName = L["Trash Loot"]
  local lootTable = {
    ----Cloth----
    168602,
    169929,
    ----Leather----
    169931,
    ----Mail----
    169933,
    ----Plate----
    169936,
  }
  self:RegisterBossLoot(EP, lootTable, bossName)
end

function EternalPalace:InitializeZoneDetect(ZoneDetect)
  ZoneDetect:RegisterMapID(1515, EP)
  ZoneDetect:RegisterNPCID(155144, EP, 1) --Abyssal Commander
  ZoneDetect:RegisterNPCID(154986, EP, 2) --Blackwater Behemoth
  ZoneDetect:RegisterNPCID(153142, EP, 3) --Lady Ashvane
  ZoneDetect:RegisterNPCID(152128, EP, 4) --Orgozoa
  ZoneDetect:RegisterNPCID(152364, EP, 5) --Radiance of Azshara
  ZoneDetect:RegisterNPCID(152853, EP, 6) --Queen's Court
  ZoneDetect:RegisterNPCID(150859, EP, 7) --Za'Qul
  ZoneDetect:RegisterNPCID(155126, EP, 8) --Queen Azshara
end
