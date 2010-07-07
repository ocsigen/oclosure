(**
   OClosure Project - 2010
   Class goog.ui.Control
   
   Base class for UI controls. Extends goog.ui.Component by adding the 
   following:
   - a goog.events.KeyHandler, to simplify keyboard handling,
   - a pluggable renderer framework, to simplify the creation of simple 
   controls without the need to subclass this class,
   - the notion of component content, like a text caption or DOM structure 
   displayed in the component (e.g. a button label),
   - getter and setter for component content, as well as a getter and setter
   specifically for caption text (for convenience),
   - support for hiding/showing the component,
   - fine-grained control over supported states and state transition events,
   and
   - default mouse and keyboard event handling. 
   
   This class has sufficient built-in functionality for most simple UI 
   controls. All controls dispatch SHOW, HIDE, ENTER, LEAVE, and ACTION events
   on show, hide, mouseover, mouseout, and user action, respectively. 
   Additional states are also supported. See closure/demos/control.html for 
   example usage. 
   
   @author Cardoso Gabriel
   @version 0.1
   @see 'goog.ui.Component'
*)
open Component

open Js
class type control = object
  inherit component

  method addClassName : js_string t -> unit meth

  method canDecorate : Dom_html.element t -> bool t meth

  method createDom : unit meth

  method disposeInternal : unit meth

  method enableClassName : js_string t -> bool t -> unit meth

  method enterDocument : unit meth

  method exitDocument : unit meth

  method getCaption : js_string t opt meth

  method getContent : ControlContent.controlContent meth

  method getContentElement : Dom_html.element t meth

  method getExtraClassNames : js_string t js_array t opt meth

  method getKeyEventTarget : Dom_html.element t meth

  method getState : Component.State.state_pre meth

  method handleBlur : #Events.event t -> unit meth

  method handleDblClick : #Events.event t -> unit meth

  method handleFocus : #Events.event t -> unit meth

  method handleKeyEvent : #Events.event t -> bool t meth

  method handleMouseDown : #Events.event t -> unit meth

  method handleMouseOut : #Events.event t -> unit meth

  method handleMouseOver : #Events.event t -> unit meth

  method handleMouseUp : #Events.event t -> unit meth

  method hasState : Component.State.state_pre -> bool t meth

  method isActive : bool t meth

  method isAllowTextSelection : bool t meth

  method isAutoState : Component.State.state_pre -> bool t meth

  method isChecked : bool t meth

  method isDispatchTransitionEvents : Component.State.state_pre -> bool t meth

  method isEnabled : bool t meth

  method isFocused : bool t meth

  method isHandleMouseEvents : bool t meth

  method isHighlighted : bool t meth

  method isOpen : bool t meth

  method isSelected : bool t meth

  method isSupportedState : Component.State.state_pre -> bool t meth

  method isVisible : bool t meth

  method removeClassName : js_string t -> unit meth

  method setActive : bool t -> unit meth

  method setAllowTextSelection : bool t -> unit meth

  method setAutoStates : Component.State.state_pre -> bool t -> unit meth

  method setCaption : js_string t -> unit meth

  method setChecked : bool t -> unit meth

  method setContent : ControlContent.controlContent -> unit meth

  method setDispatchTransitionEvents : Component.State.state_pre -> bool t -> unit meth

  method setEnabled : bool t -> unit meth

  method setFocused : bool t -> unit meth

  method setHandleMouseEvents : bool t -> unit meth

  method setHighlighted : bool t -> unit meth

  method setOpen : bool t -> unit meth

  method setRightToLeft : bool t -> unit meth

  method setSelected : bool t -> unit meth

  method setState : Component.State.state_pre -> bool t -> unit meth

  method setSupportedState : Component.State.state_pre -> bool t -> unit meth

  method setVisible : bool t -> bool t opt -> bool t meth
end

and controlRenderer = object
  method canDecorate : Dom_html.element t -> bool t meth

  method createDom : control t -> Dom_html.element t meth

  method decorate : control t -> Dom_html.element t -> Dom_html.element t meth
end

let controlRenderer : controlRenderer t constr = 
  Js.Unsafe.variable "goog.ui.ControlRenderer"

let control : ControlContent.controlContent -> controlRenderer t -> Gdom.domHelper t opt -> control t constr =
  Js.Unsafe.variable "goog.ui.Control"
