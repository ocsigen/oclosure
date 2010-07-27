open Js

include DomHelper

let gdom = Tools.variable "[oclosure]goog.dom[/oclosure]"
let setTextContent (e : #Dom_html.element t) (s : js_string t) = 
  gdom##setTextContent(e, s)

module A11y = struct
  type role =
      BUTTON 
    | CHECKBOX 
    | COMBOBOX 
    | DIALOG 
    | LINK 
    | LISTBOX 
    | MAIN 
    | MENU 
    | MENUBAR 
    | MENU_ITEM 
    | MENU_ITEM_CHECKBOX 
    | MENU_ITEM_RADIO 
    | NAVIGATION 
    | OPTION 
    | GROUP 
    | SLIDER 
    | TAB 
    | TAB_LIST 
    | TAB_PANEL 
    | TOOLBAR 

  type role_pre = js_string t
	
  let role_pre_of_role = function
    | BUTTON -> Js.string "button" 
    | CHECKBOX -> Js.string "checkbox" 
    | COMBOBOX -> Js.string "combobox" 
    | DIALOG -> Js.string "dialog" 
    | LINK -> Js.string "link" 
    | LISTBOX -> Js.string "listbox" 
    | MAIN -> Js.string "main" 
    | MENU -> Js.string "menu" 
    | MENUBAR -> Js.string "menubar" 
    | MENU_ITEM -> Js.string "menuitem" 
    | MENU_ITEM_CHECKBOX -> Js.string "menuitemcheckbox"
    | MENU_ITEM_RADIO -> Js.string "menuitemradio" 
    | NAVIGATION -> Js.string "navigation"
    | OPTION -> Js.string "option" 
    | GROUP -> Js.string "group" 
    | SLIDER -> Js.string "slider" 
    | TAB -> Js.string "tab"
    | TAB_LIST -> Js.string "tablist" 
    | TAB_PANEL -> Js.string "tabpanel" 
    | TOOLBAR -> Js.string "toolbar"
	  
  let role_of_role_pre s = match Js.to_string s with
    | "button" -> BUTTON | "checkbox" -> CHECKBOX | "combobox" -> COMBOBOX 
    | "dialog" -> DIALOG | "link" -> LINK | "listbox" -> LISTBOX 
    | "main" -> MAIN | "menu" -> MENU | "menubar" -> MENUBAR 
    | "menuitem" -> MENU_ITEM | "menuitemcheckbox" -> MENU_ITEM_CHECKBOX
    | "menuitemradio" -> MENU_ITEM_RADIO | "navigation" -> NAVIGATION
    | "option" -> OPTION | "group" -> GROUP | "slider" -> SLIDER | "tab" -> TAB
    | "tablist" -> TAB_LIST | "tabpanel" -> TAB_PANEL | "toolbar" -> TOOLBAR
    | _ -> invalid_arg "Goog.Gdom.role_of_role_pre"
end
