(** 
   Oclosure Project - 2010
   Class goog.ui.SubMenu
   
   Class representing a submenu that can be added as an item to other menus.
   
   @author Emmanuel CRESPIN
   @version 0.2
*)
open Menu
open MenuItem
open Component
open Event

open Js
class type subMenu = object
  inherit menuItem
  method enterDocument : unit meth
  method exitDocument : unit meth
  method disposeInternal : unit meth
  method setHighlighted : bool t -> unit meth
  method showSubMenu : unit meth
  method dismissSubMenu : unit meth
  method clearTimers : unit meth
  method setVisible : bool t -> bool t opt -> bool t meth
  method handleKeyEvent : #Events.event t -> bool t meth
  method handleMouseOver : #Events.event t -> unit meth
  method performActionInternal : #Events.event t  -> bool t meth
  method setAlignToEnd : bool t -> unit meth
  method isAlignedToEnd : bool t meth
  method addItem : menuItem t -> unit meth
  method addItemAt : menuItem t -> float -> unit meth
  method removeItem : menuItem t -> unit meth
  method removeItemAt : float -> unit meth
  method getItemAt : float -> component meth
  method getItemCount : float t meth
  method getItems : menuItem t js_array t meth
  method getMenu : menu t meth
  method setMenu : menu t -> unit meth
  method containsElement : #Dom_html.element t -> bool t meth
  method setPositionAdjustable : bool t -> unit meth
  method isPositionAdjustable : bool t meth
end

let tmp = Js.Unsafe.variable "goog.uiSubMenu"
let subMenu : (ControlContent.controlContent -> Gdom.domHelper t opt -> subMenu #MenuItem.menuItemRenderer t opt -> subMenu t) constr = tmp
