(**
   * OClosure Project - 2010
   * Class goog.ui.Zippy
   *
   * Zippy widget. Expandable/collapsible container, 
   * clicking the header toggles the visibility of the content.
   *
   * @author : Oran Charles
   * @version 0.1
   * @see 'goog.events.EventTarget'
 *)
open EventTarget

(** JSOO.obj *)
type element = Dom.element

(** goog.ui.BrowserEvent**)
type browserEvent

open Js
class type zippy = object
  inherit eventTarget
  (** Destroys widget and removes all event listeners. *)
  method disposeInternal : unit -> unit  meth

 (** Expands content pane. *)
  method expand : unit -> unit  meth

 (** Collapses content pane. *)
  method collapse : unit -> unit meth

 (** Toggles expanded state. *)
  method toggle : unit -> unit  meth

 (** Sets expanded state. *)
  method setExpanded : bool -> unit  meth

 (** Whether the zippy is expanded. *)
  method isExpanded : unit -> bool  meth

end

let zippy : (js_string t -> js_string t  -> zippy t) constr =
  Js.Unsafe.variable "goog.ui.Zippy"


