(** 
   OClosure Project - 2010
   Class goog.ui.MenuItem
   
   @author Emmanuel CRESPIN
   @version 0.2
*)

open Control

open Js
class type menuItem = object
  inherit control
  method setSelectable : bool t -> unit meth
  (*method getValue : unit -> *)
  (*method setValue : * -> unit meth*)
  method setCheckable : bool t -> unit meth
end

class type ['menuIt] menuItemRenderer = object
  inherit ['menuIt] Control.controlRenderer

  method createDom : 'menuIt t -> Dom_html.element t meth

  method decorate : 'menuIt t -> #Dom_html.element t 
    -> Dom_html.element t meth

  method getAriaRole : Gdom.A11y.role_pre optdef meth

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

let tmp = Tools.variable "[oclosure]goog.ui.MenuItemRenderer[/oclosure]"
let menuItemRenderer : (#menuItem menuItemRenderer t) constr = tmp

let menuItem = Tools.variable "[oclosure]goog.ui.MenuItem[/oclosure]"
let menuItem : (ControlContent.controlContent -> Gdom.domHelper t opt 
  -> menuItem #menuItemRenderer t opt -> menuItem t) constr = menuItem
