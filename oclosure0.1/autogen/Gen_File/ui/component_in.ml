
(** 
    * OClosure Project - 2010
    * Class goog.ui.Component.State, goog.ui.Component.EventType, goog.ui.Component.Error, goog.ui.Component
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open IdGenerator  (* goog.ui.IdGenerator *)
open Style  (* goog.style *)
open Object  (* goog.object *)
open EventTarget  (* goog.events.EventTarget *)
open EventHandler  (* goog.events.EventHandler *)
open Event  (* goog.events.Event *)
open Events  (* goog.events *)
open DomHelper  (* goog.dom.DomHelper *)
open Dom  (* goog.dom *)
open Array  (* goog.array *)

class external component 
inherit eventTarget: domHelper(* opt? *) ->  <
getStateTransitionEvent : state -> boolean -> eventType;
setDefaultRightToLeft : boolean(* opt? *) -> unit;
getId : string;
setId : string -> unit;
getElement : element;
setElementInternal : element -> unit;
getHandler : eventHandler(* opt? *);
setParent : component -> unit;
getParent : component(* opt? *);
setParentEventTarget : eventTarget -> unit;
getDomHelper : domHelper;
isInDocument : boolean;
createDom : unit;
render : element(* opt? *) -> unit;
renderBefore : element -> unit;
decorate : element -> unit;
canDecorate : element -> boolean;
wasDecorated : boolean;
decorateInternal : element -> unit;
enterDocument : unit;
exitDocument : unit;
disposeInternal : unit;
makeId : string -> string;
getModel : (* any = "*" *);
setModel : (* any = "*" *) -> unit;
getFragmentFromId : string -> string;
getElementByFragment : string -> element;
addChild : component -> boolean(* opt? *) -> unit;
addChildAt : component -> number -> boolean(* opt? *) -> unit;
getContentElement : element;
isRightToLeft : boolean;
setRightToLeft : boolean -> unit;
hasChildren : boolean;
getChildCount : number;
getChildIds : (* Array[string] *);
getChild : string -> component(* opt? *);
getChildAt : number -> component(* opt? *);
forEachChild : function -> object(* opt? *) -> unit;
indexOfChild : component(* opt? *) -> number;
removeChild : string(* | component| null *) -> boolean(* opt? *) -> component;
removeChildAt : number -> boolean(* opt? *) -> component;
removeChildren : boolean(* opt? *) -> unit;
> = "goog.ui.Component"
