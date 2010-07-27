(**
   OClosure Project - 2010

   Class goog.ui.Option
   
   @author Oran Charles
   @version 0.2
*)
open Js
open MenuItem
open Gdom

class type option = object
  inherit menuItem
  method performActionInternal : Event.event t -> bool t meth 
end

let option : (ControlContent.controlContent -> bool t opt -> domHelper t opt -> option t ) constr = 
  Js.Unsafe.variable "goog.ui.Option"
