--[[ Umlauts & special characters list
	ä --> \195\164
	Ä --> \195\132
	ö --> \195\182
	Ö --> \195\150
	ü --> \195\188
	Ü --> \195\156
	ß --> \195\159

   à : \195\160    è : \195\168    ì : \195\172    ò : \195\178    ù : \195\185
   á : \195\161    é : \195\169    í : \195\173    ó : \195\179    ú : \195\186
   â : \195\162    ê : \195\170    î : \195\174    ô : \195\180    û : \195\187
      	 		   ë : \195\171    ï : \195\175
   æ : \195\166    ø : \195\184
   ç : \195\167                                    œ : \197\147
   Ä : \195\132    Ö : \195\150    Ü : \195\156    ß : \195\159
   ä : \195\164    ö : \195\182    ü : \195\188
   ã : \195\163    õ : \195\181  				   \195\177 : \195\177
]]
FCONotes.fco_notesloc = {
	--English
    [1] = {
		-- Options menu
        ["options_description"]                  = "Change notes about your guild mates & other options",
		["options_header1"] 			 		 = "General settings",
    	["options_language"] 					 = "Language",
		["options_language_tooltip"] 			 = "Choose the language",
		["options_language_dropdown_selection1"] = "English",
		["options_language_dropdown_selection2"] = "German",
		["options_language_dropdown_selection3"] = "French",
		["options_language_dropdown_selection4"] = "Spanish",
        ["options_language_dropdown_selection5"] = "Italian",
		["options_language_description1"]		 = "CAUTION: Changing the language/save option will reload the user interface!",
        ["options_reloadui"]					 = "CAUTION: Changing this option will reload the user interface!",
        ["options_savedvariables"]				 = "Save settings",
        ["options_savedvariables_tooltip"]       = "Save the addon settings for all your characters of your account, or single for each character",
        ["options_savedVariables_dropdown_selection1"] = "Each character",
        ["options_savedVariables_dropdown_selection2"] = "Account wide",
		["options_header_options"]				 = "Options",
        ["options_header_color"]				 = "Colors & icons",
        ["options_icon1_color"]					 = "Color",
        ["options_icon1_color_tooltip"]			 = "Color for the note icon",
        ["options_icon1_texture"]				 = "Icon",
        ["options_icon1_texture_tooltip"]		 = "Icon for the note",
        ["options_icon1_size"]				 	 = "Size",
        ["options_icon1_size_tooltip"]			 = "Size of the icon for the note",
        ["options_icon1_x"]                      = "Offset left",
        ["options_icon1_x_tooltip"]              = "Offset of the icon from the left border of the recent guild roster member row",
        ["options_icon1_y"]                      = "Offset top",
        ["options_icon1_y_tooltip"]              = "Offset of the icon from the top border of the recent guild roster member row",
        ["options_note_guild_options"]			 = "Personal guild note options",
        ["options_save_guild_notes_account_wide"] = "Save by account name",
        ["options_save_guild_notes_account_wide_tooltip"] = "Save the personal guild note for the account name, and not for each different guild",
        ["options_header_guild_roster"]         = "Guild roster options",
        ["options_always_open_guild_roster"]    = "Always open guild roster first",
        ["options_always_open_guild_roster_tooltip"] = "Will always open the guild roster at first, instead of the guild home, if you press the keybind or click the menu's icon",
        --Icons
        ["options_lock"]                         = "Lock",
        ["options_gear"]                         = "Helmet",
        ["options_research"]                     = "Research",
        ["options_coins"]                        = "Coins",
        ["options_star"] 						 = "Star",
        ["options_flag"] 						 = "Flag",
        ["options_boxstar"] 					 = "Box Star",
        ["options_medic"] 						 = "Medic",
        ["options_timer"] 						 = "Timer",
        ["options_flask"]						 = "Flask",
        ["options_accept_up"] = "Accept",
        ["options_cancel_up"] = "Cancel",
        ["options_edit_cancel_up"] = "Edit cancel",
        ["options_info_up"] = "Info",
        ["options_pinned_normal"] = "Pinned",
        ["options_cadwell_indexicon_gold_up"] = "Sun",
        ["options_cadwell_indexicon_silver_up"] = "Moon",
        ["options_campaignbonus_keepicon"] = "Keep",
        ["options_campaignbonus_scrollicon"] = "Scroll",
        ["options_campaignbrowser_columnheader_ad"] = "Admeri Dominion",
        ["options_campaignbrowser_columnheader_dc"] = "Daggerfall Convenant",
        ["options_campaignbrowser_columnheader_ep"] = "Ebonheart Pact",
        ["options_campaignbrowser_guild"] = "Guild",
        ["options_campaignbrowser_indexicon_normal_up"] = "Weapons crossed",
        ["options_overview_indexicon_scoring_up"] = "Score",
        ["options_charactercreate_bodyicon_up"] = "Body",
        ["options_gearslot_offhand"] = "Offhand",
        ["options_gearslot_mainhand"] = "Mainhand",
        ["options_gearslot_costume"] = "Costume",
        ["options_chat_mail_up"] = "Mail",
        ["options_chat_notification_up"] = "Notification",
        ["options_alchemy_tabicon_reagent_up"] = "Reagent",
        ["options_smithing_tabicon_refine_up"] = "Refine",
        ["options_deathrecap_killingblow_icon"] = "Killingblow",
        ["options_bait_emptyslot"] = "Bait",
        ["options_guildhistory_indexicon_guildbank_up"] = "Guild bank",
        ["options_guild_indexicon_member_up"] = "Member",
        ["options_tabicon_roster_up"] = "Roster",
        ["options_poi_dungeon_complete"] = "Dungeon",
        ["options_poi_groupinstance_complete"] = "Group instance",
        ["options_servicepin_magesguild"] = "Mages guild",
        ["options_servicepin_fightersguild"] = "Fighters guild",
        ["options_lfg_dps_up"] = "DD",
        ["options_lfg_leader_icon"] = "Leader",
        ["options_lfg_tank_up"] = "Tank",
        ["options_lfg_veterandungeon_up"] = "Veteran dungeon",
        ["options_lfg_normaldungeon_up"] = "Normal dungeon",
        ["options_icon_dualwield"] = "Dual wield",
        ["options_icon_firestaff"] = "Firestaff",
        ["options_icon_bows"] = "Bow",
        ["options_icon_2handed"] = "2 handed",
        ["options_icon_1handed"] = "1 handed",
        ["options_progression_tabicon_backup_inactive"] = "Backup",
        ["options_inventory_tabicon_repair_disabled"] = "Repair",
        ["options_selectedquesthighlight"] = "Quest highlight",
        ["options_writ"] = "Writ",
        ["options_deconstruction"] = "Deconstruction",
        ["options_improvement"]    = "Improvement",
        ["options_withdran_money"] = "Withdraw money",
        ["options_gold"]    = "Gold",
        ["options_guild_bank_access"] = "Keys",
        ["options_intricate"]            = "Intricate",
        ["chat_pre_guild_officer"] = "FCO Note about",
        --Chat commands
        ["chatcommands_info"]					 = "|c00FF00FCO|r|cFFFF00Notes|r|cFFFFFF - Change notes about your guild mates & other options|r",
        ["chatcommands_help"]					 = "'help' / 'list': Shows this information about the addon",
        ["chatcommands_backup"]			         = "'backup': Backup the current saved personal guild member notes.\n|cFF0000ATTENTION:|r Will reload the UI after 3 seconds!",
        ["chatcommands_restore"]			     = "'restore': Restore the last saved personal guild member notes.\n|cFF0000ATTENTION:|r Will reload the UI!",
        ["chatcommands_backup_feedback_true"]    = "|c00FF00FCO|r|cFFFF00Notes|r - Backup has been created - Reloding UI in 3 seconds",
        ["chatcommands_backup_feedback_false"]   = "|cFF0000FCO|r|cFFFF00Notes|r - Backup could not be created!",
        --Context menu
        ["context_menu_add_personal_guild_note"] = "|c22DD22FCO Notes|r Change personal note",
        ["context_menu_remove_personal_guild_note"] = "|cDD2222FCO Notes|r Delete personal note",
        ["context_menu_send_personal_guild_note_to_officer_chat"] = "|c0000DDFCO Notes|r Send to officer chat",
		--Keybindings
		["SI_BINDING_NAME_FCO_NOTES_ADD"]		= "Change note",
    },

	--German / Deutsch
    [2] = {
		-- Options menu
        ["options_description"]                  = "Verfasse Hinweis Texte zu deinen Gilden Mitgliedern & andere Optionen",
		["options_header1"] 			 		 = "Generelle Einstellungen",
    	["options_language"] 					 = "Sprache",
		["options_language_tooltip"] 			 = "Wählen Sie die Sprache aus.",
		["options_language_dropdown_selection1"] = "Englisch",
		["options_language_dropdown_selection2"] = "Deutsch",
		["options_language_dropdown_selection3"] = "Französisch",
		["options_language_dropdown_selection4"] = "Spanisch",
        ["options_language_dropdown_selection5"] = "Italienisch",
		["options_language_description1"]		 = "ACHTUNG: Veränderungen der Sprache/der Speicherart laden die Benutzeroberfläche neu!",
        ["options_reloadui"]					 = "ACHTUNG: Veränderung dieser Option wird die Benutzeroberfläche neu laden!",
        ["options_savedvariables"]				 = "Einstellungen speichern",
        ["options_savedvariables_tooltip"]       = "Die Einstellungen dieses Addons werden für alle Charactere Ihres Accounts, oder für jeden Character einzeln gespeichert.",
        ["options_savedVariables_dropdown_selection1"] = "Jeder Charakter",
        ["options_savedVariables_dropdown_selection2"] = "Ganzer Account",
		["options_header_options"]				 = "Optionen",
        ["options_header_color"]				 = "Farben & Symbole",
        ["options_icon1_color"]					 = "Farbe",
        ["options_icon1_color_tooltip"]			 = "Farbe für das Symbol der Notiz",
        ["options_icon1_texture"]				 = "Symbol",
        ["options_icon1_texture_tooltip"]		 = "Symbol für die Notiz",
        ["options_icon1_size"]				 	 = "Größe",
        ["options_icon1_size_tooltip"]			 = "Größe des Symboles für die Notiz",
        ["options_icon1_x"]                      = "Position von Links",
        ["options_icon1_x_tooltip"]              = "Die Position des Symbols vom linken Rand der Gildenmitglied Zeile entfernt (Standard Wert: xxx)",
        ["options_icon1_y"]                      = "Position von Oben",
        ["options_icon1_y_tooltip"]              = "Die Position des Symbols vom oberen Rand Gildenmitglied Zeile aus gesehen (Standrd Wert: 0)",
        ["options_note_guild_options"]			 = "Persönliche Gildennotiz Optionen",
        ["options_save_guild_notes_account_wide"] = "Speichere pro Accountname",
        ["options_save_guild_notes_account_wide_tooltip"] = "Speichert die persönliche Gildennotiz zum Accountnamen, und nicht unterschiedlich je Gilde",
        ["options_header_guild_roster"]         = "Gilden Mitglieder Optionen",
        ["options_always_open_guild_roster"]    = "Immer Gilden Mitglieder zuerst öffnen",
        ["options_always_open_guild_roster_tooltip"] = "Es werden immer die Gildenmitglieder zuerst aufgerufen, anstelle der Gilden Übersicht, wenn man die Tastenkombination für die Gilde drückt, oder im Menü auf das Symbol klickt.",
        --Icons
        ["options_lock"]                         = "Schloss",
        ["options_gear"]                         = "Helm",
        ["options_research"]                     = "Analyse",
        ["options_coins"]                        = "Münzen",
        ["options_star"] 						 = "Stern",
        ["options_flag"] 						 = "Flagge",
        ["options_boxstar"] 					 = "Box Stern",
        ["options_medic"] 						 = "Heiler",
        ["options_timer"] 						 = "Stoppuhr",
        ["options_flask"]						 = "Fläschchen",
        ["options_cancel_up"] = "Abbrechen",
        ["options_info_up"] = "Info",
        ["options_pinned_normal"] = "Angepinnt",
        ["options_cadwell_indexicon_gold_up"] = "Sonne",
        ["options_cadwell_indexicon_silver_up"] = "Mond",
        ["options_campaignbonus_keepicon"] = "Keep",
        ["options_campaignbonus_scrollicon"] = "Schriftrolle",
        ["options_campaignbrowser_columnheader_ad"] = "Admeri Dominion",
        ["options_campaignbrowser_columnheader_dc"] = "Dolchsturz Bündnis",
        ["options_campaignbrowser_columnheader_ep"] = "Ebenherz Packt",
        ["options_campaignbrowser_guild"] = "Gilde",
        ["options_campaignbrowser_indexicon_normal_up"] = "Gekreuzte Waffen",
        ["options_overview_indexicon_scoring_up"] = "Punkte",
        ["options_charactercreate_bodyicon_up"] = "Körper",
        ["options_gearslot_offhand"] = "Nebenhand",
        ["options_gearslot_mainhand"] = "Haupthand",
        ["options_gearslot_costume"] = "Kostüm",
        ["options_chat_mail_up"] = "Mail",
        ["options_chat_notification_up"] = "Nachricht",
        ["options_alchemy_tabicon_reagent_up"] = "Reagenzien",
        ["options_smithing_tabicon_refine_up"] = "Veredeln",
        ["options_deathrecap_killingblow_icon"] = "Todesstoß",
        ["options_bait_emptyslot"] = "Köder",
        ["options_guildhistory_indexicon_guildbank_up"] = "Gilden Bank",
        ["options_guild_indexicon_member_up"] = "Mitglied",
        ["options_tabicon_roster_up"] = "Mitglieder",
        ["options_poi_dungeon_complete"] = "Dungeon",
        ["options_poi_groupinstance_complete"] = "Gruppen Instanz",
        ["options_servicepin_magesguild"] = "Magier Gilde",
        ["options_servicepin_fightersguild"] = "Krieger Gilde",
        ["options_lfg_dps_up"] = "DD",
        ["options_lfg_leader_icon"] = "Anführer",
        ["options_lfg_tank_up"] = "Tank",
        ["options_lfg_veterandungeon_up"] = "Veteran Dungeon",
        ["options_lfg_normaldungeon_up"] = "Normaler Dungeon",
        ["options_icon_dualwield"] = "Beidhändig",
        ["options_icon_firestaff"] = "Feuerstab",
        ["options_icon_bows"] = "Bogen",
        ["options_icon_2handed"] = "2 Hand",
        ["options_icon_1handed"] = "1 Hand",
        ["options_progression_tabicon_backup_inactive"] = "Frage",
        ["options_inventory_tabicon_repair_disabled"] = "Reperatur",
        ["options_selectedquesthighlight"] = "Besonderheit",
        ["options_writ"] = "Schrieb",
        ["options_deconstruction"] = "Verwerten",
        ["options_improvement"]    = "Aufwerten",
        ["options_withdran_money"] = "Geld abheben",
        ["options_gold"]    = "Gold",
        ["options_guild_bank_access"] = "Schlüssel",
        ["options_intricate"]            = "Aufwendig",
        ["chat_pre_guild_officer"] = "FCO Notiz über",
        --Chat commands
        ["chatcommands_info"]					 = "|c00FF00FCO|r|cFFFF00Notes|cFFFFFF - Verfasse Hinweis Texte zu deinen Gilden Mitgliedern & andere Optionen",
        ["chatcommands_help"]					 = "'help' / 'list': Zeige diese Informationen über das Addon",
        ["chatcommands_backup"]			         = "'backup': Speichert die aktuellen persönlichen Gildenmitglieder Notizen für ein Backup ab.",
        ["chatcommands_restore"]			     = "'restore': Stellt die zuletzte für ein Backup gespeicherten persönlichen Gildenmitglieder Notizen wieder her.\n|cFF0000ACHTUNG:|r Es wird die Benutzeroberfläche neu geladen!",
        ["chatcommands_backup_feedback_true"]    = "|c00FF00FCO|r|cFFFF00Notes|r - Backup wurde erstellt",
        ["chatcommands_backup_feedback_false"]   = "|cFF0000FCO|r|cFFFF00Notes|r - Backup konnte nicht erstellt werden!",
        --Context menu
        ["context_menu_add_personal_guild_note"] = "|c22DD22FCO Notes|r Ändere persönliche Notiz",
        ["context_menu_remove_personal_guild_note"] = "|cDD2222FCO Notes|r Lösche persönliche Notiz",
        ["context_menu_send_personal_guild_note_to_officer_chat"] = "|c0000DDFCO Notes|r An Offizierschat senden",
		--Keybindings
		["SI_BINDING_NAME_FCO_NOTES_ADD"]		= "Hinweis ändern",

    },

    --French / Französisch
	[3] = {
		-- Options menu
        ["options_description"] = "Change notes about your guild mates & other options",
		["options_header1"] = "General",
		["options_language"] = "Langue",
		["options_language_tooltip"] = "Choisir le langue",
		["options_language_dropdown_selection1"] = "Anglais",
		["options_language_dropdown_selection2"] = "Allemand",
		["options_language_dropdown_selection3"] = "Francais",
		["options_language_dropdown_selection4"] = "Espagnol",
        ["options_language_dropdown_selection5"] = "Italien",
		["options_language_description1"]	 = "ATTENTION: Modifier un de ces réglages provoquera un chargement.",
        ["options_reloadui"]				 = "ATTENTION: Modifier ce réglage provoquera un chargement.",
		["options_savedvariables"]	 = "Sauvegarder",
		["options_savedvariables_tooltip"] = "Sauvegarder les données de l'addon pour tous les personages du compte, ou individuellement pour chaque personnages",
		["options_savedVariables_dropdown_selection1"] = "Individuellement",
		["options_savedVariables_dropdown_selection2"] = "Compte",
		["options_header_options"]				 = "Options",
        ["options_header_color"]						 = "Couleur & icône",
        ["options_icon1_color"]							 = "Couleur",
        ["options_icon1_color_tooltip"]					 = "Couleur de l'icône pour la note",
        ["options_icon1_texture"]				 = "Icône",
        ["options_icon1_texture_tooltip"]		 = "Icône pour la note",
        ["options_icon1_size"]				 	 = "Taille",
        ["options_icon1_size_tooltip"]			 = "Taille de l'icône pour la note",

        ["options_icon1_x"]                      = "Offset left",
        ["options_icon1_x_tooltip"]              = "Offset of the icon from the left border of the recent guild roster member row",
        ["options_icon1_y"]                      = "Offset top",
        ["options_icon1_y_tooltip"]              = "Offset of the icon from the top border of the recent guild roster member row",

        ["options_note_guild_options"]			 = "Personal guild note options",
        ["options_save_guild_notes_account_wide"] = "Save by account name",
        ["options_save_guild_notes_account_wide_tooltip"] = "Save the personal guild note for the account name, and not for each different guild",
        ["options_header_guild_roster"]         = "Guild roster options",
        ["options_always_open_guild_roster"]    = "Always open guild roster first",
        ["options_always_open_guild_roster_tooltip"] = "Will always open the guild roster at first, instead of the guild home, if you press the keybind or click the menu's icon",

        --Icons
        ["options_lock"]                         		 = "Cadenas",
        ["options_gear"]                 				 = "Casque",
        ["options_research"]                     		 = "Recherche",
        ["options_coins"]                        		 = "Pièces",
        ["options_star"] 						 		 = "Etoile",
        ["options_flag"] 						 		 = "Drapeau",
        ["options_boxstar"] 					 		 = "Boite étoilée",
        ["options_medic"] 						 		 = "Soigneur",
        ["options_timer"] 						 		 = "Sablier",
        ["options_flask"]						 		 = "Potion",
        ["options_accept_up"] 							 = "Accepter",
        ["options_cancel_up"] 					  		 = "Annuler",
        ["options_edit_cancel_up"]						 = "Annuler édition",
        ["options_info_up"]						 		 = "Info",
        ["options_pinned_normal"] 				 		 = "Epingle",
        ["options_cadwell_indexicon_gold_up"] 	 		 = "Soleil",
        ["options_cadwell_indexicon_silver_up"] 		 = "Lune",
        ["options_campaignbonus_keepicon"] 				 = "Fort",
        ["options_campaignbonus_scrollicon"] 			 = "Parchemin",
        ["options_campaignbrowser_columnheader_ad"] 	 = "Domaine Aldmeri",
        ["options_campaignbrowser_columnheader_dc"] 	 = "Alliance de Daguefilante",
        ["options_campaignbrowser_columnheader_ep"] 	 = "Pacte de Coeurébène",
        ["options_campaignbrowser_guild"] 				 = "Guilde",
        ["options_campaignbrowser_indexicon_normal_up"]  = "Armes croisées",
        ["options_overview_indexicon_scoring_up"] 		 = "Score",
        ["options_charactercreate_bodyicon_up"] 		 = "Corps",
        ["options_gearslot_offhand"] 					 = "Main secondaire",
        ["options_gearslot_mainhand"] 					 = "Main principale",
        ["options_gearslot_costume"] 					 = "Costume",
        ["options_chat_mail_up"] 						 = "Courriel",
        ["options_chat_notification_up"] 				 = "Notification",
        ["options_alchemy_tabicon_reagent_up"] 			 = "Réactif",
        ["options_smithing_tabicon_refine_up"] 			 = "Raffinage",
        ["options_deathrecap_killingblow_icon"] 		 = "Tête de mort",
        ["options_bait_emptyslot"] 						 = "Vers",
        ["options_guildhistory_indexicon_guildbank_up"]  = "Banque de guilde",
        ["options_guild_indexicon_member_up"] 			 = "Membre",
        ["options_tabicon_roster_up"] 					 = "Liste",
        ["options_poi_dungeon_complete"] 				 = "Donjon",
        ["options_poi_groupinstance_complete"] 			 = "Instance de groupe",
        ["options_servicepin_magesguild"] 				 = "Guilde des mages",
        ["options_servicepin_fightersguild"] 			 = "Guilde des guerriers",
        ["options_lfg_dps_up"] 							 = "Dégats",
        ["options_lfg_leader_icon"] 					 = "Leader",
        ["options_lfg_tank_up"] 						 = "Tank",
        ["options_lfg_veterandungeon_up"] 				 = "Donjon vétéran",
        ["options_lfg_normaldungeon_up"] 				 = "Donjon normal",
        ["options_icon_dualwield"] 						 = "Deux armes",
        ["options_icon_firestaff"] 						 = "Bâton de feu",
        ["options_icon_bows"] 							 = "Arc",
        ["options_icon_2handed"] 						 = "2 mains",
        ["options_icon_1handed"]						 = "1 main",
        ["options_progression_tabicon_backup_inactive"]  = "Sauvegarde",
        ["options_inventory_tabicon_repair_disabled"] 	 = "Réparation",
        ["options_selectedquesthighlight"] 				 = "Quêtes en Surbrillance",
        ["options_writ"] = "Missive",
        ["options_deconstruction"] = "Déconstruction",
        ["options_improvement"]    = "Amélioration",
        ["options_withdran_money"] = "Retirer de l'argent",
        ["options_gold"]    = "Gold",
        ["options_guild_bank_access"] = "Clefs",
        ["options_intricate"]            = "Complexe",

        --Chat commands
        ["chatcommands_info"]					 = "|c00FF00FCO|r|cFFFF00Notes|r|cFFFFFF - Change notes about your guild mates & other options|r",
        ["chatcommands_help"]					 = "'help' / 'list': Shows this information about the addon",
        ["chatcommands_backup"]			         = "'backup': Backup the current saved personal guild member notes.\n|cFF0000ATTENTION:|r Will reload the UI after 3 seconds!",
        ["chatcommands_restore"]			     = "'restore': Restore the last saved personal guild member notes.\n|cFF0000ATTENTION:|r Will reload the UI!",
        ["chatcommands_backup_feedback_true"]    = "|c00FF00FCO|r|cFFFF00Notes|r - Backup has been created - Reloding UI in 3 seconds",
        ["chatcommands_backup_feedback_false"]   = "|cFF0000FCO|r|cFFFF00Notes|r - Backup could not be created!",

        --Context menu
        ["context_menu_add_personal_guild_note"] = "|c22DD22FCO Notes|r Change personal note",
        ["context_menu_remove_personal_guild_note"] = "|cDD2222FCO Notes|r Delete personal note",
        ["context_menu_send_personal_guild_note_to_officer_chat"] = "|c0000DDFCO Notes|r Send to officer chat",

        --Keybindings
		["SI_BINDING_NAME_FCO_NOTES_ADD"]		= "Change note",
	},

--Spanish / Español
	[4] = {
		-- Options menu
        ["options_description"] = "Change notes about your guild mates & other options",
		["options_header1"] = "General",
		["options_language"] = "Idioma",
		["options_language_tooltip"] = "Elegir idioma",
		["options_language_dropdown_selection1"] = "Inglés",
		["options_language_dropdown_selection2"] = "Alemán",
		["options_language_dropdown_selection3"] = "Francés",
		["options_language_dropdown_selection4"] = "Espa\195\177ol",
        ["options_language_dropdown_selection5"] = "Italiano",
		["options_language_description1"]	 = "CUIDADO: Modificar uno de estos parámetros recargará la interfaz.",
		["options_reloadui"]	 			 = "CUIDADO: Modificar esto parámetro recargará la interfaz.",
		["options_savedvariables"]	 = "Guardar",
		["options_savedvariables_tooltip"] = "Guardar los parámetros del addon para todos los personajes de la cuenta o individualmente para cada personaje",
		["options_savedVariables_dropdown_selection1"] = "Individualmente",
		["options_savedVariables_dropdown_selection2"] = "Cuenta",
		["options_header_options"]				 = "Opciones",
        ["options_header_color"]						 = "Color e icono",
        ["options_icon1_color"]							 = "Color",
        ["options_icon1_color_tooltip"]					 = "Color del icono para el nota",
        ["options_icon1_texture"]				 = "Icono",
        ["options_icon1_texture_tooltip"]		 = "Icono para el nota",
        ["options_icon1_size"]				 	 = "Tama\195\177o",
        ["options_icon1_size_tooltip"]			 = "Tama\195\177o del icono para el nota",

        ["options_icon1_x"]                      = "Offset left",
        ["options_icon1_x_tooltip"]              = "Offset of the icon from the left border of the recent guild roster member row",
        ["options_icon1_y"]                      = "Offset top",
        ["options_icon1_y_tooltip"]              = "Offset of the icon from the top border of the recent guild roster member row",

        ["options_note_guild_options"]			 = "Personal guild note options",
        ["options_save_guild_notes_account_wide"] = "Save by account name",
        ["options_save_guild_notes_account_wide_tooltip"] = "Save the personal guild note for the account name, and not for each different guild",
        ["options_header_guild_roster"]         = "Guild roster options",
        ["options_always_open_guild_roster"]    = "Always open guild roster first",
        ["options_always_open_guild_roster_tooltip"] = "Will always open the guild roster at first, instead of the guild home, if you press the keybind or click the menu's icon",

        --Icons
        ["options_lock"]                         		 = "Candado",
        ["options_gear"]                 				 = "Yelmo",
        ["options_research"]                     		 = "Investigación",
        ["options_coins"]                        		 = "Monedas",
        ["options_star"] 						 		 = "Estrella",
        ["options_flag"] 						 		 = "Bandera",
        ["options_boxstar"] 					 		 = "Caja estrellada",
        ["options_medic"] 						 		 = "Cura",
        ["options_timer"] 						 		 = "Reloj de arena",
        ["options_flask"]						 		 = "Poción",
        ["options_accept_up"] 							 = "Aceptar",
        ["options_cancel_up"] 					  		 = "Cancelar",
        ["options_edit_cancel_up"]						 = "Cancelar edición",
        ["options_info_up"]						 		 = "Info",
        ["options_pinned_normal"] 				 		 = "Chincheta",
        ["options_cadwell_indexicon_gold_up"] 	 		 = "Sol",
        ["options_cadwell_indexicon_silver_up"] 		 = "Luna",
        ["options_campaignbonus_keepicon"] 				 = "Fuerte",
        ["options_campaignbonus_scrollicon"] 			 = "Pergamino",
        ["options_campaignbrowser_columnheader_ad"] 	 = "Dominio Aldmeri",
        ["options_campaignbrowser_columnheader_dc"] 	 = "Convenio de Daggerfall",
        ["options_campaignbrowser_columnheader_ep"] 	 = "Pacto de Ebonhearth",
        ["options_campaignbrowser_guild"] 				 = "Clan",
        ["options_campaignbrowser_indexicon_normal_up"]  = "Armas",
        ["options_overview_indexicon_scoring_up"] 		 = "Clasificación",
        ["options_charactercreate_bodyicon_up"] 		 = "Cuerpo",
        ["options_gearslot_offhand"] 					 = "Secunda mano",
        ["options_gearslot_mainhand"] 					 = "Mano principal",
        ["options_gearslot_costume"] 					 = "Disfraz",
        ["options_chat_mail_up"] 						 = "Correo",
        ["options_chat_notification_up"] 				 = "Notificación",
        ["options_alchemy_tabicon_reagent_up"] 			 = "Reactivo",
        ["options_smithing_tabicon_refine_up"] 			 = "Refinamiento",
        ["options_deathrecap_killingblow_icon"] 		 = "Calavera",
        ["options_bait_emptyslot"] 						 = "Gusanos",
        ["options_guildhistory_indexicon_guildbank_up"]  = "Banco de clan",
        ["options_guild_indexicon_member_up"] 			 = "Miembro",
        ["options_tabicon_roster_up"] 					 = "Lista",
        ["options_poi_dungeon_complete"] 				 = "Mazmorra",
        ["options_poi_groupinstance_complete"] 			 = "Instancia de grupo",
        ["options_servicepin_magesguild"] 				 = "Gremio de magos",
        ["options_servicepin_fightersguild"] 			 = "Gremio de luchadores",
        ["options_lfg_dps_up"] 							 = "Da\195\177o",
        ["options_lfg_leader_icon"] 					 = "Líder",
        ["options_lfg_tank_up"] 						 = "Tanque",
        ["options_lfg_veterandungeon_up"] 				 = "Mazmorra rango veterano",
        ["options_lfg_normaldungeon_up"] 				 = "Mazmorra normal",
        ["options_icon_dualwield"] 						 = "Dos armas",
        ["options_icon_firestaff"] 						 = "Vara de fuego",
        ["options_icon_bows"] 							 = "Arco",
        ["options_icon_2handed"] 						 = "2 manos",
        ["options_icon_1handed"]						 = "1 mano",
        ["options_progression_tabicon_backup_inactive"]  = "Guardar",
        ["options_inventory_tabicon_repair_disabled"] 	 = "Reparar",
        ["options_selectedquesthighlight"] 				 = "Resaltar",
        ["options_writ"] 								 = "Missive",

        --Chat commands
        ["chatcommands_info"]					 = "|c00FF00FCO|r|cFFFF00Notes|r|cFFFFFF - Change notes about your guild mates & other options|r",
        ["chatcommands_help"]					 = "'help' / 'list': Shows this information about the addon",
        ["chatcommands_backup"]			         = "'backup': Backup the current saved personal guild member notes.\n|cFF0000ATTENTION:|r Will reload the UI after 3 seconds!",
        ["chatcommands_restore"]			     = "'restore': Restore the last saved personal guild member notes.\n|cFF0000ATTENTION:|r Will reload the UI!",
        ["chatcommands_backup_feedback_true"]    = "|c00FF00FCO|r|cFFFF00Notes|r - Backup has been created - Reloding UI in 3 seconds",
        ["chatcommands_backup_feedback_false"]   = "|cFF0000FCO|r|cFFFF00Notes|r - Backup could not be created!",

        --Context menu
        ["context_menu_add_personal_guild_note"] = "|c22DD22FCO Notes|r Change personal note",
        ["context_menu_remove_personal_guild_note"] = "|cDD2222FCO Notes|r Delete personal note",
        ["context_menu_send_personal_guild_note_to_officer_chat"] = "|c0000DDFCO Notes|r Send to officer chat",

		--Keybindings
		["SI_BINDING_NAME_FCO_NOTES_ADD"]		= "Change note",
	},

    --Italian / Italiano
    [5] = {
        -- Options menu
        ["options_description"]                  = "Cambia note circa i vostri compagni di gilda & other options",
        ["options_header1"] 			 		 = "Impostazioni generali",
        ["options_language"] 					 = "Lingua",
        ["options_language_tooltip"] 			 = "Scegli la lingua",
        ["options_language_dropdown_selection1"] = "Inglese",
        ["options_language_dropdown_selection2"] = "Germano",
        ["options_language_dropdown_selection3"] = "Francese",
        ["options_language_dropdown_selection4"] = "Spagnolo",
        ["options_language_dropdown_selection5"] = "Italiano",
        ["options_language_description1"]		 = "ATTENZIONE: modifica della lingua opzione / salvare ricaricherà l'interfaccia utente!",
        ["options_reloadui"]					 = "ATTENZIONE: La modifica di questa opzione ricaricherà l'interfaccia utente!",
        ["options_savedvariables"]				 = "Salvare le impostazioni",
        ["options_savedvariables_tooltip"]       = "Salvare le impostazioni addon per tutti i tuoi personaggi del tuo account, o unico per ogni carattere",
        ["options_savedVariables_dropdown_selection1"] = "Ogni personaggio",
        ["options_savedVariables_dropdown_selection2"] = "Tutto acconto",
        ["options_header_options"]				 = "Opzioni",
        ["options_header_color"]				 = "Colori & icone",
        ["options_icon1_color"]					 = "Colori",
        ["options_icon1_color_tooltip"]			 = "Colore per l'icona della nota",
        ["options_icon1_texture"]				 = "Icona",
        ["options_icon1_texture_tooltip"]		 = "L'icona della nota",
        ["options_icon1_size"]				 	 = "Dimensione",
        ["options_icon1_size_tooltip"]			 = "Dimensioni dell'icona per la nota",
        ["options_icon1_x"]                      = "Offset di sinistra",
        ["options_icon1_x_tooltip"]              = "Offset dell'icona dal bordo sinistro della riga recente membro roster della gilda",
        ["options_icon1_y"]                      = "Offset dall'alto",
        ["options_icon1_y_tooltip"]              = "Offset of the icon from the top border of the recent guild roster member row",
        ["options_note_guild_options"]			 = "Opzioni di nota gilda personale",
        ["options_save_guild_notes_account_wide"] = "Risparmia il nome di acconto",
        ["options_save_guild_notes_account_wide_tooltip"] = "Salvare la nota gilda personale per il nome di account, e non per ogni differente gilda",
        ["options_header_guild_roster"]         = "Guild roster options",
        ["options_always_open_guild_roster"]    = "Always open guild roster first",
        ["options_always_open_guild_roster_tooltip"] = "Will always open the guild roster at first, instead of the guild home, if you press the keybind or click the menu's icon",
        --Icons
        ["options_lock"]                         = "Lock",
        ["options_gear"]                         = "Helmet",
        ["options_research"]                     = "Research",
        ["options_coins"]                        = "Coins",
        ["options_star"] 						 = "Star",
        ["options_flag"] 						 = "Flag",
        ["options_boxstar"] 					 = "Box Star",
        ["options_medic"] 						 = "Medic",
        ["options_timer"] 						 = "Timer",
        ["options_flask"]						 = "Flask",
        ["options_accept_up"] = "Accept",
        ["options_cancel_up"] = "Cancel",
        ["options_edit_cancel_up"] = "Edit cancel",
        ["options_info_up"] = "Info",
        ["options_pinned_normal"] = "Pinned",
        ["options_cadwell_indexicon_gold_up"] = "Sun",
        ["options_cadwell_indexicon_silver_up"] = "Moon",
        ["options_campaignbonus_keepicon"] = "Keep",
        ["options_campaignbonus_scrollicon"] = "Scroll",
        ["options_campaignbrowser_columnheader_ad"] = "Admeri Dominion",
        ["options_campaignbrowser_columnheader_dc"] = "Daggerfall Convenant",
        ["options_campaignbrowser_columnheader_ep"] = "Ebonheart Pact",
        ["options_campaignbrowser_guild"] = "Guild",
        ["options_campaignbrowser_indexicon_normal_up"] = "Weapons crossed",
        ["options_overview_indexicon_scoring_up"] = "Score",
        ["options_charactercreate_bodyicon_up"] = "Body",
        ["options_gearslot_offhand"] = "Offhand",
        ["options_gearslot_mainhand"] = "Mainhand",
        ["options_gearslot_costume"] = "Costume",
        ["options_chat_mail_up"] = "Mail",
        ["options_chat_notification_up"] = "Notification",
        ["options_alchemy_tabicon_reagent_up"] = "Reagent",
        ["options_smithing_tabicon_refine_up"] = "Refine",
        ["options_deathrecap_killingblow_icon"] = "Killingblow",
        ["options_bait_emptyslot"] = "Bait",
        ["options_guildhistory_indexicon_guildbank_up"] = "Guild bank",
        ["options_guild_indexicon_member_up"] = "Member",
        ["options_tabicon_roster_up"] = "Roster",
        ["options_poi_dungeon_complete"] = "Dungeon",
        ["options_poi_groupinstance_complete"] = "Group instance",
        ["options_servicepin_magesguild"] = "Mages guild",
        ["options_servicepin_fightersguild"] = "Fighters guild",
        ["options_lfg_dps_up"] = "DD",
        ["options_lfg_leader_icon"] = "Leader",
        ["options_lfg_tank_up"] = "Tank",
        ["options_lfg_veterandungeon_up"] = "Veteran dungeon",
        ["options_lfg_normaldungeon_up"] = "Normal dungeon",
        ["options_icon_dualwield"] = "Dual wield",
        ["options_icon_firestaff"] = "Firestaff",
        ["options_icon_bows"] = "Bow",
        ["options_icon_2handed"] = "2 handed",
        ["options_icon_1handed"] = "1 handed",
        ["options_progression_tabicon_backup_inactive"] = "Backup",
        ["options_inventory_tabicon_repair_disabled"] = "Repair",
        ["options_selectedquesthighlight"] = "Quest highlight",
        ["options_writ"] = "Writ",
        ["options_deconstruction"] = "Deconstruction",
        ["options_improvement"]    = "Improvement",
        ["options_withdran_money"] = "Withdraw money",
        ["options_gold"]    = "Gold",
        ["options_guild_bank_access"] = "Keys",
        ["options_intricate"]            = "Intricate",
        --Chat commands
        ["chatcommands_info"]					 = "|c00FF00FCO|r|cFFFF00Notes|r|cFFFFFF - Cambia note circa i vostri compagni di gilda & other options|r",
        ["chatcommands_help"]					 = "'help' / 'list': Mostra questa informazioni su l'addon",
        ["chatcommands_backup"]			         = "'backup': Backup attuali note membro della gilda personali salvati.\n|cFF0000ATTENTION:|r Ricaricherà l'interfaccia utente!",
        ["chatcommands_restore"]			     = "'restore': Ripristinare l'ultimo salvataggio della Corporazione personale membro notes.\n|cFF0000ATTENTION:|r Ricaricherà l'interfaccia utente!",
        ["chatcommands_backup_feedback_true"]    = "|c00FF00FCO|r|cFFFF00Notes|r - Backup è stato creato - ReloadUI in 3 secondi!",
        ["chatcommands_backup_feedback_false"]   = "|cFF0000FCO|r|cFFFF00Notes|r - Backup non può essere creata!",
        --Context menu
        ["context_menu_add_personal_guild_note"] = "|c22DD22FCO Notes|r Cambiare nota personale",
        ["context_menu_remove_personal_guild_note"] = "|cDD2222FCO Notes|r Eliminare nota personale",
        ["context_menu_send_personal_guild_note_to_officer_chat"] = "|c0000DDFCO Notes|r Send to officer chat",
        --Keybindings
        ["SI_BINDING_NAME_FCO_NOTES_ADD"]		= "Cambiare nota personale",
    },

}
local fco_notesloc = FCONotes.fco_notesloc

--Meta table trick to use english localization for german, french and spanish values, which are missing
setmetatable(fco_notesloc[2], {__index = fco_notesloc[1]})
setmetatable(fco_notesloc[3], {__index = fco_notesloc[1]})
setmetatable(fco_notesloc[4], {__index = fco_notesloc[1]})
setmetatable(fco_notesloc[5], {__index = fco_notesloc[1]})
