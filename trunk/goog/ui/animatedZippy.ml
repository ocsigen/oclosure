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
class type animatedZippy = object
  inherit zippy
  (**  Acceleration function for expand/collapse animation. *)
  method animationAcceleration : number t -> number t meth
  
  (** Sets expanded state.*)
  method setExpanded : bool t -> unit meth

end

type element_or_id = Tools.element_or_id
type element = Dom_html.element t

let animatedZippy : (element_or_id opt -> element_or_id opt -> bool t opt -> animatedZippy t) constr =
  Js.Unsafe.variable "goog.ui.AnimatedZippy"
