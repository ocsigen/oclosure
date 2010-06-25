(**
   * OClosure Project - 2010
   * Class goog.ui.Zippy
   *
   * Zippy widget. Expandable/collapsible container, 
   * clicking the header toggles the visibility of the content.
   *
   * @author : Oran Charles, Cardoso Gabriel
   * @version 0.2
   * @see 'goog.events.EventTarget'
 *)
open EventTarget

open Js
class type zippy = object
  inherit eventTarget
  (** Collapses content pane. *)
  method collapse : unit meth

  (** Destroys widget and removes all event listeners. *)
  method disposeInternal : unit  meth

  (** Expands content pane. *)
  method expand : unit  meth

  (** Whether the zippy is in the process of being expanded or collapsed. *)
  method isBusy : bool t meth

  (** Whether the zippy is expanded. *)
  method isExpanded : bool t  meth

  (** Sets expanded state. *)
  method setExpanded : bool t -> unit meth

  (** Toggles expanded state. *)
  method toggle : unit meth
end

type element_or_string = Tools.element_or_string
type element = Dom_html.element

let zippy : (element_or_string opt -> element_or_string opt -> bool t opt -> element_or_string opt -> zippy t) constr =
  Js.Unsafe.variable "goog.ui.Zippy"

let zippy_lazy : (element_or_string opt -> (unit -> element t) callback -> bool t opt -> element_or_string opt -> zippy t) constr =
  Js.Unsafe.variable "goog.ui.Zippy"


