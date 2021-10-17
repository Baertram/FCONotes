-----------------------------------------------------------------
--FCONotes.lua
--Author: Baertram
--[[
Write your own notes for friends, ignored players and guild mates]]
------------------------------------------------------------------

local LAMFCONotes = LibAddonMenu2

local addonVars = {}
local addonName = "FCONotes"
addonVars.addonNameMenu			= "FCO Notes"
addonVars.savedVariablesName	= "FCONotes_Settings"
addonVars.addonNameMenuDisplay	= "|c00FF00FCO |cFFFF00Notes|r"
addonVars.addonAuthor 			= '|cFFFF00Baertram|r'
addonVars.addonVersion		   	= 0.01 -- Version for the SavedVariables. Changing this will create TOTALY NEW SavedVariables!
addonVars.addonVersionOptions 	= '0.1.4'
addonVars.addonVersionOptionsNumber = 0.14

FCONotes = {}
FCONotes.version = addonVars.addonVersionOptions
FCONotes.svLoaded = false

local preventerVars = {}
preventerVars.gLocalizationDone     		= false
preventerVars.KeyBindingTexts	    		= false
preventerVars.lastGuildId           		= -1
preventerVars.doBackupGuildNotes    		= false
preventerVars.addonLoaded           		= false
preventerVars.guildHomeSceneFirstRun		= true
--preventerVars.inHudScene            		  = false
preventerVars.dontChangeSceneVar			= false
preventerVars.sceneButtonsPreHook   		= false
preventerVars.sceneButtonsHeraldricPreHook	= false
preventerVars.buttonPressed					= false

local guildRosterVars = {}
guildRosterVars.lastGuildRosterRowControl = nil
guildRosterVars.firstCall                 = true
guildRosterVars.scene                     = nil

local settingsVars				= {}
settingsVars.settings 			= {}
settingsVars.settings.personalGuildNotes = {}
settingsVars.defaultSettings	= {}

local localizationVars = {}

local keystripVars = {}
keystripVars.GuildRosterAddPersonalNote = {}

local zosVars = {}
zosVars.guildRosterList     = ZO_GuildRosterList

local textureVars = {}
textureVars.size   = 32
textureVars.MARKER_TEXTURES = {
    [1]  = [[/esoui/art/campaign/campaignbrowser_fullpop.dds]],
    [2]  = [[/esoui/art/inventory/inventory_tabicon_armor_disabled.dds]],
    [3]  = [[/esoui/art/crafting/smithing_tabicon_research_disabled.dds]],
    [4]  = [[/esoui/art/tradinghouse/tradinghouse_sell_tabicon_disabled.dds]],
    [5]  = [[/esoui/art/campaign/overview_indexicon_bonus_disabled.dds]],
    [6]  = [[/esoui/art/ava/tabicon_bg_score_disabled.dds]],
    [7]  = [[/esoui/art/guild/guild_rankicon_leader_large.dds]],
    [8]  = [[/esoui/art/lfg/lfg_healer_up.dds]],
    [9]  = [[/esoui/art/mounts/timer_icon.dds]],
    [10] = [[/esoui/art/crafting/alchemy_tabicon_solvent_up.dds]],
    [11] = [[/esoui/art/buttons/cancel_up.dds]],
    [12] = [[/esoui/art/buttons/info_up.dds]],
    [13] = [[/esoui/art/buttons/pinned_normal.dds]],
    [14] = [[/esoui/art/cadwell/cadwell_indexicon_gold_up.dds]],
    [15] = [[/esoui/art/cadwell/cadwell_indexicon_silver_up.dds]],
    [16] = [[/esoui/art/campaign/campaignbonus_keepicon.dds]],
    [17] = [[/esoui/art/icons/scroll_005.dds]],
    [18] = [[/esoui/art/campaign/campaignbrowser_columnheader_ad.dds]],
    [19] = [[/esoui/art/campaign/campaignbrowser_columnheader_dc.dds]],
    [20] = [[/esoui/art/campaign/campaignbrowser_columnheader_ep.dds]],
    [21] = [[/esoui/art/campaign/campaignbrowser_guild.dds]],
    [22] = [[/esoui/art/campaign/campaignbrowser_indexicon_normal_up.dds]],
    [23] = [[/esoui/art/campaign/overview_indexicon_scoring_up.dds]],
    [24] = [[/esoui/art/charactercreate/charactercreate_bodyicon_up.dds]],
    [25] = [[/esoui/art/characterwindow/gearslot_offhand.dds]],
    [26] = [[/esoui/art/characterwindow/gearslot_mainhand.dds]],
    [27] = [[/esoui/art/characterwindow/gearslot_costume.dds]],
    [28] = [[/esoui/art/chatwindow/chat_mail_up.dds]],
    [29] = [[/esoui/art/chatwindow/chat_notification_up.dds]],
    [30] = [[/esoui/art/crafting/alchemy_tabicon_reagent_up.dds]],
    [31] = [[/esoui/art/crafting/smithing_tabicon_refine_up.dds]],
    [32] = [[/esoui/art/deathrecap/deathrecap_killingblow_icon.dds]],
    [33] = [[/esoui/art/fishing/bait_emptyslot.dds]],
    [34] = [[/esoui/art/guild/guildhistory_indexicon_guildbank_up.dds]],
    [35] = [[/esoui/art/guild/guild_indexicon_member_up.dds]],
    [36] = [[/esoui/art/guild/tabicon_roster_up.dds]],
    [37] = [[/esoui/art/icons/poi/poi_dungeon_complete.dds]],
    [38] = [[/esoui/art/icons/poi/poi_groupinstance_complete.dds]],
    [39] = [[/esoui/art/icons/servicemappins/servicepin_magesguild.dds]],
    [40] = [[/esoui/art/icons/servicemappins/servicepin_fightersguild.dds]],
    [41] = [[/esoui/art/lfg/lfg_dps_up.dds]],
    [42] = [[/esoui/art/lfg/lfg_leader_icon.dds]],
    [43] = [[/esoui/art/lfg/lfg_tank_up.dds]],
    [44] = [[/esoui/art/lfg/lfg_veterandungeon_up.dds]],
    [45] = [[/esoui/art/lfg/lfg_normaldungeon_up.dds]],
    [46] = [[/esoui/art/progression/icon_dualwield.dds]],
    [47] = [[/esoui/art/progression/icon_firestaff.dds]],
    [48] = [[/esoui/art/progression/icon_bows.dds]],
    [49] = [[/esoui/art/progression/icon_2handed.dds]],
    [50] = [[/esoui/art/progression/icon_1handed.dds]],
    [51] = [[/esoui/art/progression/progression_tabicon_backup_inactive.dds]],
    [52] = [[/esoui/art/repair/inventory_tabicon_repair_disabled.dds]],
    [53] = [[/esoui/art/worldmap/selectedquesthighlight.dds]],
    [54] = [[/esoui/art/journal/journal_tabicon_cadwell_up.dds]],
    [55] = [[/esoui/art/crafting/enchantment_tabicon_deconstruction_disabled.dds]],
    [56] = [[/esoui/art/crafting/smithing_tabicon_improve_disabled.dds]],
    [57] = [[/esoui/art/bank/bank_tabicon_deposit_up.dds]],
    [58] = [[/esoui/art/currency/currency_gold.dds]],
    [59] = [[/esoui/art/guild/gamepad/guild_bankaccess.dds]],
    [60] = [[/esoui/art/progression/progression_indexicon_guilds_up.dds]],
}
--Additional size for the textures, if the texture got a special size
textureVars.MARKER_TEXTURES_SIZE = {
    [58] = { width = 16, height = 16, offsetLeft = 1, offsetTop = -8 },
}

--================= LOCAL FUNCTIONS ============================================

--[[
--Post-Hook Wrapper
local function WrapFunction(object, functionName, wrapper)
    if(type(object) == "string") then
        wrapper = functionName
        functionName = object
        object = _G
    end
    local originalFunction = object[functionName]
    object[functionName] = function(...) return wrapper(originalFunction, ...) end
end
]]

local function getGuildIndexById(guildId)
	local numGuilds = GetNumGuilds()
    for guildIndex=1,numGuilds,1 do
        local guildIdOfIndex=GetGuildId(guildIndex)
        if guildId == guildIdOfIndex then return guildIndex end
    end
    return
end

--Function to saver the current personal guild member notes for a later backup
local function FCONotes_BackupPersonalGuildMemberNotesNow(guildId, displayName)
    --Add only 1 new entry to the backup?
    if displayName ~= nil and displayName ~= "" then
        --Saved for each account namee or guild Id + account name?
        if not settingsVars.settings.saveGuildPersonalNotesAccountWide then
            if guildId == nil or guildId == -1 then return false end
            if settingsVars.settings.personalGuildNotesBackup[guildId] == nil then settingsVars.settings.personalGuildNotesBackup[guildId] = {} end
            settingsVars.settings.personalGuildNotesBackup[guildId][displayName] = {}
            local noteTable = settingsVars.settings.personalGuildNotes[guildId][displayName]
            settingsVars.settings.personalGuildNotesBackup[guildId][displayName] = noteTable
        else
            settingsVars.settings.personalGuildNotesBackup[displayName] = {}
            local noteTable = settingsVars.settings.personalGuildNotes[displayName]
            settingsVars.settings.personalGuildNotesBackup[displayName] = noteTable
        end
    else
        --Add all currently saved personal guild member notes to the backup
        settingsVars.settings.personalGuildNotesBackup = {}
        --Local helper function to copy a deep-structured table/array
        local function deepcopy(orig)
            local orig_type = type(orig)
            local copy
            if orig_type == 'table' then
                copy = {}
                for orig_key, orig_value in next, orig, nil do
                    copy[deepcopy(orig_key)] = deepcopy(orig_value)
                end
                setmetatable(copy, deepcopy(getmetatable(orig)))
            else -- number, string, boolean, etc
            copy = orig
            end
            return copy
        end
        --Copy the settings table with the personal guild member notes to the backup table now
        settingsVars.settings.personalGuildNotesBackup = deepcopy(settingsVars.settings.personalGuildNotes)
    end
    return true
end

--Function to restore the last saved backup of the personal guild member notes
local function FCONotes_RestorePersonalGuildMemberNotesNow()
    if settingsVars.settings.personalGuildNotesBackup ~= nil then
        settingsVars.settings.personalGuildNotes = settingsVars.settings.personalGuildNotesBackup
        --Reloading the UI now to saved variables back to the file
        ReloadUI()
    end
end

--Function to update the icons in the guild member rows
local function FCONotes_UpdateGuildMemberRowIcon(data)
--d("[FCONotes]UpdateGuildMemberRowIcon")
    if data == nil then return false end
    local standardESOGuildMemberNote = data:GetNamedChild("Note")
    if standardESOGuildMemberNote ~= nil then
        local personalGuildMemberNote = data:GetNamedChild("FCONote")
        local parent = WINDOW_MANAGER:GetControlByName(data:GetName(), "")
        if parent == nil then
            return true
        end
        if personalGuildMemberNote == nil then
            personalGuildMemberNote = WINDOW_MANAGER:CreateControl(data:GetName() .. "FCONote", parent, CT_TEXTURE)
        end
        local iconDataTab = settingsVars.settings.icon[1]
        local iconTexture = iconDataTab.texture
        --Control did already exist or was created now
        if personalGuildMemberNote ~= nil and iconTexture ~= nil then
            local doHide = false
            local noteText = ""
            local dataTab = data.dataEntry.data
            if dataTab.FCOnote == nil or dataTab.FCOnote == "" then
                doHide = true
            elseif dataTab.FCOnote ~= nil then
                noteText = dataTab.FCOnote
            end
            local pLeft, pTop
            local pWidth, pHeight
            local pTexture = textureVars.MARKER_TEXTURES[iconTexture]
            if pTexture ~= nil and pTexture ~= "" then
                --Change the icon's size because it is special?
                if textureVars.MARKER_TEXTURES_SIZE[iconTexture] ~= nil then
                    pWidth = textureVars.MARKER_TEXTURES_SIZE[iconTexture].width or 32
                    pHeight = textureVars.MARKER_TEXTURES_SIZE[iconTexture].height or 32
                    pLeft = iconDataTab.position.x + textureVars.MARKER_TEXTURES_SIZE[iconTexture].offsetLeft or 0
                    pTop = iconDataTab.position.y + textureVars.MARKER_TEXTURES_SIZE[iconTexture].offsetTop or 0
                else
                    pWidth = iconDataTab.size or 32
                    pHeight = pWidth
                    pLeft = iconDataTab.position.x or 0
                    pTop = iconDataTab.position.y or 0
                end
                --Hide or show the control now
                personalGuildMemberNote:SetHidden(doHide)
                personalGuildMemberNote:SetDimensions(pWidth, pHeight)
                personalGuildMemberNote:SetTexture(pTexture)
                local iconColor = iconDataTab.color
                personalGuildMemberNote:SetColor(iconColor.r, iconColor.g, iconColor.b, iconColor.a)
                personalGuildMemberNote:ClearAnchors()
                personalGuildMemberNote:SetAnchor(BOTTOMLEFT, parent, BOTTOMLEFT, pLeft, pTop)
                personalGuildMemberNote:SetDrawTier(DT_HIGH)

                --Add mouse handlers
                personalGuildMemberNote:SetMouseEnabled(not doHide)
                if not doHide then
                    personalGuildMemberNote:SetHandler("OnMouseEnter", function(self)
                        if noteText ~= nil and noteText ~= "" then
                            local tooltipText = "|c00FF00FCO|r|cFFFF00Notes|r\n|c8888DD" .. dataTab.displayName .. "|r (" .. dataTab.characterName .. ")\n\n|cFFFFFF" .. noteText .. "|r"
                            ZO_Tooltips_ShowTextTooltip(personalGuildMemberNote, LEFT, tooltipText)
                        else
                            ZO_Tooltips_HideTextTooltip()
                        end
                    end)
                    personalGuildMemberNote:SetHandler("OnMouseExit", function(self)
                        ZO_Tooltips_HideTextTooltip()
                    end)
                    personalGuildMemberNote:SetHandler("OnMouseUp", function(self, button, upInside)
                        ZO_Tooltips_HideTextTooltip()
                        if button == MOUSE_BUTTON_INDEX_LEFT and upInside then
                            FCONotes_AddNote(self, true, false)
                        end
                    end)
                end
            end
        end
    end
end

-- Get the guild member information
local function FCONotes_GetGuildRosterData(activeGuildId, guildMemberAccountName, updateNoteFromSavedVars)
--d("[FCONotes_GetGuildRosterData]")
    updateNoteFromSavedVars = updateNoteFromSavedVars or false
    guildMemberAccountName = guildMemberAccountName or -1
    if activeGuildId == nil or activeGuildId <= 0 then
    --Get the active guild ID
        activeGuildId = GUILD_ROSTER_MANAGER:GetGuildId()
    end
    if activeGuildId == nil or activeGuildId <= 0 then
        return false
    end

--d(">activeGuildId: " .. activeGuildId .. ", guildMemberAccountName: " .. guildMemberAccountName .. ", updateNoteFromSavedVars: " .. tostring(updateNoteFromSavedVars))

    --Get the guild roster list data
    local guildRosterData = {}
    if zosVars.guildRosterList ~= nil then
        --Get's an array with index (guild member) = table with data
        --each row of guild roster data got index = unique guild member index on this list,
        -- displayName = @accountname, characterName = character name
        --The normal guild note that each member sets: ZO_GuildRosterListXRowXNote
        guildRosterData = zosVars.guildRosterList.data
    end
    if guildRosterData == nil then return false end
    local settings = settingsVars.settings
    --Update the personal guild member note from the saved variables?
    if updateNoteFromSavedVars then
        --Check the saved variables
        if settings.personalGuildNotes == nil then return false end
        --Check the guild roster row data variables
        if activeGuildId ~= nil and guildMemberAccountName ~= nil and guildMemberAccountName ~= -1 then
            --Check the saved variables more precisely
            if not settings.saveGuildPersonalNotesAccountWide then
                if settings.personalGuildNotes[activeGuildId] == nil or settings.personalGuildNotes[activeGuildId][guildMemberAccountName] == nil then return false end
            else
                if settings.personalGuildNotes[guildMemberAccountName] == nil then return false end
            end
        elseif activeGuildId ~= nil then
            --Check the saved variables more precisely
            if not settings.saveGuildPersonalNotesAccountWide then
                if settings.personalGuildNotes[activeGuildId] == nil then return false end
            end
        end
    end
    local doBreak = false
    local guildMemberInfo
    for index, dataTable in ipairs(guildRosterData) do
        guildMemberInfo = dataTable.data
        if guildMemberInfo ~= nil then
--d(">[GuildMember] " .. guildMemberInfo.displayName .. " (" .. guildMemberInfo.characterName .. "), ID: " .. guildMemberInfo.index)
            --Initialize the arrays
            if guildMemberAccountName ~= nil and guildMemberAccountName ~= -1 then
                if guildMemberInfo.displayName == guildMemberAccountName then
                    doBreak = true
                end
            end
            --Update the personal guild member note from the saved variables?
            if updateNoteFromSavedVars then
                --Update the personal guild note to the ZOs data structures
                if guildMemberInfo.FCOnote == nil then guildMemberInfo.FCOnote = "" end
                --Saved personal guild note for each account or for each account at each guild ID?
                if not settings.saveGuildPersonalNotesAccountWide then
                    guildMemberInfo.FCOnote = settings.personalGuildNotes[activeGuildId][guildMemberInfo.displayName]
                else
                    guildMemberInfo.FCOnote = settings.personalGuildNotes[guildMemberInfo.displayName]
                end
            end
            --Only go on if we did not change the current guild, as the icons will be updated by help of the callback function for GuildRoster OnSetupRow()
            if (    preventerVars.lastguildId ~= nil and preventerVars.lastguildId ~= -1 and preventerVars.lastguildId == activeGuildId and guildRosterVars.firstCall == false
                    or (  preventerVars.lastguildId ~= nil and preventerVars.lastguildId == -1 and guildRosterVars.firstCall == false)
            ) then
                --Update the icon's texture, size, color, position, tooltip and handler functions
                local activeControlData = zosVars.guildRosterList.activeControls[index]
                if activeControlData ~= nil then
--d(">updating the icon now...")
                    FCONotes_UpdateGuildMemberRowIcon(activeControlData)
                end
            end
        end
        --Abort here now?
        if doBreak then
            break
        end
        --dataTable = {}
        --guildMemberInfo = {}
    end
    return true
end

--Function to save the guild member FCO note now
local function FCONotes_SetGuildMemberFCONote(activeGuildId, displayName, note)
--d("FCONotes_SetGuildMemberFCONote - displayName: " .. displayName)
    if activeGuildId == nil then activeGuildId = GUILD_ROSTER_MANAGER:GetGuildId() end
    if activeGuildId == nil or activeGuildId <= 0 then return false end
    if displayName == nil or displayName == "" then return false end
    if note == nil then return false end
    --The note was removed/cleared?
    local noteText = note
--[[
    if note == "" then
        noteText = note
    else
        noteText = note
        --Remove special characters from note text
        --
    end
]]
    --Update the saved variables table with hte new note
    local settings = settingsVars.settings
    if not settings.saveGuildPersonalNotesAccountWide then
        if settings.personalGuildNotes[activeGuildId] == nil then
            settingsVars.settings.personalGuildNotes[activeGuildId] = {}
        end
        if settings.personalGuildNotes[activeGuildId][displayName] == nil then
            settingsVars.settings.personalGuildNotes[activeGuildId][displayName] = ""
        end
        settingsVars.settings.personalGuildNotes[activeGuildId][displayName] = noteText
    else
        if settings.personalGuildNotes[displayName] == nil then
            settingsVars.settings.personalGuildNotes[displayName] = ""
        end
        settingsVars.settings.personalGuildNotes[displayName] = noteText
--d("SavedVars: " .. settingsVars.settings.personalGuildNotes[displayName])
    end
    --Update the data structures for the current guild member
    if not FCONotes_GetGuildRosterData(activeGuildId, displayName, true) then
--d("<abort!")
        return false
    else
        --Update this one, changed icon at the guild roster now
        if guildRosterVars.lastGuildRosterRowControl ~= nil then
--d("SetGuildMemberFCONote - Update icon at row: " .. guildRosterVars.lastGuildRosterRowControl:GetName())
            FCONotes_UpdateGuildMemberRowIcon(guildRosterVars.lastGuildRosterRowControl)
        end
    end
    return true
end

--Callback function for the guild roster FCO note changed
local function FCONotes_GuildRoster_FCO_Note_Changed(displayName, note)
    local activeGuildId = GUILD_ROSTER_MANAGER:GetGuildId()
    if activeGuildId == nil then return false end
    FCONotes_SetGuildMemberFCONote(activeGuildId, displayName, note)
    guildRosterVars.lastGuildRosterRowControl = nil
end

--Global function to show personal note dialog
function FCONotes_AddNote(ctrl, fromKeybind, delete)
    guildRosterVars.lastGuildRosterRowControl = nil
    if ctrl ~= nil then
        local control = ctrl
        if fromKeybind then
            control = control:GetParent()
        end
        local data = ZO_ScrollList_GetData(control)
        guildRosterVars.lastGuildRosterRowControl = control
        local activeGuildId = GUILD_ROSTER_MANAGER:GetGuildId()
        if not delete then
            if data ~= nil then
                ClearMenu()
                ZO_Dialogs_ShowDialog("EDIT_NOTE", {displayName = data.displayName, note = data.FCOnote, changedCallback = FCONotes_GuildRoster_FCO_Note_Changed})
            end
        else
            local settings = settingsVars.settings
            --Saved personal guild notes for each account or for each guild Id and account?
            if not settings.saveGuildPersonalNotesAccountWide then
                --Get the active guild ID
                if activeGuildId == nil then return false end
                if   settings.personalGuildNotes[activeGuildId] ~= nil
                 and settings.personalGuildNotes[activeGuildId][data.displayName] ~= nil then
                    --Backup this note so you can restore it with next ReloadUI
                    FCONotes_BackupPersonalGuildMemberNotesNow(activeGuildId, data.displayName)
                    --Delete the personal guild member note now
                    settingsVars.settings.personalGuildNotes[activeGuildId][data.displayName] = nil
                end
            else
                if settings.personalGuildNotes[data.displayName] ~= nil then
                    --Backup this note so you can restore it with next ReloadUI
                    FCONotes_BackupPersonalGuildMemberNotesNow(nil, data.displayName)
                    --Delete the personal guild member note now
                    settingsVars.settings.personalGuildNotes[data.displayName] = nil
                end
            end
            --Delete the personal guild note now
            data.FCOnote = nil
        end
    end
end

--Function to send the note to the guild officer chat
local function FCONotes_SendNoteToGuildOfficerChat(noteText, displayName, characterName)
    if noteText == "" or noteText == nil then return false end
    if characterName == "" or characterName == nil then return false end
    if displayName == "" or displayName == nil then return false end
    local currentguildId = GUILD_ROSTER_MANAGER.guildId
    if currentguildId == nil then return false end
    local currentGuildIndex = getGuildIndexById(currentguildId)
    if not currentGuildIndex or currentGuildIndex < 1 or  currentGuildIndex > MAX_GUILDS then return end
    --the guild officer channels
    local mappingTableGuildToOfficerChanel = {
        [1] = CHAT_CHANNEL_OFFICER_1,
        [2] = CHAT_CHANNEL_OFFICER_2,
        [3] = CHAT_CHANNEL_OFFICER_3,
        [4] = CHAT_CHANNEL_OFFICER_4,
        [5] = CHAT_CHANNEL_OFFICER_5,
    }
    local guildOfficerChannel = mappingTableGuildToOfficerChanel[currentGuildIndex]
    if guildOfficerChannel == nil then return false end
    --Change the chat channel to the guild officer channel now
    CHAT_SYSTEM:SetChannel(guildOfficerChannel, "")
    --Put the chat message into the chat text edit field
    local textMessage = "[" .. localizationVars.fco_notes_loc["chat_pre_guild_officer"] .. ": " .. characterName .. " (" .. displayName .. ")] " .. noteText
    CHAT_SYSTEM.textEntry.editControl:SetText(textMessage)
    CHAT_SYSTEM.textEntry.editControl:TakeFocus()
end

--Add the new context menu entry "[FCO Notes] Add personal note" for the guild roster row contetx menu
local function FCONotes_AddContextMenuEntry(ctrl)
--d("FCONotes_AddContextMenuEntry - Control name: " .. ctrl:GetName())
    local data = ZO_ScrollList_GetData(ctrl)
    if data ~= nil then
        local locVars = localizationVars.fco_notes_loc
        if data.FCOnote == nil then data.FCOnote = "" end
        --Call this function later as the original menu will be build in OnMouseUp function and we are in the PreHook of this function here!
        --So all menu entries will be overwritten again and we must add this entry later
        zo_callLater(function()
            --Add context menu entry now
            --AddMenuItem(localizationVars.fco_notes_loc["context_menu_add_personal_guild_note"],
            AddCustomMenuItem(locVars["context_menu_add_personal_guild_note"],
                function()
    --d("Add personal note clicked", MENU_ADD_OPTION_LABEL)
                    FCONotes_AddNote(ctrl, false, false)
            end)
            --Add a remove context menu too?
            if data.FCOnote ~= "" then
                --AddMenuItem(localizationVars.fco_notes_loc["context_menu_remove_personal_guild_note"],
                AddCustomMenuItem(locVars["context_menu_remove_personal_guild_note"],
                    function()
                        --d("Add personal note clicked", MENU_ADD_OPTION_LABEL)
                        FCONotes_AddNote(ctrl, false, true)
                end)
                --AddMenuItem(localizationVars.fco_notes_loc["context_menu_send_personal_guild_note_to_officer_chat"],
                AddCustomMenuItem(locVars["context_menu_send_personal_guild_note_to_officer_chat"],
                    function()
                        FCONotes_SendNoteToGuildOfficerChat(data.FCOnote, data.displayName, data.characterName)
                end)
            end

            ShowMenu(ctrl)
        end, 50)
    end
end

--Callback function for the OnMouseUp of guild roster rows
local function FCONotes_GuildRosterRow_OnMouseUp(control, button, upInside)
--d("GuildRosterRow - On Mouse Up: button " .. button .. ", upInside " .. tostring(upInside))
    --button 1= left mouse button / 2= right mouse button
    --Right click/mouse button 2 context menu hook part:
    if button == MOUSE_BUTTON_INDEX_RIGHT and upInside then
        --Add context menu entry
        FCONotes_AddContextMenuEntry(control)
    end
end

--Callback function for the guild roster keyboard, setuprow
local function FCONotes_GuildRoster_SetupRow(control, data)
	--WrapFunction(GUILD_ROSTER_KEYBOARD, "SetupRow", function(originalFunction, ...)
	-- do something before it
--d("[FCONotes_GuildRoster_SetupRow] Scene: " .. tostring(guildRosterVars.scene) .. "/" .. tostring(SCENE_SHOWING))
	    if not preventerVars.addonLoaded or guildRosterVars.scene == SCENE_SHOWING then return false end

		--Call the original function
		--originalFunction(...)

		-- do something after it
        if not preventerVars.addonLoaded or ZO_GuildRoster:IsHidden() then
        	return false
        end
        if data == nil or data.dataEntry == nil or data.dataEntry.data == nil then
			return false
		end
--d("GuildRoster - SetupRow: " .. data.dataEntry.data.displayName .. " (" .. data.dataEntry.data.characterName .. ")")
        --Do not go on if the edit note dialog is shown
        if not ZO_EditNoteDialog:IsHidden() then
            return false
        end
        FCONotes_UpdateGuildMemberRowIcon(data)

        return false
	--end)
end

local function help()
	d(localizationVars.fco_notes_loc["chatcommands_info"])
	d(localizationVars.fco_notes_loc["chatcommands_help"])
	d(localizationVars.fco_notes_loc["chatcommands_backup"])
    d(localizationVars.fco_notes_loc["chatcommands_restore"])
end

--chat command handlers
local function command_handler(arg)
    arg = string.lower(arg)
	if(arg == "help" or arg == "list" or arg == "") then
       	help()
	elseif(arg == "backup") then
       	local feedback = FCONotes_BackupPersonalGuildMemberNotesNow()
        d(localizationVars.fco_notes_loc["chatcommands_backup_feedback_" .. tostring(feedback)])
        if feedback then
            zo_callLater(function() ReloadUI() end, 3000)
        end
    elseif(arg == "restore") then
        FCONotes_RestorePersonalGuildMemberNotesNow()
    end
end

--get the main menu variable from ZOs gamepad/keyboard stuff
local function FCONotes_GetMainMenu()
    if IsInGamepadPreferredMode() then
    	return MAIN_MENU_GAMEPAD
    else
    	return MAIN_MENU_KEYBOARD
    end
end

--Callback function for the scene change
local function FCONotes_GuildRoster_OnGuildIdChanged(guildInfo)
--d("Guild roster guild id changed to: " .. guildInfo.guildId .. " (" .. preventerVars.lastguildId .. ")")
	--Change the current scene to guildRoster if not already shown
	preventerVars.dontChangeSceneVar = false
    --if the setting is enabled
    if settingsVars.settings.showAlwaysGuildRoster then
		if not preventerVars.dontChangeSceneVar and not SCENE_MANAGER:IsShowing("guildRoster") then
			local mainMenuVar = FCONotes_GetMainMenu()
        	mainMenuVar:ShowScene("guildRoster")
		end
	end

	--Change the guild notes, only if the guild changed
    if preventerVars.lastguildId == -1 or preventerVars.lastguildId ~= guildInfo.guildId then
        preventerVars.lastguildId = guildInfo.guildId
        --Is the current scene the guild roster? The scene manager will not reckognize that the guild was changed so
        --we need to manually call the function to read the current guild roster notes here
        zo_callLater(function()
            if SCENE_MANAGER.currentScene.name == "guildRoster" then
                if not FCONotes_GetGuildRosterData(guildInfo.guildId, -1, true) then
                    --d("[ERROR - FCO Notes] Guild roster data could not be read!")
                end
            end
        end, 50)
    end
end

--Global function to copy the control below the mouse cursor, for the keybinds
function FCONotes_CopyNameUnderControl()
    local mouseOverControl = WINDOW_MANAGER:GetMouseOverControl()
    if (mouseOverControl:GetName():find("^ZO_GuildRosterList1Row%d+DisplayName*" or "^ZO_GuildRosterList1Row%d%d+DisplayName*" )) then
        FCONotes_AddNote(mouseOverControl, true, false)
    end
end

--Function for the mouse over keybinds at guild roster member rows
local function FCONotes_GetMouseOverGuildMembers(mouseOverControl)
	if (not mouseOverControl) then return end
    if (not ZO_GuildRoster:IsHidden() and settingsVars.settings.useKeybind) then
        KEYBIND_STRIP:AddKeybindButtonGroup(keystripVars.GuildRosterAddPersonalNote)
    else
        KEYBIND_STRIP:RemoveKeybindButtonGroup(keystripVars.GuildRosterAddPersonalNote)
    end
end

--Callback function for the event if a guild member gets added
local function FCONotes_OnGuildMemberAdded(eventCode, guildId, displayName)
--d("[GuildMemberAdded] guildId: " .. guildId .. ", displayName: " .. displayName)
    if guildId ~= nil and displayName ~= nil and displayName ~= "" then
        --Reorganize the notes now
--d("Reorganize notes now")
        FCONotes_GetGuildRosterData(guildId, -1, true)
    end
end

--Callback function for the event if a guild member gets removed
local function FCONotes_OnGuildMemberRemoved(eventCode, guildId, displayName, characterName)
--d("[GuildMemberRemoved] guildId: " .. guildId .. ", displayName: " .. displayName .. ", characterName: " .. characterName)
    if not settingsVars.settings.saveGuildPersonalNotesAccountWide
       and guildId ~= nil
       and displayName ~= nil and displayName ~= "" then
        --Remove the note about this account in this guild
        if settingsVars.settings.personalGuildNotes[guildId] ~= nil then
            settingsVars.settings.personalGuildNotes[guildId][displayName] = nil
        end
    end
end

--PreHook function for the main menu scene group bar buttons
local function FCONotes_MainMenuSceneGroupBarButtonClick(ctrl, button, upInside)
	--d("[FCO Notes] FCONotes_MainMenuSceneGroupBarButtonClick: " .. ctrl:GetName())
    --if the setting is enabled
    if not settingsVars.settings.showAlwaysGuildRoster then return false end
    --Button 1 is pressed and mouse is above the control?
    if button == MOUSE_BUTTON_INDEX_LEFT and upInside then
   		preventerVars.buttonPressed = true
		preventerVars.dontChangeSceneVar = true
    end
end

--Callback function for the guild ranks, home and history scenes
local function FCONotes_Guild_Scenes_Callback(oldState, newState)
    --if the setting is enabled
    if not settingsVars.settings.showAlwaysGuildRoster then return false end

	--d("[".. SCENE_MANAGER.currentScene.name .."] State: " .. tostring(newState))
	if newState == SCENE_SHOWING then
		--Reset the button pressed preventer variable
    	if preventerVars.buttonPressed then preventerVars.buttonPressed = false end

    --If guild home is shown the first time, open the guild roster automatically instead of showing the home scene
    elseif newState == SCENE_SHOWN then
        --PreHook the buttons of the guild scene, but only once
    	if not preventerVars.sceneButtonsPreHook then
            --PreeHook the mouse OnMouseUp handler for the main menu group bar buttons at the guild scenes
            ZO_PreHookHandler(ZO_MainMenuSceneGroupBarButton1, "OnMouseUp", FCONotes_MainMenuSceneGroupBarButtonClick)
            --ZO_PreHookHandler(ZO_MainMenuSceneGroupBarButton2, "OnMouseUp", FCONotes_MainMenuSceneGroupBarButtonClick)
            ZO_PreHookHandler(ZO_MainMenuSceneGroupBarButton3, "OnMouseUp", FCONotes_MainMenuSceneGroupBarButtonClick)
            ZO_PreHookHandler(ZO_MainMenuSceneGroupBarButton5, "OnMouseUp", FCONotes_MainMenuSceneGroupBarButtonClick)
			--Support for GuildEvents addon
            if ZO_MainMenuSceneGroupBarButton6 ~= nil then
	            ZO_PreHookHandler(ZO_MainMenuSceneGroupBarButton6, "OnMouseUp", FCONotes_MainMenuSceneGroupBarButtonClick)
			end
            preventerVars.sceneButtonsPreHook = true
        end
        --PreHook the buttons of the guild heraldric scene, but only once
    	if not preventerVars.sceneButtonsHeraldricPreHook then
			--Guild heraldric
			if ZO_MainMenuSceneGroupBarButton4 ~= nil then
				ZO_PreHookHandler(ZO_MainMenuSceneGroupBarButton4, "OnMouseUp", FCONotes_MainMenuSceneGroupBarButtonClick)
	            preventerVars.sceneButtonsHeraldricPreHook = true
			end
		end
		--Change the current scene to guildRoster if not one of the guild buttons was clicked manually
		if not preventerVars.dontChangeSceneVar and not SCENE_MANAGER:IsShowing("guildRoster") then
			local mainMenuVar = FCONotes_GetMainMenu()
        	mainMenuVar:ShowScene("guildRoster")
        end

    elseif newState == SCENE_HIDING then
        if not preventerVars.buttonPressed then
			preventerVars.dontChangeSceneVar = false
        end
    end
end

--Hooks
local function hook_functions()
    --======== GUILD EVENTS - Additional addon =================================
    --Register a callback function for the guild events scene from the GuildEvents addon
	if GUILD_EVENTS_SCENE ~= nil then
	    GUILD_EVENTS_SCENE:RegisterCallback("StateChange", FCONotes_Guild_Scenes_Callback)
    end
    --======== GUILD HOME ======================================================
    --Register a callback function for the guild home scene
    GUILD_HOME_SCENE:RegisterCallback("StateChange", FCONotes_Guild_Scenes_Callback)
    --======== GUILD RANKS =====================================================
    --Register a callback function for the guild home scene
    GUILD_RANKS_SCENE:RegisterCallback("StateChange", FCONotes_Guild_Scenes_Callback)
    --======== GUILD HISTORY ===================================================
    --Register a callback function for the guild home scene
    GUILD_HISTORY_SCENE:RegisterCallback("StateChange", FCONotes_Guild_Scenes_Callback)
    --======== GUILD HERALDRY ==================================================
    --Register a callback function for the guild home scene
    GUILD_HERALDRY_SCENE:RegisterCallback("StateChange", FCONotes_Guild_Scenes_Callback)
    --======== GUILD ROSTER ====================================================
    --Register a callback function for the guild roster scene
    GUILD_ROSTER_SCENE:RegisterCallback("StateChange", function(oldState, newState)
	--d("[GUILD ROSTER SCENE] State: " .. tostring(newState))
        --Guild roster is starting to show
        guildRosterVars.scene = newState

        if newState == SCENE_SHOWING then
            --Get all the data from the guild roster rows
            if not FCONotes_GetGuildRosterData(nil, -1, true) then
                --d("[ERROR - FCO Notes] Guild roster data could not be read!")
            end
            --Guild roster was shown at least once now so update the variable "first call" to false
            if guildRosterVars.firstCall then
                guildRosterVars.firstCall = false
            end

        elseif newState == SCENE_SHOWN then
	    	--Reset the preventer variable
	        preventerVars.dontChangeSceneVar = false
            preventerVars.buttonPressed		 = false

        elseif newState == SCENE_HIDING then
            --Hide possibly shown tooltips
            ZO_Tooltips_HideTextTooltip()
        end
    end)

    --PreHook the MouseEnter and Exit functions for the guild roster list rows + names in the rows
    ZO_PreHook("ZO_KeyboardGuildRosterRowDisplayName_OnMouseEnter", function(control)
        --d("Mouse enter guild roster name: " .. control:GetName())
        FCONotes_GetMouseOverGuildMembers(control)
    end)
    ZO_PreHook("ZO_KeyboardGuildRosterRowDisplayName_OnMouseExit", function(control)
        --d("Mouse exit guild roster  name: " .. control:GetName())
        KEYBIND_STRIP:RemoveKeybindButtonGroup(keystripVars.GuildRosterAddPersonalNote)
    end)
    ZO_PreHook("ZO_KeyboardGuildRosterRow_OnMouseExit", function(control)
        --d("Mouse exit guild roster row: " .. control:GetName())
        KEYBIND_STRIP:RemoveKeybindButtonGroup(keystripVars.GuildRosterAddPersonalNote)
    end)

    --======== PreHook Guild ID changed =======================================================================
    ZO_PreHook(GUILD_ROSTER_MANAGER, "OnGuildIdChanged", FCONotes_GuildRoster_OnGuildIdChanged)

    ZO_PreHook(GUILD_ROSTER_KEYBOARD, "SetupRow", FCONotes_GuildRoster_SetupRow)

    --======== PreHook GuildRoster Row OnMouseUp =======================================================================
    --Pre-Hook the handler "OnMouseUp" event for the rowControl of each guild roster row to
    --add a context menu entry
    ZO_PreHook("ZO_KeyboardGuildRosterRow_OnMouseUp", FCONotes_GuildRosterRow_OnMouseUp)
end

--Map the texture path to the texture ID
local function GetFCOTextureId(texturePath)
    if texturePath == nil or texturePath == "" then return 0 end
    for textureId, texturePathString in pairs(textureVars.MARKER_TEXTURES) do
        if	texturePathString == texturePath then
            return textureId
        end
    end
    return 0
end

-- Build the menu
local function BuildAddonMenu()
	local panelData = {
		type 				= 'panel',
		name   				= addonVars.addonNameMenu,
		displayName 		= addonVars.addonNameMenuDisplay,
		author 				= addonVars.addonAuthor,
		version 			= addonVars.addonVersionOptions,
		registerForRefresh  = true,
		registerForDefaults = true,
		slashCommand = "/fcons",
	}

    local settings = settingsVars.settings
    local locVars = localizationVars.fco_notes_loc

	local languageOptions = {
	    [1] = locVars["options_language_dropdown_selection1"],
	    [2] = locVars["options_language_dropdown_selection2"],
	    [3] = locVars["options_language_dropdown_selection3"],
	    [4] = locVars["options_language_dropdown_selection4"],
	    [5] = locVars["options_language_dropdown_selection4"],
	}
    local savedVariablesOptions = {
    	[1] = locVars["options_savedVariables_dropdown_selection1"],
        [2] = locVars["options_savedVariables_dropdown_selection2"],
    }

    -- Build options menu parts
    local texturesList = {
        locVars["options_lock"],
        locVars["options_gear"],
        locVars["options_research"],
        locVars["options_coins"],
        locVars["options_star"],
        locVars["options_flag"],
        locVars["options_boxstar"],
        locVars["options_medic"],
        locVars["options_timer"],
        locVars["options_flask"],
        locVars["options_cancel_up"],
        locVars["options_info_up"],
        locVars["options_pinned_normal"],
        locVars["options_cadwell_indexicon_gold_up"],
        locVars["options_cadwell_indexicon_silver_up"],
        locVars["options_campaignbonus_keepicon"],
        locVars["options_campaignbonus_scrollicon"],
        locVars["options_campaignbrowser_columnheader_ad"],
        locVars["options_campaignbrowser_columnheader_dc"],
        locVars["options_campaignbrowser_columnheader_ep"],
        locVars["options_campaignbrowser_guild"],
        locVars["options_campaignbrowser_indexicon_normal_up"],
        locVars["options_overview_indexicon_scoring_up"],
        locVars["options_charactercreate_bodyicon_up"],
        locVars["options_gearslot_offhand"],
        locVars["options_gearslot_mainhand"],
        locVars["options_gearslot_costume"],
        locVars["options_chat_mail_up"],
        locVars["options_chat_notification_up"],
        locVars["options_alchemy_tabicon_reagent_up"],
        locVars["options_smithing_tabicon_refine_up"],
        locVars["options_deathrecap_killingblow_icon"],
        locVars["options_bait_emptyslot"],
        locVars["options_guildhistory_indexicon_guildbank_up"],
        locVars["options_guild_indexicon_member_up"],
        locVars["options_tabicon_roster_up"],
        locVars["options_poi_dungeon_complete"],
        locVars["options_poi_groupinstance_complete"],
        locVars["options_servicepin_magesguild"],
        locVars["options_servicepin_fightersguild"],
        locVars["options_lfg_dps_up"],
        locVars["options_lfg_leader_icon"],
        locVars["options_lfg_tank_up"],
        locVars["options_lfg_veterandungeon_up"],
        locVars["options_lfg_normaldungeon_up"],
        locVars["options_icon_dualwield"],
        locVars["options_icon_firestaff"],
        locVars["options_icon_bows"],
        locVars["options_icon_2handed"],
        locVars["options_icon_1handed"],
        locVars["options_progression_tabicon_backup_inactive"],
        locVars["options_inventory_tabicon_repair_disabled"],
        locVars["options_selectedquesthighlight"],
        locVars["options_writ"],
        locVars["options_deconstruction"],
        locVars["options_improvement"],
        locVars["options_withdran_money"],
        locVars["options_gold"],
        locVars["options_guild_bank_access"],
        locVars["options_intricate"],
    }

    local FCONotesSettingsPanel = LAMFCONotes:RegisterAddonPanel(addonName .. "_LAM", panelData)

    --Filter icon selection
    local CallBackLAMPanelControlsCreated, Preview1
    CallBackLAMPanelControlsCreated = function(panel)
        if panel == FCONotesSettingsPanel then
            --[[
            Preview1 = WINDOW_MANAGER:CreateControl(nil, FCONote_Settings_Preview1, CT_TEXTURE)
            Preview1:SetAnchor(RIGHT, FCONote_Settings_Preview1, LEFT, -10, 10)
            Preview1:SetTexture(textureVars.MARKER_TEXTURES[settings.icon[1].texture])
            Preview1:SetDimensions(settings.icon[1].size, settings.icon[1].size)
            Preview1:SetColor(settings.icon[1].color.r, settings.icon[1].color.g, settings.icon[1].color.b, settings.icon[1].color.a)
            FCONote_Settings_Preview1.label:SetText(locVars["options_icon1_texture"] .. ": " .. texturesList[settings.icon[1].texture])
            ]]
            --Icon 1
            FCONotes_Settings_Filter1Preview_Select:SetColor(ZO_ColorDef:New(settings.icon[1].color))
            FCONotes_Settings_Filter1Preview_Select:SetIconSize(settings.icon[1].size)
            FCONotes_Settings_Filter1Preview_Select.label:SetText(locVars["options_icon1_texture"] .. ": " .. texturesList[settings.icon[1].texture])

            CALLBACK_MANAGER:UnregisterCallback("LAM-RefreshPanel", CallBackLAMPanelControlsCreated)
        end
    end
    CALLBACK_MANAGER:RegisterCallback("LAM-PanelControlsCreated", CallBackLAMPanelControlsCreated)

	local optionsTable =
    {
		{
			type = 'description',
			text = locVars["options_description"],
		},
--==============================================================================
		{
        	type = 'header',
        	name = locVars["options_header1"],
        },
		{
			type = 'dropdown',
			name = locVars["options_language"],
			tooltip = locVars["options_language_tooltip"],
			choices = languageOptions,
            getFunc = function() return languageOptions[settingsVars.defaultSettings.language] end,
            setFunc = function(value)
                for i,v in pairs(languageOptions) do
                    if v == value then
                    	settingsVars.defaultSettings.language = i
                        --Tell the settings that you have manually chosen the language and want to keep it
                        --Read in function Localization() after ReloadUI()
                        settings.languageChoosen = true
                        ReloadUI()
                    end
                end
            end,
            warning = locVars["options_language_description1"],
		},
		{
			type = 'dropdown',
			name = locVars["options_savedvariables"],
			tooltip = locVars["options_savedvariables_tooltip"],
			choices = savedVariablesOptions,
            getFunc = function() return savedVariablesOptions[settingsVars.defaultSettings.saveMode] end,
            setFunc = function(value)
                for i,v in pairs(savedVariablesOptions) do
                    if v == value then
                        settingsVars.defaultSettings.saveMode = i
                        ReloadUI()
                    end
                end
            end,
            warning = locVars["options_language_description1"],
		},
        {
        	type = 'description',
        	text = locVars["options_language_description1"],
        },
--==============================================================================
        {
            type = 'header',
            name = locVars["options_header_color"],
        },
        {
            type = "colorpicker",
            name = locVars["options_icon1_color"],
            tooltip = locVars["options_icon1_color_tooltip"],
            getFunc = function() return settings.icon[1].color.r, settings.icon[1].color.g, settings.icon[1].color.b, settings.icon[1].color.a end,
            setFunc = function(r,g,b,a)
                settings.icon[1].color = {["r"] = r, ["g"] = g, ["b"] = b, ["a"] = a}
                FCONotes_Settings_Filter1Preview_Select:SetColor(ZO_ColorDef:New(r,g,b,a))
            end,
            width="half",
            default = settings.icon[1].color,
        },
--[[
        {
            type = "slider",
            name = locVars["options_icon1_texture"],
            tooltip = locVars["options_icon1_texture_tooltip"],
            min = 1,
            max = #texturesList,
            getFunc = function() return settings.icon[1].texture end,
            setFunc = function(textureId)
                settings.icon[1].texture = textureId
                Preview1:SetTexture(textureVars.MARKER_TEXTURES[textureId])
                FCONote_Settings_Preview1.label:SetText(locVars["options_icon1_texture"] .. ": " .. texturesList[textureId])
            end,
            width="half",
            default = settings.icon[1].texture,
            reference = "FCONote_Settings_Preview1"
        },
]]
        {
            type = "iconpicker",
            name = locVars["options_icon1_texture"],
            tooltip = locVars["options_icon1_texture_tooltip"],
            choices = textureVars.MARKER_TEXTURES,
            choicesTooltips = texturesList,
            getFunc = function() return textureVars.MARKER_TEXTURES[settings.icon[1].texture] end,
            setFunc = function(texturePath)
                local textureId = GetFCOTextureId(texturePath)
                if textureId ~= 0 then
                    settings.icon[1].texture = textureId
                    FCONotes_Settings_Filter1Preview_Select.label:SetText(locVars["options_icon1_texture"] .. ": " .. texturesList[textureId])
                end
            end,
            maxColumns = 6,
            visibleRows = 5,
            iconSize = settings.icon[1].size,
            width = "half",
            default = textureVars.MARKER_TEXTURES[settings.icon[1].texture],
            reference = "FCONotes_Settings_Filter1Preview_Select"
        },
        {
            type = "slider",
            name = locVars["options_icon1_size"],
            tooltip = locVars["options_icon1_size_tooltip"],
            min = 12,
            max = 64,
            getFunc = function() return settings.icon[1].size end,
            setFunc = function(size)
                settings.icon[1].size = size
                --Preview1:SetDimensions(size, size)
            end,
            width="half",
            default = settings.icon[1].size,
        },

        {
            type = "slider",
            name = locVars["options_icon1_x"],
            tooltip = locVars["options_icon1_x_tooltip"],
            min = -15,
            max = 800,
            getFunc = function() return settings.icon[1].position.x end,
            setFunc = function(offset)
                settings.icon[1].position.x = offset
            end,
            default = settings.icon[1].position.x,
            width="half",
        },
        {
            type = "slider",
            name = locVars["options_icon1_y"],
            tooltip = locVars["options_icon1_y_tooltip"],
            min = -10,
            max = 10,
            getFunc = function() return settings.icon[1].position.y end,
            setFunc = function(offset)
                settings.icon[1].position.y = offset
            end,
            default = settings.icon[1].position.y,
            width="half",
        },


        --==============================================================================
        {
            type = 'header',
            name = locVars["options_note_guild_options"],
        },
        {
            type = "checkbox",
            name = locVars["options_save_guild_notes_account_wide"],
            tooltip = locVars["options_save_guild_notes_account_wide_tooltip"],
            getFunc = function() return settings.saveGuildPersonalNotesAccountWide end,
            setFunc = function(value) settings.saveGuildPersonalNotesAccountWide = not settings.saveGuildPersonalNotesAccountWide
                --Update all the values and icons now
                local activeGuildId = GUILD_ROSTER_MANAGER:GetGuildId()
                FCONotes_GetGuildRosterData(activeGuildId, -1, true)
            end,
            default = settings.saveGuildPersonalNotesAccountWide,
            width="full",
        },

        --==============================================================================
        {
            type = 'header',
            name = locVars["options_header_guild_roster"],
        },
        {
            type = "checkbox",
            name = locVars["options_always_open_guild_roster"],
            tooltip = locVars["options_always_open_guild_roster_tooltip"],
            getFunc = function() return settings.showAlwaysGuildRoster end,
            setFunc = function(value) settings.showAlwaysGuildRoster = not settings.showAlwaysGuildRoster
            end,
            default = settings.showAlwaysGuildRoster,
            width="full",
        },
	}
	LAMFCONotes:RegisterOptionControls(addonName .. "_LAM", optionsTable)
end

local function Localization()
	--Was localization already done during keybindings? Then abort here
 	if preventerVars.KeyBindingTexts == true and preventerVars.gLocalizationDone == true then return end

    --Fallback to english
	if (settingsVars.defaultSettings.language == nil or (settingsVars.defaultSettings.language ~= 1 and settingsVars.defaultSettings.language ~= 2 and settingsVars.defaultSettings.language ~= 3 and settingsVars.defaultSettings.language ~= 4 and settingsVars.defaultSettings.language ~= 5)) then
    	settingsVars.defaultSettings.language = 1
    end
	--Is the standard language english set?
    if (preventerVars.KeyBindingTexts == true or (settingsVars.defaultSettings.language == 1 and settingsVars.settings.languageChoosen == false)) then
		local lang = GetCVar("language.2")
		--Check for supported languages
		if(lang == "de") then
	    	settingsVars.defaultSettings.language = 2
	    elseif (lang == "en") then
	    	settingsVars.defaultSettings.language = 1
	    elseif (lang == "fr") then
	    	settingsVars.defaultSettings.language = 3
	    elseif (lang == "es") then
	    	settingsVars.defaultSettings.language = 4
	    elseif (lang == "it") then
	    	settingsVars.defaultSettings.language = 5
		else
	    	settingsVars.defaultSettings.language = 1
	    end
	end
    localizationVars.fco_notes_loc = FCONotes.fco_notesloc[settingsVars.defaultSettings.language]

    preventerVars.gLocalizationDone = true
end

local function RegisterSlashCommands()
    -- Register slash commands
	SLASH_COMMANDS["/fconotes"]	= command_handler
	SLASH_COMMANDS["/fcon"]		= command_handler
end

--Callback function for player activated event
local function FCONotes_PlayerActivated(event)
    EVENT_MANAGER:UnregisterForEvent(addonName, event)

    --Set the variable for the guild roster: It's the first time the next time we open the guild roster
    guildRosterVars.firstCall = true

    --Load the hooks
    hook_functions()

    --Show the menu
    BuildAddonMenu()

    --Register for event if a guild member gets added
    EVENT_MANAGER:RegisterForEvent(addonName, EVENT_GUILD_MEMBER_ADDED, FCONotes_OnGuildMemberAdded)
    --Register for event if a guild member gets removed
    EVENT_MANAGER:RegisterForEvent(addonName, EVENT_GUILD_MEMBER_REMOVED, FCONotes_OnGuildMemberRemoved)

    --Update the current guild ID with NONE
    preventerVars.lastguildId = -1

    --Addon is finished with loading now
    preventerVars.addonLoaded = true
end

local function LoadSavedVariables()
    if FCONotes.sv == nil and FCONotes.svLoaded then FCONotes.svLoaded = false end
    if FCONotes.svLoaded then return end

    --The default values for the language and save mode
    local defaultsSettings = {
        language 	 		    = 1, --Standard: English
        saveMode     		    = 2, --Standard: Account wide settingsVars.settings
    }

    local defaults = {
        --language 	 		       = 1, --Standard: English
        --saveMode     		       = 2, --Standard: Account wide settingsVars.settings
        languageChoosen			  = false,
        useKeybind                = true,
        saveGuildPersonalNotesAccountWide = false,
        personalGuildNotes        = {},
        personalGuildNotesBackup  = {},
        icon		 		      = {},
        showAlwaysGuildRoster     = false,
    }

    --Preset the default icon colors and textures
    defaults.icon[1] = {}
    defaults.icon[1].color = {}
    defaults.icon[1].color   = {["r"] = 1,["g"] = 0.7137255073,["b"] = 0.2274509817,["a"] = 1} -- orange
    defaults.icon[1].texture = 12 -- (i) symbol
    defaults.icon[1].size    = textureVars.size
    defaults.icon[1].position = {}
    defaults.icon[1].position.x = 800
    defaults.icon[1].position.y = 0


    --Load the user's settingsVars.settings from SavedVariables file -> Account wide of basic version 999 at first
    settingsVars.defaultSettings = ZO_SavedVars:NewAccountWide(addonVars.savedVariablesName, 999, "SettingsForAll", defaultsSettings)

    --Check, by help of basic version 999 settingsVars.settings, if the settingsVars.settings should be loaded for each character or account wide
    --Use the current addon version to read the settingsVars.settings now
    if (settingsVars.defaultSettings.saveMode == 1) then
        settingsVars.settings = ZO_SavedVars:New(addonVars.savedVariablesName, addonVars.addonVersion , "Settings", defaults )
    elseif (settingsVars.defaultSettings.saveMode == 2) then
        settingsVars.settings = ZO_SavedVars:NewAccountWide(addonVars.savedVariablesName, addonVars.addonVersion, "Settings", defaults)
    else
        settingsVars.settings = ZO_SavedVars:NewAccountWide(addonVars.savedVariablesName, addonVars.addonVersion, "Settings", defaults)
    end

    FCONotes.sv = settingsVars
    FCONotes.svLoaded = true
end

--Addon got loaded
local function FCONotes_Loaded(eventCode, addOnNameOfEachAddonLoaded)
    if addOnNameOfEachAddonLoaded ~= addonName then return end

--=============================================================================================================
--	LOAD USER SETTINGS
--=============================================================================================================
    LoadSavedVariables()
--=============================================================================================================

    --Backup the actual personal guild notes
    FCONotes_BackupPersonalGuildMemberNotesNow()

    -- Set Localization
	preventerVars.KeyBindingTexts = false
    Localization()

    -- Register slash commands
    RegisterSlashCommands()

    --Add keybindStrip info
    keystripVars.GuildRosterAddPersonalNote = {
        {
            name = localizationVars.fco_notes_loc["SI_BINDING_NAME_FCO_NOTES_ADD"],
            keybind = "FCO_NOTES_ADD",
            callback = function() FCONotes_CopyNameUnderControl() end,
            alignment = KEYBIND_STRIP_ALIGN_CENTER,
        }
    }

    --Player activated event as alla ddons are loaded and the UI is ready
	EVENT_MANAGER:RegisterForEvent(addonName, EVENT_PLAYER_ACTIVATED, FCONotes_PlayerActivated)
end

-- Register the event "addon loaded" for this addon
local function FCONotes_Initialized()
	EVENT_MANAGER:RegisterForEvent(addonName, EVENT_ADD_ON_LOADED, FCONotes_Loaded)
end

--========== GLOBAL FUNCTIONS ==================================================

--Global function to get text for the keybindings etc.
function FCO_GetNotesLocText(textName, isKeybindingText)
	isKeybindingText = isKeybindingText or false

    preventerVars.KeyBindingTexts = isKeybindingText

	--Do the localization now
   	Localization()

	if textName == nil or localizationVars.fco_notes_loc == nil or localizationVars.fco_notes_loc[textName] == nil then return "" end
   	return localizationVars.fco_notes_loc[textName]
end


--========== API FUNCTIONS ==================================================
--Set the guild member's note via guildId and displayname
--Respecting the setting saveGuildPersonalNotesAccountWide (saving notes for the same account the same in each guild, or not)
--number guildId                    The unique guildId
--String displayName                The @accountName
--boolean useDialog                 true: Show dialog to enter text -> Please read parameter "callbackChangeFunc" below! / false: Directly update FCONotes SavedVariables
--function callbackChangeFunc       Attention: If "useDialog" false: This parameter will not be used!
--                                  A callback function called as the dialog's "Accept" button was used.
--                                  If useDialog true:
--                                  The function callbackChangedFunc will be called. You can specify your code to run
--                                  The function parameters are:
--                                  displayName p_displayName, String p_noteText
--returns Boolean noteWasChanged    If useDialog==false and note was updated in SavedVariables -> Will return true
--                                  If useDialog==false and note was not updated in SavedVariables -> Will return false
--                                  If useDialog==true and callbackChangedFunc==nil (standard calbackFunc was used) and note was updated in SavedVariables -> Will return true
--                                  If useDialog==true and callbackChangedFunc~=nil and is function -> your calbackFunc was used -> Will return true
function FCONotes.SetGuildMemberNote(guildId, displayName, guildMemberNoteText, useDialog, callbackChangedFunc)
    useDialog = useDialog or false
    guildMemberNoteText = guildMemberNoteText or ""
    local retVar = false

    --Update the SavedVariables
    local function updateFCONotesSavedVariables(p_guildId, p_displayName, p_noteText)
        if not p_noteText then p_noteText = "" end
        LoadSavedVariables()
        local settings = settingsVars.settings
        if not settings or not settings.personalGuildNotes then return false end
        if not settings.saveGuildPersonalNotesAccountWide then
            settings.personalGuildNotes[p_guildId] = settings.personalGuildNotes[p_guildId] or {}
            settings.personalGuildNotes[p_guildId][p_displayName] = p_noteText
        else
            settings.personalGuildNotes[p_displayName] = p_noteText
        end
        retVar = true
    end

    --Callback function for the notes dialog "Accept" button
    local standardCallBackFunc = function(p_displayName, p_noteText)
        updateFCONotesSavedVariables(guildId, p_displayName, p_noteText)
    end
    if not callbackChangedFunc or type(callbackChangedFunc) ~= "function" then
        callbackChangedFunc =  standardCallBackFunc
    end

    --Do not show a dialog to input the memberNote?
    if not useDialog then
       updateFCONotesSavedVariables(guildId, displayName, guildMemberNoteText)
    else
    --Show a dialog to input the memberNote
        ZO_Dialogs_ShowDialog("EDIT_NOTE", {displayName = displayName, note = guildMemberNoteText, changedCallback = callbackChangedFunc})
        --Custom callbackFunc was provided?
        if callbackChangedFunc ~= standardCallBackFunc then
            retVar = true
        end
    end
    return retVar
end


--Get the guild member's note via guildId and displayname
--Respecting the setting saveGuildPersonalNotesAccountWide (saving notes for the same account the same in each guild, or not)
--number guildId                        The unique guildId
--String displayName                    The @accountName
--returns String noteText
function FCONotes.GetGuildMemberNote(guildId, displayName)
    local guildMemberNote
    LoadSavedVariables()
    local settings = settingsVars.settings
    if not settings or not settings.personalGuildNotes then return end
    if not settings.saveGuildPersonalNotesAccountWide then
        guildMemberNote = settings.personalGuildNotes[guildId] and settings.personalGuildNotes[guildId][displayName]
    else
        guildMemberNote = settings.personalGuildNotes[displayName]
    end
    return guildMemberNote
end

--========== Initialize the addon FUNCTIONS ==================================================
-- Call the start function for this addon
FCONotes_Initialized()
