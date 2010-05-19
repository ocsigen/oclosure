
(** 
    * OClosure Project - 2010
    * Class goog.ui.ComboBoxItem, goog.ui.ComboBox
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open UserAgent  (* goog.userAgent *)
open MenuItem  (* goog.ui.MenuItem *)
open Menu  (* goog.ui.Menu *)
open LabelInput  (* goog.ui.LabelInput *)
open ItemEvent  (* goog.ui.ItemEvent *)
open Component  (* goog.ui.Component *)
open Style  (* goog.style *)
open String  (* goog.string *)
open KeyHandler  (* goog.events.KeyHandler *)
open KeyCodes  (* goog.events.KeyCodes *)
open InputHandler  (* goog.events.InputHandler *)
open Events  (* goog.events *)
open Classes  (* goog.dom.classes *)
open Logger  (* goog.debug.Logger *)
open Timer  (* goog.Timer *)

class external comboBox 
inherit component: domHelper(* opt? *) ->  <
createDom : unit;
enterDocument : unit;
exitDocument : unit;
canDecorate : boolean;
disposeInternal : unit;
dismiss : unit;
addItem : menuItem -> unit;
addItemAt : menuItem -> number -> unit;
removeItem : menuItem -> unit;
removeAllItems : unit;
removeItemAt : number -> unit;
getItemAt : number -> menuItem(* opt? *);
getItemCount : number;
getMenu : menu;
setMatchFunction : function -> unit;
getMatchFunction : function;
setDefaultText : string -> unit;
getDefaultText : string;
setFieldName : string -> unit;
getFieldName : string;
setUseDropdownArrow : boolean -> unit;
setValue : string -> unit;
getValue : string;
getToken : string;
handleKeyEvent : keyEvent -> boolean;
> = "goog.ui.ComboBox"

class external comboBoxItem 
inherit menuItem: string -> object(* opt? *) -> domHelper(* opt? *) ->  <
setSticky : boolean -> unit;
isSticky : boolean;
setFormatFromToken : string -> unit;
> = "goog.ui.ComboBoxItem"
