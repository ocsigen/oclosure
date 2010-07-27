(**
   OClosure Project - 2010

   Class goog.ui.TriStateMenuItem
   
   @author : Oran Charles
   @version 0.2
*)
open Js
open MenuItem
open Gdom
open TriStateMenuItemRenderer
open Event

module TriStateMenuItem = struct
  module State = struct
    type t =
	NOT_CHECKED
      | PARTIALLY_CHECKED
      | FULLY_CHECKED
  end
end

class type triStateMenuItem = object
  inherit menuItem
  method getCheckedState : TriStateMenuItem.State.t meth
  method setCheckedState : TriStateMenuItem.State.t -> unit meth
  method performActionInternal : event t -> unit meth
end

let tmp = Tools.variable "[oclosure]goog.ui.TriStateMenuItem[/oclosure]"
let triStateMenuItem : (ControlContent.controlContent -> domHelper t opt -> 
triStateMenuItem #menuItemRenderer t opt -> triStateMenuItem t ) constr = tmp
 
