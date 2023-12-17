local FCON = FCONotes

--==========================================================================================================================================
--									FCONotes texture names
--==========================================================================================================================================
--The textures for the marker icons
FCON.textureVars.MARKER_TEXTURES = {
    [1]  = [[/esoui/art/campaign/campaignbrowser_fullpop.dds]],
    [2]  = [[/esoui/art/inventory/inventory_tabicon_armor_disabled.dds]],
    [3]  = [[/esoui/art/crafting/smithing_tabicon_research_disabled.dds]],
    [4]  = [[/esoui/art/tradinghouse/tradinghouse_sell_tabicon_disabled.dds]],
    [5]  = [[/esoui/art/campaign/overview_indexicon_bonus_disabled.dds]],
    [6]  = [[/esoui/art/ava/tabicon_bg_score_disabled.dds]],
    [7]  = [[/esoui/art/guild/guild_rankicon_leader_large.dds]],
    [8]  = [[/esoui/art/lfg/lfg_healer_up.dds]],
    [9]  = [[/esoui/art/miscellaneous/timer_32.dds]],
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
    --[54] = [[/esoui/art/journal/journal_tabicon_cadwell_up.dds]],
    [54] = [[/esoui/art/guild/guildHeraldry_indexIcon_background_up.dds]],
    [55] = [[/esoui/art/crafting/enchantment_tabicon_deconstruction_disabled.dds]],
    [56] = [[/esoui/art/crafting/smithing_tabicon_improve_disabled.dds]],
    [57] = [[/esoui/art/bank/bank_tabicon_deposit_up.dds]],
    [58] = [[/esoui/art/currency/currency_gold.dds]],
    [59] = [[/esoui/art/guild/guild_bankaccess.dds]],
    [60] = [[/esoui/art/progression/progression_indexicon_guilds_up.dds]],
    --Added with FCOIS version 1.2.1
    [61] = [[/esoui/art/buttons/accept_up.dds]],
    [62] = [[/esoui/art/buttons/checkbox_checked.dds]],
    [63] = [[/esoui/art/buttons/checkbox_indeterminate.dds]],
    [64] = [[/esoui/art/buttons/dropbox_arrow_normal.dds]],
    [65] = [[/esoui/art/buttons/decline_up.dds]],
    [66] = [[/esoui/art/buttons/edit_cancel_up.dds]],
    [67] = [[/esoui/art/buttons/edit_up.dds]],
    [68] = [[/esoui/art/buttons/edit_save_up.dds]],
    [69] = [[/esoui/art/buttons/gamepad/console-widget-slider.dds]],
    [70] = [[/esoui/art/buttons/gamepad/console-widget-stepper.dds]],
    [71] = [[/esoui/art/buttons/gamepad/gp_checkbox_down.dds]],
    [72] = [[/esoui/art/buttons/gamepad/gp_checkbox_up.dds]],
    [73] = [[/esoui/art/buttons/gamepad/gp_downarrow.dds]],
    [74] = [[/esoui/art/buttons/gamepad/gp_menu_rightarrow.dds]],
    [75] = [[/esoui/art/buttons/gamepad/gp_uparrow.dds]],
    [76] = [[/esoui/art/buttons/gamepad/gp_spinnerlr.dds]],
    [77] = [[/esoui/art/buttons/gamepad/ps4/nav_ps4_circle.dds]],
    [78] = [[/esoui/art/buttons/gamepad/ps4/nav_ps4_ls.dds]],
    [79] = [[/esoui/art/buttons/gamepad/ps4/nav_ps4_rs.dds]],
    [80] = [[/esoui/art/buttons/gamepad/ps4/nav_ps4_share.dds]],
    [81] = [[/esoui/art/buttons/gamepad/ps4/nav_ps4_square.dds]],
    [82] = [[/esoui/art/buttons/gamepad/ps4/nav_ps4_trackpad_circle.dds]],
    [83] = [[/esoui/art/buttons/gamepad/ps4/nav_ps4_trackpad_leftright.dds]],
    [84] = [[/esoui/art/buttons/gamepad/ps4/nav_ps4_trackpad_lefttoright.dds]],
    [85] = [[/esoui/art/buttons/gamepad/ps4/nav_ps4_triangle.dds]],
    [86] = [[/esoui/art/buttons/gamepad/ps4/nav_ps4_trackpad_updown.dds]],
    [87] = [[/esoui/art/buttons/gamepad/ps4/nav_ps4_x.dds]],
    [88] = [[/esoui/art/buttons/gamepad/xbox/leftarrow_down.dds]],
    [89] = [[/esoui/art/buttons/gamepad/xbox/nav_xbone_a.dds]],
    [90] = [[/esoui/art/buttons/gamepad/xbox/nav_xbone_b.dds]],
    [91] = [[/esoui/art/buttons/gamepad/xbox/nav_xbone_dpadright.dds]],
    [92] = [[/esoui/art/buttons/gamepad/xbox/nav_xbone_rs_menu.dds]],
    [93] = [[/esoui/art/buttons/gamepad/xbox/nav_xbone_x.dds]],
    [94] = [[/esoui/art/buttons/gamepad/xbox/nav_xbone_y.dds]],
    [95] = [[/esoui/art/buttons/radiobuttonup.dds]],
    [96] = [[/esoui/art/buttons/radiobuttondown.dds]],
    [97] = [[/esoui/art/buttons/smoothsliderbutton_up.dds]],
    [98] = [[/esoui/art/buttons/swatchframe_selected.dds]],
    [99] = [[/esoui/art/buttons/switch_disabled.dds]],
    [100] = [[/esoui/art/buttons/unpinned_normal.dds]],
-------Added on 2018-10-22 Mukrmire patch,, API100125
    [101] = [[/esoui/art/mounts/tabicon_mounts_disabled.dds]],
    [102] = [[/esoui/art/mounts/tabicon_ridingskills_disabled.dds]],
    [103] = [[/esoui/art/mounts/ridingskill_stamina.dds]],
    [104] = [[/esoui/art/mounts/ridingskill_speed.dds]],
    [105] = [[/esoui/art/mounts/ridingskill_ready.dds]],
    [106] = [[/esoui/art/mounts/ridingskill_capacity.dds]],
    [107] = [[/esoui/art/mounts/feed_icon.dds]],
    [108] = [[/esoui/art/mounts/activemount_icon.dds]],
    [109] = [[/esoui/art/menubar/gamepad/gp_playermenu_icon_communications.dds]],
    [110] = [[/esoui/art/menubar/gamepad/gp_playermenu_icon_collections.dds]],
    [111] = [[/esoui/art/menubar/gamepad/gp_playermenu_icon_character.dds]],
    [112] = [[/esoui/art/menubar/gamepad/gp_playermenu_icon_champion.dds]],
    [113] = [[/esoui/art/menubar/gamepad/gp_playermenu_icon_achievements.dds]],
    [114] = [[/esoui/art/menubar/gamepad/gp_playermenu_icon_contacts.dds]],
    [115] = [[/esoui/art/menubar/gamepad/gp_playermenu_icon_crowncrates.dds]],
    [116] = [[/esoui/art/menubar/gamepad/gp_playermenu_icon_emotes.dds]],
    [117] = [[/esoui/art/menubar/gamepad/gp_playermenu_icon_groups.dds]],
    [118] = [[/esoui/art/menubar/gamepad/gp_playermenu_icon_journal.dds]],
    [119] = [[/esoui/art/menubar/gamepad/gp_playermenu_icon_logout.dds]],
    [120] = [[/esoui/art/menubar/gamepad/gp_playermenu_icon_lorelibrary.dds]],
    [121] = [[/esoui/art/menubar/gamepad/gp_playermenu_icon_multiplayer.dds]],
    [122] = [[/esoui/art/menubar/gamepad/gp_playermenu_icon_settings.dds]],
    [123] = [[/esoui/art/menubar/gamepad/gp_playermenu_icon_store.dds]],
    [124] = [[/esoui/art/menubar/gamepad/gp_playermenu_icon_submitfeedback.dds]],
    [125] = [[/esoui/art/menubar/gamepad/gp_playermenu_icon_terms.dds]],
    [126] = [[/esoui/art/menubar/gamepad/gp_playermenu_icon_textchat.dds]],
    [127] = [[/esoui/art/menubar/gamepad/gp_playermenu_icon_unstuck.dds]],
    [128] = [[/esoui/art/menubar/gamepad/gp_playermenu_statusicon_pointstospend.dds]],
    [129] = [[/esoui/art/tutorial/bank_tabicon_deposit_up.dds]],
    [130] = [[/esoui/art/bank/bank_tabicon_gold_up.dds]],
    [131] = [[/esoui/art/bank/bank_tabicon_telvar_up.dds]],
    [132] = [[/esoui/art/tutorial/bank_tabicon_withdraw_up.dds]],
    [133] = [[/esoui/art/tutorial/guild_indexicon_misc09_up.dds]],
    [134] = [[/esoui/art/icons/store_upgrade_bank.dds]],
    [135] = [[/esoui/art/campaign/campaignbrowser_guild.dds]],
    [136] = [[/esoui/art/currency/currency_fightersguild.dds]],
    [137] = [[/esoui/art/currency/currency_magesguild.dds]],
    [138] = [[/esoui/art/currency/currency_thievesguild.dds]],
    [139] = [[/esoui/art/guild/gamepad/gp_guild_heraldryaccess.dds]],
    [140] = [[/esoui/art/guild/gamepad/gp_guild_menuicon_customization.dds]],
    [141] = [[/esoui/art/guild/gamepad/gp_guild_menuicon_leaveguild.dds]],
    [142] = [[/esoui/art/guild/gamepad/gp_guild_menuicon_ownership.dds]],
    [143] = [[/esoui/art/guild/gamepad/gp_guild_menuicon_purchases.dds]],
    [144] = [[/esoui/art/guild/gamepad/gp_guild_menuicon_releaseownership.dds]],
    [145] = [[/esoui/art/guild/gamepad/gp_guild_menuicon_trader.dds]],
    [146] = [[/esoui/art/guild/gamepad/gp_guild_menuicon_unlocks.dds]],
    [147] = [[/esoui/art/guild/gamepad/gp_guild_options_changeicon.dds]],
    [148] = [[/esoui/art/guild/gamepad/gp_guild_options_permissions.dds]],
    [149] = [[/esoui/art/guild/gamepad/gp_guild_options_rename.dds]],
    [150] = [[/esoui/art/guild/gamepad/gp_guild_tradinghouseaccess.dds]],
    [151] = [[/esoui/art/treeicons/gamepad/gp_tutorial_idexicon_thievesguild.dds]],
    [152] = [[/esoui/art/tutorial/guild-tabicon_heraldry_up.dds]],
    [153] = [[/esoui/art/tutorial/guild-tabicon_home_up.dds]],
    [154] = [[/esoui/art/tutorial/guild_indexicon_leader_up.dds]],
    [155] = [[/esoui/art/tutorial/guild_indexicon_recruit_up.dds]],
    [156] = [[/esoui/art/tutorial/guild_indexicon_officer_up.dds]],
    [157] = [[/esoui/art/tutorial/guild_indexicon_misc01_up.dds]],
    [158] = [[/esoui/art/tutorial/guild_indexicon_misc02_up.dds]],
    [159] = [[/esoui/art/tutorial/guild_indexicon_misc03_up.dds]],
    [160] = [[/esoui/art/tutorial/guild_indexicon_misc04_up.dds]],
    [161] = [[/esoui/art/tutorial/guild_indexicon_misc05_up.dds]],
    [162] = [[/esoui/art/tutorial/guild_indexicon_misc06_up.dds]],
    [163] = [[/esoui/art/tutorial/guild_indexicon_misc07_up.dds]],
    [164] = [[/esoui/art/tutorial/guild_indexicon_misc08_up.dds]],
    [165] = [[/esoui/art/tutorial/guild_indexicon_misc10_up.dds]],
    [166] = [[/esoui/art/tutorial/guild_indexicon_misc11_up.dds]],
    [167] = [[/esoui/art/tutorial/guild_indexicon_misc12_up.dds]],
    [168] = [[/esoui/art/guild/guildbanner_icon_aldmeri.dds]],
    [169] = [[/esoui/art/guild/guildbanner_icon_daggerfall.dds]],
    [170] = [[/esoui/art/guild/guildbanner_icon_ebonheart.dds]],
    [171] = [[/esoui/art/tutorial/guildheraldry_indexicon_background_up.dds]],
    [172] = [[/esoui/art/guild/guildheraldry_indexicon_crest_up.dds]],
    [173] = [[/esoui/art/tutorial/guildstore-tradinghouse_listings_tabicon_up.dds]],
    [174] = [[/esoui/art/tutorial/progression_tabicon_fightersguild_up.dds]],
    [175] = [[/esoui/art/tutorial/progression_tabicon_magesguild_up.dds]],
    [176] = [[/esoui/art/icons/store_thievesguilddlc_collectable.dds]],
    [177] = [[/esoui/art/tutorial/tabicon_createguild_up.dds]],
    [178] = [[/esoui/art/voip/voip-guild.dds]],
    [179] = [[/esoui/art/death/death_timer_fill.dds]],
    [180] = [[/esoui/art/death/death_soulreservoir_icon.dds]],
    [181] = [[/esoui/art/currency/alliancepoints_32.dds]],
    [182] = [[/esoui/art/tutorial/inventory_trait_retrait_icon.dds]],
    [183] = [[/esoui/art/currency/currency_gold_32.dds]],
    [184] = [[/esoui/art/currency/currency_inspiration_32.dds]],
    [185] = [[/esoui/art/currency/currency_seedcrystal_32.dds]],
    [186] = [[/esoui/art/currency/currency_seedcrystals_multi_mipmap.dds]],
    [187] = [[/esoui/art/currency/currency_telvar_32.dds]],
    [188] = [[/esoui/art/currency/currency_writvoucher.dds]],
    [189] = [[/esoui/art/dye/dye_hat.dds]],
    [190] = [[/esoui/art/dye/dye_swatch_highlight.dds]],
    [191] = [[/esoui/art/dye/dyes_categoryicon_up.dds]],
    [192] = [[/esoui/art/dye/dyes_tabicon_outfitstyledye_up.dds]],
    [193] = [[/esoui/art/dye/outfitslot_staff.dds]],
    [194] = [[/esoui/art/dye/outfitslot_twohanded.dds]],
    [195] = [[/esoui/art/armory/builditem_icon.dds]],
    [196] = [[/esoui/art/armory/newbuild_icon.dds]],
    [197] = [[/esoui/art/unitframes/groupicon_leader.dds]],
    [198] = [[/esoui/art/companion/keyboard/category_u30_companions_up.dds]],
    [199] = [[/esoui/art/battlegrounds/battlegroundscapturebar_teambadge_green.dds]],
    [200] = [[/esoui/art/battlegrounds/battlegroundscapturebar_teambadge_orange.dds]],
    [201] = [[/esoui/art/battlegrounds/battlegroundscapturebar_teambadge_purple.dds]],
    [202] = [[/esoui/art/icons/store_battleground.dds]],
    [203] = [[/esoui/art/collections/collections_tabIcon_itemSets_down.dds]],
    [204] = [[/esoui/art/collections/collections_tabIcon_itemSets_up.dds]],
    [205] = [[/esoui/art/armory/buildicons/buildicon_1.dds]],
    [206] = [[/esoui/art/armory/buildicons/buildicon_2.dds]],
    [207] = [[/esoui/art/armory/buildicons/buildicon_3.dds]],
    [208] = [[/esoui/art/armory/buildicons/buildicon_4.dds]],
    [209] = [[/esoui/art/armory/buildicons/buildicon_5.dds]],
    [210] = [[/esoui/art/armory/buildicons/buildicon_6.dds]],
    [211] = [[/esoui/art/armory/buildicons/buildicon_7.dds]],
    [212] = [[/esoui/art/armory/buildicons/buildicon_8.dds]],
    [213] = [[/esoui/art/armory/buildicons/buildicon_9.dds]],
    [214] = [[/esoui/art/armory/buildicons/buildicon_10.dds]],
    [215] = [[/esoui/art/armory/buildicons/buildicon_11.dds]],
    [216] = [[/esoui/art/armory/buildicons/buildicon_12.dds]],
    [217] = [[/esoui/art/armory/buildicons/buildicon_13.dds]],
    [218] = [[/esoui/art/armory/buildicons/buildicon_14.dds]],
    [219] = [[/esoui/art/armory/buildicons/buildicon_15.dds]],
    [220] = [[/esoui/art/armory/buildicons/buildicon_16.dds]],
    [221] = [[/esoui/art/armory/buildicons/buildicon_17.dds]],
    [222] = [[/esoui/art/armory/buildicons/buildicon_18.dds]],
    [223] = [[/esoui/art/armory/buildicons/buildicon_19.dds]],
    [224] = [[/esoui/art/armory/buildicons/buildicon_20.dds]],
    [225] = [[/esoui/art/armory/buildicons/buildicon_21.dds]],
    [226] = [[/esoui/art/armory/buildicons/buildicon_22.dds]],
    [227] = [[/esoui/art/armory/buildicons/buildicon_23.dds]],
    [228] = [[/esoui/art/armory/buildicons/buildicon_24.dds]],
    [229] = [[/esoui/art/armory/buildicons/buildicon_25.dds]],
    [230] = [[/esoui/art/armory/buildicons/buildicon_26.dds]],
    [231] = [[/esoui/art/armory/buildicons/buildicon_27.dds]],
    [232] = [[/esoui/art/armory/buildicons/buildicon_28.dds]],
    [233] = [[/esoui/art/armory/buildicons/buildicon_29.dds]],
    [234] = [[/esoui/art/armory/buildicons/buildicon_30.dds]],
    [235] = [[/esoui/art/armory/buildicons/buildicon_31.dds]],
    [236] = [[/esoui/art/armory/buildicons/buildicon_32.dds]],
    [237] = [[/esoui/art/armory/buildicons/buildicon_33.dds]],
    [238] = [[/esoui/art/armory/buildicons/buildicon_34.dds]],
    [239] = [[/esoui/art/armory/buildicons/buildicon_35.dds]],
    [240] = [[/esoui/art/armory/buildicons/buildicon_36.dds]],
    [241] = [[/esoui/art/armory/buildicons/buildicon_37.dds]],
    [242] = [[/esoui/art/armory/buildicons/buildicon_38.dds]],
    [243] = [[/esoui/art/armory/buildicons/buildicon_39.dds]],
    [244] = [[/esoui/art/armory/buildicons/buildicon_40.dds]],
    [245] = [[/esoui/art/armory/buildicons/buildicon_41.dds]],
    [246] = [[/esoui/art/armory/buildicons/buildicon_42.dds]],
    [247] = [[/esoui/art/armory/buildicons/buildicon_43.dds]],
    [248] = [[/esoui/art/armory/buildicons/buildicon_44.dds]],
    [249] = [[/esoui/art/armory/buildicons/buildicon_45.dds]],
    [250] = [[/esoui/art/armory/buildicons/buildicon_46.dds]],
    [251] = [[/esoui/art/armory/buildicons/buildicon_47.dds]],
    [252] = [[/esoui/art/armory/buildicons/buildicon_48.dds]],
    [253] = [[/esoui/art/armory/buildicons/buildicon_49.dds]],
    [254] = [[/esoui/art/armory/buildicons/buildicon_50.dds]],
    [255] = [[/esoui/art/armory/buildicons/buildicon_51.dds]],
    [256] = [[/esoui/art/armory/buildicons/buildicon_52.dds]],
    [257] = [[/esoui/art/armory/buildicons/buildicon_53.dds]],
    [258] = [[/esoui/art/armory/buildicons/buildicon_54.dds]],
    [259] = [[/esoui/art/armory/buildicons/buildicon_55.dds]],
    [260] = [[/esoui/art/armory/buildicons/buildicon_56.dds]],
    [261] = [[/esoui/art/armory/buildicons/buildicon_57.dds]],
    [262] = [[/esoui/art/armory/buildicons/buildicon_58.dds]],
    [263] = [[/esoui/art/armory/buildicons/buildicon_59.dds]],
    [264] = [[/esoui/art/armory/buildicons/buildicon_60.dds]],
    [265] = [[/esoui/art/armory/buildicons/buildicon_61.dds]],
    [266] = [[/esoui/art/armory/buildicons/buildicon_62.dds]],
    [267] = [[/esoui/art/armory/buildicons/buildicon_63.dds]],
    [268] = [[/esoui/art/armory/buildicons/buildicon_64.dds]],
    [269] = [[/esoui/art/armory/buildicons/buildicon_65.dds]],
    [270] = [[/esoui/art/armory/buildicons/buildicon_66.dds]],
    [271] = [[/esoui/art/armory/buildicons/buildicon_67.dds]],
    [272] = [[/esoui/art/armory/buildicons/buildicon_68.dds]],
    [273] = [[/esoui/art/armory/buildicons/buildicon_69.dds]],
    [274] = [[/esoui/art/armory/buildicons/buildicon_70.dds]],
    [275] = [[/esoui/art/armory/buildicons/buildicon_71.dds]],
    [276] = [[/esoui/art/armory/buildicons/buildicon_72.dds]],
    [277] = [[/esoui/art/armory/buildicons/buildicon_73.dds]],
    [278] = [[/esoui/art/armory/buildicons/buildicon_74.dds]],
    [279] = [[/esoui/art/inventory/gamepad/gp_inventory_icon_companionitems.dds]],
}


--Additional size for the textures, if the texture got a special size
-- Used at the filter buttons e.g. and at the context menus
-->width:                       Used at filter buttons and context menus to resize the icons properly
-->height:                      Used at filter buttons and context menus to resize the icons properly
-->offsetLeft:                  Used at filter buttons to move the icon
-->offsetTop:                   Used at filter buttons to move the icon
-->contextMenuOffsetLeft:       Used at context menus to move the icon
-->contextMenuOffsetTop:        Used at context menus to move the icon
FCON.textureVars.MARKER_TEXTURES_SIZE = {
    --[markerTextureIndexFromTable FCOIS.textureVars.MARKER_TEXTURES] = { width = 32, height = 32, offsetLeft = 0, offsetTop = 0, contextMenuOffsetLeft = 0, contextMenuOffsetTop = 0,  },   --Description of marker icon texture
    [27] = { width= 0,     height= 0,     offsetLeft= 0, offsetTop= 0,      contextMenuOffsetLeft= 1,      contextMenuOffsetTop= 0 },       -- Costume cloathes hanger
    [58] = { width= 16,    height= 16,    offsetLeft= 1, offsetTop= -19,    contextMenuOffsetLeft= 1,      contextMenuOffsetTop= -19 },     -- Single coin icon
}