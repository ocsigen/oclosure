(**
   OClosure Project - 2010

   Class goog.ui.Select
   
   @author : Oran Charles
   @version 0.2
*)
open Js
open Menu
open MenuButton
open MenuItem
open Separator
open Gdom
open Events

class type select = object
  inherit menuButton
  method enterDocument : unit meth
  method decorateInternal : #Dom_html.element t -> unit meth
  method disposeInternal : unit meth
  method handleMenuAction : #event t -> unit meth
  method handleSelectionChange : #event t -> unit meth
  method setMenu : menu t -> menu t optdef meth
  method getDefaultCaption : ControlContent.controlContent meth
  method setDefaultCaption : ControlContent.controlContent -> unit meth
  method addItem_ : (#menuItem t, #menuSeparator t) Tools.Union.t -> unit meth
  method addItemAt : (#menuItem t, #menuSeparator t) Tools.Union.t -> int -> unit meth
  method removeItem : menuItem t -> unit meth
  method removeItemAt : int -> unit meth
  method setSelectedItem : menuItem t -> unit meth
  method setSelectedIndex : int -> unit meth
  (*method setValue : *)
  method getSelectedItem : menuItem t meth
  method getSelectedIndex : int meth
  method setOpen : bool t -> unit meth
end

let tmp = Tools.variable "[oclosure]goog.ui.Select[/oclosure]"
let select : (ControlContent.controlContent opt -> menu t opt 
  -> select #Button.buttonRenderer t opt -> domHelper t opt 
  -> select t) constr = tmp 
