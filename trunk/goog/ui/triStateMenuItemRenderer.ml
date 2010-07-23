(**
   OClosure Project - 2010

   Class goog.ui.TriStateMenuItemRenderer
   
   @author : Oran Charles
   @version 0.2
*)
open Js
open MenuItem

module TriStateMenuItemRenderer = struct
  let _CSS_CLASS = Js.string "goog-tristatemenuitem"
end

class type ['menuIt] triStateMenuItemRenderer = object
  inherit ['menuIt] menuItemRenderer

  method decorate : 'menuIt t -> #Dom_html.element t -> Dom_html.element t meth

  method getCssClass : js_string t meth
end

let tmp = Js.Unsafe.variable "goog.ui.TriStateMenuItemRenderer"
let triStateMenuItemRenderer : #MenuItem.menuItem triStateMenuItemRenderer t 
    constr = tmp


