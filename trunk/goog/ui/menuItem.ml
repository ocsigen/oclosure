(** 
   OClosure Project - 2010
   Class goog.ui.MenuItem
   
   Class representing an item in a menu.
   
   @author : Emmanuel CRESPIN
   @version 0.2
*)

open Control

open Js
class type menuItem = object
  inherit control

  (** Sets the menu item to be selectable or not.*)
  method setSelectable : bool t -> unit meth
 
  (*
     Returns the value associated with the menu item. The default implementation
     returns the model object associated with the item (if any), or its caption.
 
  method getValue : unit -> *
  
     Sets the value associated with the menu item.  The default implementation
     stores the value as the model of the menu item. 
  
  method setValue : * -> unit meth
  *)

 (** Sets the menu item to be checkable or not.*)
  method setCheckable : bool t -> unit meth
end

class type ['menuIt] menuItemRenderer = object
  inherit ['menuIt] Control.controlRenderer

  method createDom : 'menuIt t -> Dom_html.element t meth

  method decorate : 'menuIt t -> #Dom_html.element t 
    -> Dom_html.element t meth

  method getAriaRole : Gdom.A11y.role meth

  method getClassForState : Component.Component.State.state_pre 
    -> js_string t optdef meth

  method getContentElement : #Dom_html.element t -> Dom_html.element t meth

  method getCssClass : js_string t meth

  method getStateFromClass : js_string t 
    -> Component.Component.State.state_pre meth

  method setCheckable : 'menuIt t -> #Dom_html.element t opt -> bool t 
    -> unit meth

  method setContent : #Dom_html.element t -> ControlContent.controlContent
    -> unit meth

  method setSelectable : 'menuIt t -> #Dom_html.element t opt -> bool t 
    -> unit meth
end

let tmp = Js.Unsafe.variable "goog.ui.MenuItemRenderer"
let menuItemRenderer : (#menuItem menuItemRenderer t) constr = tmp

let menuItem = Js.Unsafe.variable "goog.ui.MenuItem"
let menuItem : (ControlContent.controlContent -> Gdom.domHelper t opt 
  -> menuItem #menuItemRenderer t opt -> menuItem t) constr = menuItem
