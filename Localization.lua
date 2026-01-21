local _, SRead = ...; -- Let's use the private table passed to every .lua 

local L = {}
SRead.L = L

local function defaultFunc(L, key)
 -- If this function was called, we have no localization for this key.
 -- We could complain loudly to allow localizers to see the error of their ways, 
 -- but, for now, just return the key as its own localization. This allows you to—avoid writing the default localization out explicitly.
 return key;
end
setmetatable(L, {__index=defaultFunc});

local LOCALE = GetLocale()

if LOCALE == "enUS" then
-- The EU English game client also
-- uses the US English locale code.
	L["EnableSettingFor"] = "Enable /read emote for %s"	
	L["StandardFrames"] = "Standard Frames"
	L["BlizzardModules"] = "Blizzard Modules"
	L["AddonFrames"] = "Addon Frames"

return end

if LOCALE == "esMX" then
-- Spanish translations go here
	L["EnableSettingFor"] = "Activar el gesto /leer para %s"
	L["StandardFrames"] = "Marcos estándar"
	L["BlizzardModules"] = "Módulos de Blizzard"
	L["AddonFrames"] = "Marcos de addons"

return end

if LOCALE == "esES" then
-- Spanish translations go here
	L["EnableSettingFor"] = "Activar el gesto /leer para %s"
	L["StandardFrames"] = "Marcos estándar"
	L["BlizzardModules"] = "Módulos de Blizzard"
	L["AddonFrames"] = "Marcos de addons"

return end

if LOCALE == "deDE" then
-- German translations go here
	L["EnableSettingFor"] = "Emote /lesen für %s aktivieren"
	L["StandardFrames"] = "Standardfenster"
	L["BlizzardModules"] = "Blizzard-Module"
	L["AddonFrames"] = "Addon-Fenster"

return end

if LOCALE == "frFR" then
-- French translations go here
	L["EnableSettingFor"] = "Activer l’emote /lire pour %s"
	L["StandardFrames"] = "Fenêtres standard"
	L["BlizzardModules"] = "Modules Blizzard"
	L["AddonFrames"] = "Fenêtres d’addons"

return end

if LOCALE == "itIT" then
-- French translations go here
	L["EnableSettingFor"] = "Abilita l’emote /leggi per %s"
	L["StandardFrames"] = "Riquadri standard"
	L["BlizzardModules"] = "Moduli Blizzard"
	L["AddonFrames"] = "Riquadri degli addon"

return end

if LOCALE == "ptBR" then
-- Brazilian Portuguese translations go here
	L["EnableSettingFor"] = "Ativar emote /ler para %s"
	L["StandardFrames"] = "Quadros padrão"
	L["BlizzardModules"] = "Módulos da Blizzard"
	L["AddonFrames"] = "Quadros de addons"

-- Note that the EU Portuguese WoW client also
-- uses the Brazilian Portuguese locale code.
return end

if LOCALE == "ruRU" then
-- Russian translations go here
	L["EnableSettingFor"] = "Включить эмоцию /читать для %s"
	L["StandardFrames"] = "Стандартные окна"
	L["BlizzardModules"] = "Модули Blizzard"
	L["AddonFrames"] = "Окна аддонов"

return end

if LOCALE == "koKR" then
-- Korean translations go here
	L["EnableSettingFor"] = "%s에 대해 /읽기 감정표현 사용"
	L["StandardFrames"] = "기본 창"
	L["BlizzardModules"] = "블리자드 모듈"
	L["AddonFrames"] = "애드온 창"

return end

if LOCALE == "zhCN" then
-- Simplified Chinese translations go here
	L["EnableSettingFor"] = "为 %s 启用 /阅读 表情"
	L["StandardFrames"] = "标准界面"
	L["BlizzardModules"] = "暴雪模块"
	L["AddonFrames"] = "插件界面"

return end

if LOCALE == "zhTW" then
-- Traditional Chinese translations go here
	L["EnableSettingFor"] = "為 %s 啟用 /閱讀 表情"
	L["StandardFrames"] = "標準介面"
	L["BlizzardModules"] = "暴雪模組"
	L["AddonFrames"] = "插件介面"

return end
