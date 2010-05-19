
(** 
    * OClosure Project - 2010
    * Class goog.ui.Container.Orientation, goog.ui.Container
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open ContainerRenderer  (* goog.ui.ContainerRenderer *)
open State  (* goog.ui.Component.State *)
open EventType  (* goog.ui.Component.EventType *)
open Error  (* goog.ui.Component.Error *)
open Component  (* goog.ui.Component *)
open Style  (* goog.style *)
open EventType  (* goog.events.KeyHandler.EventType *)
open KeyHandler  (* goog.events.KeyHandler *)
open KeyCodes  (* goog.events.KeyCodes *)
open EventType  (* goog.events.EventType *)
open State  (* goog.dom.a11y.State *)
open A11y  (* goog.dom.a11y *)
open Dom  (* goog.dom *)

class external container 
inherit component: orientation(* opt? *) -> containerRenderer(* opt? *) -> domHelper(* opt? *) ->  <
getKeyEventTarget : element;
setKeyEventTarget : element(* | undefined *) -> unit;
getKeyHandler : keyHandler;
getRenderer : containerRenderer;
setRenderer : containerRenderer -> unit;
createDom : unit;
getContentElement : element;
canDecorate : element -> boolean;
decorateInternal : element -> unit;
enterDocument : unit;
exitDocument : unit;
disposeInternal : unit;
handleEnterItem : event -> boolean;
handleHighlightItem : event -> unit;
handleUnHighlightItem : event -> unit;
handleOpenItem : event -> unit;
handleCloseItem : event -> unit;
handleMouseDown : browserEvent -> unit;
handleDocumentMouseUp : browserEvent -> unit;
handleChildMouseEvents : browserEvent -> unit;
getOwnerControl : node -> control(* opt? *);
handleFocus : browserEvent -> unit;
handleBlur : browserEvent -> unit;
handleKeyEvent : keyEvent -> boolean;
handleKeyEventInternal : keyEvent -> boolean;
addChild : control -> boolean(* opt? *) -> unit;
getChild : string -> control;
getChildAt : number -> control;
addChildAt : control -> number -> boolean(* opt? *) -> unit;
removeChild : string(* | control *) -> boolean(* opt? *) -> control;
getOrientation : orientation(* opt? *);
setOrientation : orientation -> unit;
isVisible : boolean;
setVisible : boolean -> boolean(* opt? *) -> boolean;
isEnabled : boolean;
setEnabled : boolean -> unit;
isFocusable : boolean;
setFocusable : boolean -> unit;
isFocusableChildrenAllowed : boolean;
setFocusableChildrenAllowed : boolean -> unit;
getHighlightedIndex : number;
setHighlightedIndex : number -> unit;
setHighlighted : control -> unit;
getHighlighted : control(* opt? *);
highlightFirst : unit;
highlightLast : unit;
highlightNext : unit;
highlightPrevious : unit;
highlightHelper : (* function *) -> number -> boolean;
canHighlightItem : control -> boolean;
setHighlightedIndexFromKeyEvent : number -> unit;
isMouseButtonPressed : boolean;
setMouseButtonPressed : boolean -> unit;
> = "goog.ui.Container"
