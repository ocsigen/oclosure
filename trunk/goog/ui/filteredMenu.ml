(**
   OClosure Project - 2010
   Class goog.ui.FilteredMenu
   
   @author Cardoso Gabriel
   @version 0.2
*)

open Js

class type filteredMenu = object
  inherit Menu.menu

  method createDom : unit meth

  method decorateInternal : Dom_html.element t -> unit meth

  method disposeInternal : unit meth

  method getAllowMultiple : bool t meth

  method getContentElement : Dom_html.element t meth

  method getEnteredItems : js_string t js_array t meth

  method getFilter : js_string t meth
 
  method getFilterFromIndex : int meth

  method getFilterInputElement : Dom_html.element t meth

  method getFilterLabel : js_string t meth

  method handleFilterEvent : Events.browserEvent t -> unit meth

  method handleKeyEvent : Events.keyEvent t -> bool t meth

  method hasPersistentVisibility : #Component.component t -> bool t meth

  method setAllowMultiple : bool t  -> unit meth

  method setFilter : js_string t opt -> unit meth

  method setFilterFromIndex : int -> unit meth

  method setFilterLabel : js_string t opt -> unit meth

  method setHighlightedIndex : int -> unit meth

  method setPersistentVisibility : #MenuItem.menuItem t -> bool t -> unit meth

  method setVisible : bool t -> bool t opt -> bool t meth
end

let filteredMenu : (MenuRenderer.menuRenderer t opt -> Gdom.domHelper t opt 
  -> filteredMenu t) constr = 
  Js.Unsafe.variable "goog.ui.FilteredMenu"
