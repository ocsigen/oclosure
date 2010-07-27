(**
   OClosure Project - 2010

   Class goog.ui.ToolBarSelect
   
   @author : Oran Charles
   @version 0.2
*)
open Js
open Select
open Menu
open MenuButton
open MenuButtonRenderer
open Gdom

class type toolbarSelect = object
  inherit select
end

let tmp = Js.Unsafe.variable "goog.ui.ToolbarSelect"
let toolbarSelect : (ControlContent.controlContent opt -> menu t -> toolbarSelect #menuButtonRenderer t opt -> domHelper t opt -> toolbarSelect t) constr = tmp 
