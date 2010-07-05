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
(* TODO !!!! *)

  method enterDocument : unit meth
end

let control : control t constr =
  Js.Unsafe.variable "goog.ui.Control"
