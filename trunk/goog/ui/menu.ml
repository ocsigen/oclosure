(** OClosure Project - 2010
   Class goog.ui.Menu
   
   @author : Emmanuel CRESPIN
   @version 0.2
*)

open Js

open MenuItem
open Separator

class type menu = object
  inherit Container.container
  method getCssClass : js_string t meth
  method containsElement : #Dom_html.element t -> bool t meth
  
  method addItem : (#menuItem t, #menuSeparator t) Tools.Union.t -> unit meth
  
  method addItemAt : (#menuItem t, #menuSeparator t) Tools.Union.t -> int -> unit meth
  
  method removeItem : (#menuItem t, #menuSeparator t) Tools.Union.t  -> unit meth
  
  method removeItemAt : int -> unit meth
  
  method getItemAt : int -> (menuItem t, menuSeparator t) Tools.Union.t opt meth
  
  method getItemCount : int meth
  
  method getItems : menuItem t js_array t meth
  
  method setPosition : (int, Math.coordinate t) Tools.Union.t -> int opt -> unit meth
  
  method getPosition : Math.coordinate t opt meth
  
  method setAllowAutoFocus : bool t -> unit meth
  
  method getAllowAutoFocus : bool t meth
  
  method setAllowHighlightDisabled : bool t -> unit meth
  
  method getAllowHighlightDisabled : bool t meth
  
  method highlightNextPrefix : js_string t -> bool t meth
end

class type ['menu] menuRenderer = object
  inherit ['menu] Container.containerRenderer
	
  method canDecorate : #Dom_html.element t -> bool t meth
 
  method containsElement : #menu t -> #Dom_html.element t -> bool t meth

  method getAriaRole : Gdom.A11y.role_pre optdef meth

  method getCssClass : js_string t meth

  method getDecoratorForChild : #Dom_html.element t -> 
    Control.control t opt meth

  method initializeDom : 'menu t -> unit meth
end

let tmp = Js.Unsafe.variable "goog.ui.MenuRenderer"
let menuRenderer : (#menu menuRenderer t) constr = tmp

let tmp = Js.Unsafe.variable "goog.ui.Menu"
let menu : (Gdom.domHelper t opt -> menu #menuRenderer t opt -> menu t) constr =
  tmp

