
(** 
    * OClosure Project - 2010
    * Class goog.ui.Control
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open UserAgent  (* goog.userAgent *)
open Registry  (* goog.ui.registry *)
open Decorate  (* goog.ui.decorate *)
open ControlRenderer  (* goog.ui.ControlRenderer *)
open ControlContent  (* goog.ui.ControlContent *)
open State  (* goog.ui.Component.State *)
open EventType  (* goog.ui.Component.EventType *)
open Error  (* goog.ui.Component.Error *)
open Component  (* goog.ui.Component *)
open String  (* goog.string *)
open EventType  (* goog.events.KeyHandler.EventType *)
open KeyHandler  (* goog.events.KeyHandler *)
open KeyCodes  (* goog.events.KeyCodes *)
open EventType  (* goog.events.EventType *)
open Event  (* goog.events.Event *)
open MouseButton  (* goog.events.BrowserEvent.MouseButton *)
open Dom  (* goog.dom *)
open Array  (* goog.array *)

class external control 
inherit component: controlContent -> controlRenderer(* opt? *) -> domHelper(* opt? *) ->  <
registerDecorator : string -> function -> unit;
getDecorator : element -> control(* opt? *);
isHandleMouseEvents : boolean;
setHandleMouseEvents : boolean -> unit;
getKeyEventTarget : element;
getKeyHandler : keyHandler;
getRenderer : controlRenderer(* | undefined *);
setRenderer : controlRenderer -> unit;
getExtraClassNames : (* Array[string] *)(* opt? *);
addClassName : string -> unit;
removeClassName : string -> unit;
enableClassName : string -> boolean -> unit;
createDom : unit;
getContentElement : element;
canDecorate : element -> boolean;
decorateInternal : element -> unit;
enterDocument : unit;
exitDocument : unit;
disposeInternal : unit;
getContent : controlContent;
setContent : controlContent -> unit;
setContentInternal : controlContent -> unit;
getCaption : string(* opt? *);
setCaption : string -> unit;
setRightToLeft : unit;
isAllowTextSelection : boolean;
setAllowTextSelection : boolean -> unit;
isVisible : boolean;
setVisible : boolean -> boolean(* opt? *) -> boolean;
isEnabled : boolean;
setEnabled : boolean -> unit;
isHighlighted : boolean;
setHighlighted : boolean -> unit;
isActive : boolean;
setActive : boolean -> unit;
isSelected : boolean;
setSelected : boolean -> unit;
isChecked : boolean;
setChecked : boolean -> unit;
isFocused : boolean;
setFocused : boolean -> unit;
isOpen : boolean;
setOpen : boolean -> unit;
getState : number;
hasState : state -> boolean;
setState : state -> boolean -> unit;
setStateInternal : number -> unit;
isSupportedState : state -> boolean;
setSupportedState : state -> boolean -> unit;
isAutoState : state -> boolean;
setAutoStates : number -> boolean -> unit;
isDispatchTransitionEvents : state -> boolean;
setDispatchTransitionEvents : number -> boolean -> unit;
isTransitionAllowed : state -> boolean -> boolean;
handleMouseOver : browserEvent -> unit;
handleMouseOut : browserEvent -> unit;
handleMouseDown : event -> unit;
handleMouseUp : event -> unit;
handleDblClick : event -> unit;
performActionInternal : event -> boolean;
handleFocus : event -> unit;
handleBlur : event -> unit;
handleKeyEvent : keyEvent -> boolean;
handleKeyEventInternal : keyEvent -> boolean;
> = "goog.ui.Control"
