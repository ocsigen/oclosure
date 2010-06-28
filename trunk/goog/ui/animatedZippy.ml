(**
   * OClosure Project - 2010
   * Class goog.ui.AnimatedZippy
   *
   * Zippy widget. Expandable/collapsible container, 
   * clicking the header toggles the visibility of the content.
   *
   * @author : Oran Charles, Cardoso Gabriel
   * @version 0.2
   * @see 'goog.ui.Zippy'
*)
open Zippy

open Js
open Tools

class type animatedZippy = object
  inherit zippy
  (**  Acceleration function for expand/collapse animation. *)
  method animationAcceleration : number t -> number t meth
  
  (** Sets expanded state.*)
  method setExpanded : bool t -> unit meth

end

let animatedZippy : ((Dom_html.element t, js_string t) Union.t opt -> (Dom_html.element t, js_string t) Union.t opt -> bool t opt -> animatedZippy t) constr =
  Js.Unsafe.variable "goog.ui.AnimatedZippy"
