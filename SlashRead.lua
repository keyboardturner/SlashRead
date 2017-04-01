local SlashRead = CreateFrame("FRAME");
--SlashRead:RegisterEvent("BAG_OPEN")
--SlashRead:RegisterEvent("BAG_CLOSED")
SlashRead:RegisterEvent("TAXIMAP_OPENED")
SlashRead:RegisterEvent("TAXIMAP_CLOSED")
--SlashRead:RegisterEvent("TRANSMOGRIFY_OPEN")
--SlashRead:RegisterEvent("TRANSMOGRIFY_CLOSE")
--SlashRead:RegisterEvent("VOID_STORAGE_OPEN")
--SlashRead:RegisterEvent("VOID_STORAGE_CLOSE")

--This is essentially solely for the flight master at this point.
SlashRead:SetScript("OnEvent", function(self, event, ...)
	--This references Bag Items like Satchels, not the inventory.
	--[[elseif ( event == "BAG_OPEN" ) then
		DoEmote("READ", nil, true);
	elseif ( event == "BAG_CLOSED" ) then
		CancelEmote();]]
	if ( event == "TAXIMAP_OPENED" ) then
		DoEmote("READ", nil, true);
	elseif ( event == "TAXIMAP_CLOSED" ) then
		CancelEmote();
	end
end)

function SlashRead:OnEvent(event, addon)
	if addon == "Blizzard_AchievementUI" then
		AchievementFrame:HookScript("OnShow", function()
			DoEmote("READ", nil, true)
	end)
		
	AchievementFrame:HookScript("OnHide", CancelEmote)
	
	elseif addon == "Blizzard_ArchaeologyUI" then
		ArchaeologyFrame:HookScript("OnShow", function()
			DoEmote("READ", nil, true)
	end)
		
	ArchaeologyFrame:HookScript("OnHide", CancelEmote)
				
	elseif addon == "Blizzard_ArtifactUI" then
		ArtifactFrame:HookScript("OnShow", function()
			DoEmote("READ", nil, true)
	end)
		
	ArtifactFrame:HookScript("OnHide", CancelEmote)
	
	elseif addon == "Blizzard_AuctionUI" then
		AuctionFrame:HookScript("OnShow", function()
			DoEmote("READ", nil, true)
	end)
		
	AuctionFrame:HookScript("OnHide", CancelEmote)
		
	elseif addon == "Blizzard_BindingUI" then
		KeyBindingFrame:HookScript("OnShow", function()
			DoEmote("READ", nil, true)
	end)
		
	KeyBindingFrame:HookScript("OnHide", CancelEmote)
		
	elseif addon == "Blizzard_BlackMarketUI" then
		BlackMarketFrame:HookScript("OnShow", function()
			DoEmote("READ", nil, true)
	end)
		
	BlackMarketFrame:HookScript("OnHide", CancelEmote)
		
	elseif addon == "Blizzard_Calendar" then
		CalendarFrame:HookScript("OnShow", function()
			DoEmote("READ", nil, true)
	end)
		
	CalendarFrame:HookScript("OnHide", CancelEmote)
		
	elseif addon == "Blizzard_Collections" then
		CollectionsJournal:HookScript("OnShow", function()
			DoEmote("READ", nil, true)
	end)
		
	CollectionsJournal:HookScript("OnHide", CancelEmote)
		
	elseif addon == "Blizzard_EncounterJournal" then
		EncounterJournal:HookScript("OnShow", function()
			DoEmote("READ", nil, true)
	end)
		
	EncounterJournal:HookScript("OnHide", CancelEmote)
	
	elseif addon == "Blizzard_FlightMap" then
		FlightMapFrame:HookScript("OnShow", function()
			DoEmote("READ", nil, true)
	end)
		
	FlightMapFrame:HookScript("OnHide", CancelEmote)
		
	elseif addon == "Blizzard_GarrisonUI" then
		GarrisonLandingPage:HookScript("OnShow", function()
			DoEmote("READ", nil, true)
		end)
		GarrisonMissionFrame:HookScript("OnShow", function()
			DoEmote("READ", nil, true)
		end)
		GarrisonShipyardFrame:HookScript("OnShow", function()
			DoEmote("READ", nil, true)
		end)
		GarrisonBuildingFrame:HookScript("OnShow", function()
			DoEmote("READ", nil, true)
		end)
		
	GarrisonLandingPage:HookScript("OnHide", CancelEmote)
	GarrisonMissionFrame:HookScript("OnHide", CancelEmote)
	GarrisonShipyardFrame:HookScript("OnHide", CancelEmote)
	GarrisonBuildingFrame:HookScript("OnHide", CancelEmote)

		
	elseif addon == "Blizzard_GuildUI" then
		GuildFrame:HookScript("OnShow", function()
			DoEmote("READ", nil, true)
	end)
		
	GuildFrame:HookScript("OnHide", CancelEmote)
		
	elseif addon == "Blizzard_GuildBankUI" then
		GuildBankFrame:HookScript("OnShow", function()
			DoEmote("READ", nil, true)
	end)
		
	GuildBankFrame:HookScript("OnHide", CancelEmote)
		
	elseif addon == "Blizzard_LookingForGuildUI" then
		LookingForGuildFrame:HookScript("OnShow", function()
			DoEmote("READ", nil, true)
	end)
		
	LookingForGuildFrame:HookScript("OnHide", CancelEmote)
	
	elseif addon == "Blizzard_MacroUI" then
		MacroFrame:HookScript("OnShow", function()
			DoEmote("READ", nil, true)
	end)
		
	MacroFrame:HookScript("OnHide", CancelEmote)
		
	elseif addon == "Blizzard_OrderHallUI" then
		OrderHallMissionFrame:HookScript("OnShow", function()
			DoEmote("READ", nil, true)
	end)
		
	OrderHallMissionFrame:HookScript("OnHide", CancelEmote)
		
	elseif addon == "Blizzard_ObliterumUI" then
		ObliterumForgeFrame:HookScript("OnShow", function()
			DoEmote("READ", nil, true)
	end)
		
	ObliterumForgeFrame:HookScript("OnHide", CancelEmote)
		
	elseif addon == "Blizzard_QuestChoice" then
		QuestChoiceFrame:HookScript("OnShow", function()
			DoEmote("READ", nil, true)
	end)
		
	QuestChoiceFrame:HookScript("OnHide", CancelEmote)
	
	elseif addon == "Blizzard_SocialUI" then
		FriendsFrame:HookScript("OnShow", function()
			DoEmote("READ", nil, true)
	end)
		
	FriendsFrame:HookScript("OnHide", CancelEmote)
		
	elseif addon == "Blizzard_StoreUI" then
		StoreFrame:HookScript("OnShow", function()
			DoEmote("READ", nil, true)
	end)
		
	StoreFrame:HookScript("OnHide", CancelEmote)
		
	elseif addon == "Blizzard_TalentUI" then
		PlayerTalentFrame:HookScript("OnShow", function()
			DoEmote("READ", nil, true)
	end)
		
	PlayerTalentFrame:HookScript("OnHide", CancelEmote)
		
	elseif addon == "Blizzard_TradeSkillUI" then
		TradeSkillFrame:HookScript("OnShow", function()
			DoEmote("READ", nil, true)
	end)
		
	TradeSkillFrame:HookScript("OnHide", CancelEmote)
	
	--ADDONS--
	
	
	elseif addon == "totalRP3_Extended_Tools" then
		TRP3_ToolFrame:HookScript("OnShow", function()
			DoEmote("READ", nil, true)
	end)
		
	TRP3_ToolFrame:HookScript("OnHide", CancelEmote)	--this doesn't work for some reason?
	
	elseif addon == "totalRP3_Extended" then
		TRP3_DocumentFrame:HookScript("OnShow", function()
			DoEmote("READ", nil, true)
	end)
		
	TRP3_DocumentFrame:HookScript("OnHide", CancelEmote)
	
	elseif addon == "WowLua" then
		WowLuaFrame:HookScript("OnShow", function()
			DoEmote("READ", nil, true)
	end)
		
	WowLuaFrame:HookScript("OnHide", CancelEmote)

	--Still building compatibility
	--[[
	elseif addon == "MacroToolkit" then
		MacroToolkitFrame:HookScript("OnShow", function()
			DoEmote("READ", nil, true)
	end)
		
	MacroToolkitFrame:HookScript("OnHide", CancelEmote)
	
	elseif addon == "totalRP3" then
		TRP3_MainFrame:HookScript("OnShow", function()
			DoEmote("READ", nil, true)
	end)
		
	TRP3_MainFrame:HookScript("OnHide", CancelEmote)
	
	elseif addon == "totalRP3" then
		TRP3_SoundsHistoryFrame:HookScript("OnShow", function()
			DoEmote("READ", nil, true)
	end)
		
	TRP3_SoundsHistoryFrame:HookScript("OnHide", CancelEmote)
	
	elseif addon == "totalRP3" then
		TRP3_NPCTalk:HookScript("OnShow", function()
			DoEmote("READ", nil, true)
	end)
		
	TRP3_NPCTalk:HookScript("OnHide", CancelEmote)
	]]
	
		
	--If the other method doesn't work, use this method.
	--[[elseif addon == "Blizzard_VoidStorageUI" then
		VoidStorageFrame:HookScript("OnShow", function()
			DoEmote("READ", nil, true)
	end)
		
	VoidStorageFrame:HookScript("OnHide", CancelEmote)]]
	
	end
end

SlashRead:RegisterEvent("ADDON_LOADED")
SlashRead:SetScript("OnEvent", SlashRead.OnEvent)

local ReadITF = CreateFrame("Frame", ReadITF, ItemTextFrame)
ReadITF:SetPoint("CENTER")
ReadITF:SetScript("OnHide", function()
	CancelEmote();
end);
ReadITF:SetScript("OnShow", function()
	DoEmote("READ", nil, true);
end);

local ReadGFF = CreateFrame("Frame", ReadGFF, PVEFrame)
ReadGFF:SetPoint("CENTER")
ReadGFF:SetScript("OnHide", function()
	CancelEmote();
end);
ReadGFF:SetScript("OnShow", function()
	DoEmote("READ", nil, true);
end);

local ReadSB = CreateFrame("Frame", ReadSB, SpellBookFrame)
ReadSB:SetPoint("CENTER")
ReadSB:SetScript("OnHide", function()
	CancelEmote();
end);
ReadSB:SetScript("OnShow", function()
	DoEmote("READ", nil, true);
end);

local ReadFF = CreateFrame("Frame", ReadFF, FriendsFrame)
ReadFF:SetPoint("CENTER")
ReadFF:SetScript("OnHide", function()
	CancelEmote();
end);
ReadFF:SetScript("OnShow", function()
	DoEmote("READ", nil, true);
end);

local ReadCF = CreateFrame("Frame", ReadCF, CharacterFrame)
ReadCF:SetPoint("CENTER")
ReadCF:SetScript("OnHide", function()
	CancelEmote();
end);
ReadCF:SetScript("OnShow", function()
	DoEmote("READ", nil, true);
end);

local ReadTF = CreateFrame("Frame", ReadTF, TaxiFrame)
ReadTF:SetPoint("CENTER")
ReadTF:SetScript("OnHide", function()
	CancelEmote();
end);
ReadTF:SetScript("OnShow", function()
	DoEmote("READ", nil, true);
end);

local ReadVOF = CreateFrame("Frame", ReadVOF, VideoOptionsFrame)
ReadVOF:SetPoint("CENTER")
ReadVOF:SetScript("OnHide", function()
	CancelEmote();
end);
ReadVOF:SetScript("OnShow", function()
	DoEmote("READ", nil, true);
end);

local ReadIOF = CreateFrame("Frame", ReadIOF, InterfaceOptionsFrame)
ReadIOF:SetPoint("CENTER")
ReadIOF:SetScript("OnHide", function()
	CancelEmote();
end);
ReadIOF:SetScript("OnShow", function()
	DoEmote("READ", nil, true);
end);

local ReadSF = CreateFrame("Frame", ReadSF, SplashFrame)
ReadSF:SetPoint("CENTER")
ReadSF:SetScript("OnHide", function()
	CancelEmote();
end);
ReadSF:SetScript("OnShow", function()
	DoEmote("READ", nil, true);
end);

local ReadHF = CreateFrame("Frame", ReadHF, HelpFrame)
ReadHF:SetPoint("CENTER")
ReadHF:SetScript("OnHide", function()
	CancelEmote();
end);
ReadHF:SetScript("OnShow", function()
	DoEmote("READ", nil, true);
end);

local ReadMF = CreateFrame("Frame", ReadMF, MerchantFrame)
ReadMF:SetPoint("CENTER")
ReadMF:SetScript("OnHide", function()
	CancelEmote();
end);
ReadMF:SetScript("OnShow", function()
	DoEmote("READ", nil, true);
end);

local ReadQLPDF = CreateFrame("Frame", ReadQLPDF, QuestLogPopupDetailFrame)
ReadQLPDF:SetPoint("CENTER")
ReadQLPDF:SetScript("OnHide", function()
	CancelEmote();
end);
ReadQLPDF:SetScript("OnShow", function()
	DoEmote("READ", nil, true);
end);

local ReadOFF = CreateFrame("Frame", ReadOFF, ObliterumForgeFrame)
ReadOFF:SetPoint("CENTER")
ReadOFF:SetScript("OnHide", function()
	CancelEmote();
end);
ReadOFF:SetScript("OnShow", function()
	DoEmote("READ", nil, true);
end);

local ReadMacF = CreateFrame("Frame", ReadMacF, MacroFrame)
ReadMacF:SetPoint("CENTER")
ReadMacF:SetScript("OnHide", function()
	CancelEmote();
end);
ReadMacF:SetScript("OnShow", function()
	DoEmote("READ", nil, true);
end);

--ADDONS--

if IsAddOnLoaded("Best_Quest") == true then
	local ReadBestQuest = CreateFrame("Frame", ReadBestQuest, bestquestMain)
	ReadBestQuest:SetPoint("CENTER")
	ReadBestQuest:SetScript("OnHide", function()
		CancelEmote();
	end);
	ReadBestQuest:SetScript("OnShow", function()
		DoEmote("READ", nil, true);
	end);
end

if IsAddOnLoaded("totalRP3") == true then
	local ReadTRP3MF = CreateFrame("Frame", ReadTRP3MF, TRP3_MainFrame)
	ReadTRP3MF:SetPoint("CENTER")
	ReadTRP3MF:SetScript("OnHide", function()
		CancelEmote();
	end);
	ReadTRP3MF:SetScript("OnShow", function()
		DoEmote("READ", nil, true);
	end);
end

--does not work
--[[
if IsAddOnLoaded("totalRP3") == true then
	local ReadTRP3SHF = CreateFrame("Frame", ReadTRP3SHF, TRP3_SoundsHistoryFrame)
	ReadTRP3SHF:SetPoint("CENTER")
	ReadTRP3SHF:SetScript("OnHide", function()
		CancelEmote();
	end);
	ReadTRP3SHF:SetScript("OnShow", function()
		DoEmote("READ", nil, true);
	end);
end]]

if IsAddOnLoaded("totalRP3") == true then
	local ReadTRP3NPCT = CreateFrame("Frame", ReadTRP3NPCT, TRP3_NPCTalk)
	ReadTRP3NPCT:SetPoint("CENTER")
	ReadTRP3NPCT:SetScript("OnHide", function()
		CancelEmote();
	end);
	ReadTRP3NPCT:SetScript("OnShow", function()
		DoEmote("READ", nil, true);
	end);
end

--the same effect as above
--[[
if IsAddOnLoaded("totalRP3") == true then
	local ReadTRP3TF = CreateFrame("Frame", ReadTRP3TF, TRP3_ToolFrame)
	ReadTRP3TF:SetPoint("CENTER")
	ReadTRP3TF:SetScript("OnHide", function()
		CancelEmote();
	end);
	ReadTRP3TF:SetScript("OnShow", function()
		DoEmote("READ", nil, true);
	end);
end
]]

if IsAddOnLoaded("Altoholic") == true then
	local ReadAltoFrame = CreateFrame("Frame", ReadAltoFrame, AltoholicFrame)
	ReadAltoFrame:SetPoint("CENTER")
	ReadAltoFrame:SetScript("OnHide", function()
		CancelEmote();
	end);
	ReadAltoFrame:SetScript("OnShow", function()
		DoEmote("READ", nil, true);
	end);
end

if IsAddOnLoaded("FishingBuddy") == true then
	local ReadFishBud = CreateFrame("Frame", ReadFishBud, FishingBuddyFrame)
	ReadFishBud:SetPoint("CENTER")
	ReadFishBud:SetScript("OnHide", function()
		CancelEmote();
	end);
	ReadFishBud:SetScript("OnShow", function()
		DoEmote("READ", nil, true);
	end);
end
--[[
if IsAddOnLoaded("MacroToolkit") == true then
	local ReadMacTKF = CreateFrame("Frame", ReadMacTKF, MacroToolkitFrame)
	ReadMacTKF:SetPoint("CENTER")
	ReadMacTKF:SetScript("OnHide", function()
		CancelEmote();
	end);
	ReadMacTKF:SetScript("OnShow", function()
		DoEmote("READ", nil, true);
	end);
end
]]

if IsAddOnLoaded("RaidAchievement") == true then
	local ReadRaidAch = CreateFrame("Frame", ReadRaidAch, PSFeamain1)
	ReadRaidAch:SetPoint("CENTER")
	ReadRaidAch:SetScript("OnHide", function()
		CancelEmote();
	end);
	ReadRaidAch:SetScript("OnShow", function()
		DoEmote("READ", nil, true);
	end);
end

--[[
if IsAddOnLoaded("TradeSkillMaster") == true then
	local ReadTSM = CreateFrame("Frame", ReadTSM, TSMMainFrame1)
	ReadTSM:SetPoint("CENTER")
	ReadTSM:SetScript("OnHide", function()
		CancelEmote();
	end);
	ReadTSM:SetScript("OnShow", function()
		DoEmote("READ", nil, true);
	end);
end
]]


--only temporary usage since loading Blizzard_VoidStorageUI does not work.
local ReadVS = CreateFrame("Frame", ReadVS, VoidStorageFrame)
ReadVS:SetPoint("CENTER")
ReadVS:SetScript("OnHide", function()
	CancelEmote();
end);
ReadVS:SetScript("OnShow", function()
	DoEmote("READ", nil, true);
end);




--Does not work.
--[[local ReadWDF = CreateFrame("Frame", ReadWDF, WardrobeFrame)
ReadWDF:SetPoint("CENTER")
ReadWDF:SetScript("OnHide", function()
	CancelEmote();
end);
ReadWDF:SetScript("OnShow", function()
	DoEmote("READ", nil, true);
end);

local ReadOHTF = CreateFrame("Frame", ReadOHTF, OrderHallTalentFrame)
ReadOHTF:SetPoint("CENTER")
ReadOHTF:SetScript("OnHide", function()
	CancelEmote();
end);
ReadOHTF:SetScript("OnShow", function()
	DoEmote("READ", nil, true);
end);
]]