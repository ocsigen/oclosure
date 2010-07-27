(** 
   OClosure Project - 2010
   Class goog.ui.MenuButton

   @author Emmanuel CRESPIN
   @version 0.2
*)

open Button
open Menu
open MenuItem
open Separator

open Js
class type menuButton = object
  inherit button
  
  method enterDocument : unit meth
  
  method exitDocument : unit meth

  method disposeInternal : unit meth
  
  method handleMouseDown : #Event.event t -> unit meth

  method handleMouseUp : #Event.event t -> unit meth
  
  method performActionInternal : #Event.event t -> bool t meth
  
  method containsElement : #Dom_html.element t -> bool t meth
  
  method handleKeyEventInternal : #Events.event t -> bool t meth
  
  method handleMenuAction : #Events.event t -> unit meth

  method handleMenuBlur : #Events.event t -> unit meth
  
  method handleBur : #Events.event t -> unit meth
 
  method getMenu : menu t meth
  
  method setMenu : menu t -> menu t optdef meth
  
  method addItem : #Control.control t -> unit meth
  
  method addItemAt : (#menuItem t,#menuSeparator t) Tools.Union.t -> int 
    -> unit meth
  
  method removeItem : menuItem t -> unit meth

  method removeItemAt : int -> unit meth
  
  method getItemAt : int  -> menuItem t meth
  
  method getItemCount : int meth
  
  method setVisible : bool t -> bool t opt -> bool t meth
  
  method setEnabled : bool t -> unit meth
  
  method isAlignMenuToStart : bool t meth
  
  method setAlignMenuToStart : bool t -> unit meth
  
  method setScrollOnOverflow : bool t -> unit meth
  
  method isScrollOnOverflow : bool t meth
  
  method isFocusablePopupMenu : bool t meth
  
  method setFocusablePopupMenu : bool t -> unit meth
  
  method showMenu : unit meth
  
  method hideMenu : unit meth
  
  method setOpen : bool t -> unit meth

  method positionMenu : unit meth
  
  method handleHighlightItem : #Events.event t -> unit meth

  method handleUnHighlightItem : #Events.event t -> unit meth
  
end

let menuButton = Tools.variable "[oclosure]goog.ui.MenuButton[/oclosure]"
let menuButton : (ControlContent.controlContent -> menu t opt -> 
  menuButton #Button.buttonRenderer t opt -> Gdom.domHelper t opt -> 
  menuButton t) constr = menuButton
  
