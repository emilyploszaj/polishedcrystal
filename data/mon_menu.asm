; MonMenuOptionStrings indexes
	const_def 1
	const MONMENUVALUE_SUMMARY ; 1
	const MONMENUVALUE_SWITCH  ; 2
	const MONMENUVALUE_ITEM    ; 3
	const MONMENUVALUE_CANCEL  ; 4
	const MONMENUVALUE_MOVE    ; 5
	const MONMENUVALUE_MAIL    ; 6
	const MONMENUVALUE_ERROR   ; 7
DEF NUM_MONMENUVALUES EQU const_value - 1

MonMenuOptionStrings:
	list_start MonMenuOptionStrings
	li "Summary"
	li "Switch"
	li "Item"
	li "Cancel"
	li "Moves"
	li "Mail"
	li "Error!"
	assert_list_length NUM_MONMENUVALUES

MonMenuOptions:
; category, item, value; actions are in PokemonActionSubmenu (see engine/pokemon/mon_menu.asm)
	table_width 3, MonMenuOptions
; moves
	db MONMENU_FIELD_MOVE, MONMENUITEM_CUT,        CUT
	db MONMENU_FIELD_MOVE, MONMENUITEM_FLY,        FLY
	db MONMENU_FIELD_MOVE, MONMENUITEM_SURF,       SURF
	db MONMENU_FIELD_MOVE, MONMENUITEM_STRENGTH,   STRENGTH
	db MONMENU_FIELD_MOVE, MONMENUITEM_FLASH,      FLASH
	db MONMENU_FIELD_MOVE, MONMENUITEM_WATERFALL,  WATERFALL
	db MONMENU_FIELD_MOVE, MONMENUITEM_WHIRLPOOL,  WHIRLPOOL
	db MONMENU_FIELD_MOVE, MONMENUITEM_DIG,        DIG
	db MONMENU_FIELD_MOVE, MONMENUITEM_TELEPORT,   TELEPORT
	db MONMENU_FIELD_MOVE, MONMENUITEM_FRESHSNACK, FRESH_SNACK
	db MONMENU_FIELD_MOVE, MONMENUITEM_HEADBUTT,   HEADBUTT
	db MONMENU_FIELD_MOVE, MONMENUITEM_ROCKSMASH,  ROCK_SMASH
; options
	db MONMENU_MENUOPTION, MONMENUITEM_SUMMARY,    MONMENUVALUE_SUMMARY
	db MONMENU_MENUOPTION, MONMENUITEM_SWITCH,     MONMENUVALUE_SWITCH
	db MONMENU_MENUOPTION, MONMENUITEM_ITEM,       MONMENUVALUE_ITEM
	db MONMENU_MENUOPTION, MONMENUITEM_CANCEL,     MONMENUVALUE_CANCEL
	db MONMENU_MENUOPTION, MONMENUITEM_MOVE,       MONMENUVALUE_MOVE
	db MONMENU_MENUOPTION, MONMENUITEM_MAIL,       MONMENUVALUE_MAIL
	db MONMENU_MENUOPTION, MONMENUITEM_ERROR,      MONMENUVALUE_ERROR
	assert_table_length NUM_MONMENUITEMS
	db -1 ; end
