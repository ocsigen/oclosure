
(** 
    * OClosure Project - 2010
    * Class goog.ui.Dialog.EventType, goog.ui.Dialog.Event, goog.ui.Dialog.DefaultButtonKeys, goog.ui.Dialog.ButtonSet, goog.ui.Dialog
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open UserAgent  (* goog.userAgent *)
open Component  (* goog.ui.Component *)
open Style  (* goog.style *)
open Map  (* goog.structs.Map *)
open Structs  (* goog.structs *)
open Rect  (* goog.math.Rect *)
open Dragger  (* goog.fx.Dragger *)
open KeyCodes  (* goog.events.KeyCodes *)
open FocusHandler  (* goog.events.FocusHandler *)
open Events  (* goog.events *)
open Iframe  (* goog.dom.iframe *)
open Classes  (* goog.dom.classes *)
open A11y  (* goog.dom.a11y *)
open TagName  (* goog.dom.TagName *)
open NodeType  (* goog.dom.NodeType *)
open Dom  (* goog.dom *)
open Timer  (* goog.Timer *)

class external dialog 
inherit component: string(* opt? *) -> boolean(* opt? *) -> domHelper(* opt? *) ->  <
setTitle : string -> unit;
getTitle : string;
setContent : string -> unit;
getContent : string;
getContentElement : element;
getTitleElement : element;
getTitleTextElement : element;
getTitleCloseElement : element;
getButtonElement : element;
getDialogElement : element;
getBackgroundElement : element;
getBackgroundElementOpacity : number;
setBackgroundElementOpacity : number -> unit;
setModal : boolean -> unit;
getModal : boolean;
getClass : string;
setDraggable : boolean -> unit;
getDraggable : boolean;
createDom : unit;
render : element(* opt? *) -> unit;
renderBefore : element -> unit;
canDecorate : element -> (* any = "*" *);
decorateInternal : element -> unit;
enterDocument : unit;
exitDocument : unit;
setVisible : boolean -> unit;
isVisible : boolean;
focus : unit;
reposition : unit;
getHasTitleCloseButton : boolean;
setHasTitleCloseButton : boolean -> unit;
isEscapeToCancel : boolean;
setEscapeToCancel : boolean -> unit;
setDisposeOnHide : boolean -> unit;
getDisposeOnHide : boolean;
disposeInternal : unit;
setButtonSet : buttonSet(* opt? *) -> unit;
getButtonSet : buttonSet(* opt? *);
> = "goog.ui.Dialog"

class external event 
inherit event: string -> string(* | element *) ->  <
> = "goog.ui.Dialog.Event"

class external buttonSet 
inherit map: domHelper(* opt? *) ->  <
set : string -> string(* | element *) -> boolean(* opt? *) -> boolean(* opt? *) -> buttonSet;
attachToElement : element -> unit;
render : unit;
decorate : element -> unit;
setDefault : string(* opt? *) -> unit;
getDefault : string(* opt? *);
setCancel : string(* opt? *) -> unit;
getCancel : string(* opt? *);
getButton : string -> element;
getAllButtons : nodeList;
> = "goog.ui.Dialog.ButtonSet"
