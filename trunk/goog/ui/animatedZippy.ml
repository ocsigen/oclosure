(**
   * OClosure Project - 2010
   * Class goog.ui.AnimatedZippy
   *
   * Zippy widget. Expandable/collapsible container, 
   * clicking the header toggles the visibility of the content.
   *
   * @author : Oran Charles
   * @version 0.1
   * @see 'goog.ui.Zippy'
*)
open Zippy

open Js
class type animatedZippy = object
  inherit zippy
  (** Whether the zippy is in the process of being expanded or collapsed. *)
  method isBusy : unit -> bool meth

 (** Sets expanded state.*)
  method setExpanded : bool -> unit meth

end

let animatedZippy : (js_string t -> js_string t -> bool -> animatedZippy t) constr =
  Js.Unsafe.variable "goog.ui.AnimatedZippy"
