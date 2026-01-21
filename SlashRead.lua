local _, SRead = ...;

local L = SRead.L

local SlashRead = CreateFrame("Frame")
SlashRead:RegisterEvent("PLAYER_LOGIN")
SlashRead:RegisterEvent("ADDON_LOADED")
SlashRead:RegisterEvent("TAXIMAP_OPENED")
SlashRead:RegisterEvent("TAXIMAP_CLOSED")

SlashReadDB = SlashReadDB or {}

local function IsBusy()
	if C_InstanceEncounter and C_InstanceEncounter.IsEncounterInProgress and C_InstanceEncounter.IsEncounterInProgress() then
		return true
	end
	
	if UnitAffectingCombat("player") then 
		return true 
	end

	if UnitInVehicle("player") then
		return true
	end

	return false
end

local function StartReading(self)
	if self and type(self) == "table" and self.GetName then
		local frameName = self:GetName()
		if SlashReadDB[frameName] == false then 
			return 
		end
	end

	if IsBusy() then return end
	if C_ChatInfo and C_ChatInfo.PerformEmote then
		C_ChatInfo.PerformEmote("READ", nil, true);
	else
		DoEmote("READ", "player");
	end
end

local function StopReading()
	CancelEmote()
end

local function HookFrame(frameObject)
	if not frameObject then return end
	
	if frameObject.IsSlashReadHooked then return end
	frameObject.IsSlashReadHooked = true

	frameObject:HookScript("OnShow", StartReading)
	frameObject:HookScript("OnHide", StopReading)
end

local function ProcessFrameList(frameNameOrList)
	if type(frameNameOrList) == "table" then
		for _, name in pairs(frameNameOrList) do
			HookFrame(_G[name])
		end
	else
		HookFrame(_G[frameNameOrList])
	end
end

local StandardFrames = {
	"ItemTextFrame",
	"PVEFrame",
	"SpellBookFrame",
	"CharacterFrame",
	"VideoOptionsFrame",
	"InterfaceOptionsFrame",
	"HelpFrame",
	"MerchantFrame",
	"QuestLogPopupDetailFrame",
	"VoidStorageFrame", -- sometimes this loads late, but usually safe here
};

local LoadOnDemandAddons = {
	["Blizzard_AchievementUI"]    = "AchievementFrame",
	["Blizzard_ArchaeologyUI"]    = "ArchaeologyFrame",
	["Blizzard_ArtifactUI"]       = "ArtifactFrame",
	["Blizzard_AuctionUI"]        = "AuctionFrame",
	["Blizzard_BindingUI"]        = "KeyBindingFrame",
	["Blizzard_BlackMarketUI"]    = "BlackMarketFrame",
	["Blizzard_Calendar"]         = "CalendarFrame",
	["Blizzard_Collections"]      = "CollectionsJournal",
	["Blizzard_EncounterJournal"] = "EncounterJournal",
	["Blizzard_FlightMap"]        = "FlightMapFrame",
	["Blizzard_GuildUI"]          = "GuildFrame",
	["Blizzard_GuildBankUI"]      = "GuildBankFrame",
	["Blizzard_LookingForGuildUI"]= "LookingForGuildFrame",
	["Blizzard_MacroUI"]          = "MacroFrame",
	["Blizzard_OrderHallUI"]      = "OrderHallMissionFrame",
	["Blizzard_ObliterumUI"]      = "ObliterumForgeFrame",
	["Blizzard_QuestChoice"]      = "QuestChoiceFrame",
	["Blizzard_SocialUI"]         = "FriendsFrame",
	["Blizzard_StoreUI"]          = "StoreFrame",
	["Blizzard_TalentUI"]         = "PlayerTalentFrame",
	["Blizzard_TradeSkillUI"]     = "TradeSkillFrame",
	-- complex ones with multiple frames
	["Blizzard_GarrisonUI"]       = { 
		"GarrisonLandingPage", 
		"GarrisonMissionFrame", 
		"GarrisonShipyardFrame", 
		"GarrisonBuildingFrame" 
	},
};

local ThirdPartyAddons = {
	["WowLua"]                  = "WowLuaFrame",
	["totalRP3_Extended_Tools"] = "TRP3_ToolFrame",
	["totalRP3_Extended"]       = "TRP3_DocumentFrame",
	["Best_Quest"]              = "bestquestMain",
	["totalRP3"]                = { "TRP3_MainFrame", "TRP3_NPCTalk" },
	["Altoholic"]               = "AltoholicFrame",
	["FishingBuddy"]            = "FishingBuddyFrame",
	["RaidAchievement"]         = "PSFeamain1",
};

local function RegisterSettings()
	if not Settings or not Settings.RegisterVerticalLayoutCategory then return end

	local category = Settings.RegisterVerticalLayoutCategory("SlashRead")
	
	local function CreateFrameCheckbox(frameName, label, tooltip)
		if tooltip then
			tooltip = string.format(L["EnableSettingFor"], tooltip);
		else
			tooltip = string.format(L["EnableSettingFor"], label);
		end
		if SlashReadDB[frameName] == nil then SlashReadDB[frameName] = true end
		
		local setting = Settings.RegisterAddOnSetting(category, "SlashRead_" .. frameName, frameName, SlashReadDB, "boolean", label, true)
		Settings.CreateCheckbox(category, setting, tooltip)
	end

	local layout = SettingsPanel:GetLayout(category)
	layout:AddInitializer(CreateSettingsListSectionHeaderInitializer(L["StandardFrames"]))
	
	for _, frameName in pairs(StandardFrames) do
		CreateFrameCheckbox(frameName, frameName)
	end

	CreateFrameCheckbox("Taximap", "Flight Master Map", "Flight Master Map (Taximap)")

	layout:AddInitializer(CreateSettingsListSectionHeaderInitializer(L["BlizzardModules"]))

	local function ProcessSettingsList(list)
		for addonName, frameData in pairs(list) do
			if type(frameData) == "table" then
				for _, subFrameName in pairs(frameData) do
					CreateFrameCheckbox(subFrameName, subFrameName, subFrameName .. " (" .. addonName .. ")");
				end
			else
				CreateFrameCheckbox(frameData, frameData, frameData .. " (" .. addonName .. ")");
			end
		end
	end

	ProcessSettingsList(LoadOnDemandAddons)

	layout:AddInitializer(CreateSettingsListSectionHeaderInitializer(L["AddonFrames"]))

	ProcessSettingsList(ThirdPartyAddons)

	Settings.RegisterAddOnCategory(category)
end

SlashRead:SetScript("OnEvent", function(self, event, arg1)
	
	if event == "TAXIMAP_OPENED" then
		if not SlashReadDB["Taximap"] ~= false then -- this has to be inverted :^)
			StartReading();
		end
		return
	elseif event == "TAXIMAP_CLOSED" then
		StopReading();
		return
	end

	if event == "PLAYER_LOGIN" then
		RegisterSettings()

		for _, frameName in pairs(StandardFrames) do
			HookFrame(_G[frameName]);
		end
		
		for addonName, frameData in pairs(ThirdPartyAddons) do
			if C_AddOns.IsAddOnLoaded(addonName) then
				ProcessFrameList(frameData);
			end
		end
	end

	if event == "ADDON_LOADED" then
		local addonName = arg1
		
		if LoadOnDemandAddons[addonName] then
			ProcessFrameList(LoadOnDemandAddons[addonName]);
		end

		if ThirdPartyAddons[addonName] then
			ProcessFrameList(ThirdPartyAddons[addonName]);
		end
	end
end)