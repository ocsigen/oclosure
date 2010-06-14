
(** 
    * OClosure Project - 2010
    * Class goog.ui.BasicMenu.Separator, goog.ui.BasicMenu.Item, goog.ui.BasicMenu
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open ItemEvent  (* goog.ui.ItemEvent *)
open AttachableMenu  (* goog.ui.AttachableMenu *)
open Corner  (* goog.positioning.Corner *)
open AnchoredPosition  (* goog.positioning.AnchoredPosition *)
open Positioning  (* goog.positioning *)
open A11y  (* goog.dom.a11y *)
open Dom  (* goog.dom *)
open Array  (* goog.array *)

class external basicMenu 
inherit attachableMenu: string(* opt? *) -> element(* opt? *) ->  <
getZIndex : number;
setZIndex : number -> unit;
add : item -> unit;
insertAt : item -> number -> unit;
remove : item -> unit;
removeAt : number -> unit;
focus : unit;
getParentMenu : basicMenu;
setAnchorElement : element -> corner(* opt? *) -> eventType(* opt? *) -> unit;
disposeInternal : unit;
setVisible : boolean -> unit;
setSelectedIndex : number -> unit;
setSelectedItem : element(* | item *) -> unit;
getSelectedItem : item;
onMouseOver : event -> unit;
onMouseOut : event -> unit;
onMouseUp : event -> unit;
onKeyDown : keyEvent -> unit;
> = "goog.ui.BasicMenu"

class external item 
inherit disposable: string(* opt? *) -> object(* opt? *) -> basicMenu(* opt? *) ->  <
getCaption : string;
getValue : (* any = "*" *);
setCaption : string -> unit;
setValue : object -> unit;
disposeInternal : unit;
getMenu : basicMenu;
create : element;
remove : unit;
hasSubmenu : boolean;
hasOpenSubmenu : boolean;
getSubmenu : basicMenu;
openSubmenu : unit;
closeSubmenu : unit;
> = "goog.ui.BasicMenu.Item"

class external separator 
inherit item:  <
create : element;
> = "goog.ui.BasicMenu.Separator"
