(**
   OClosure Project - 2010
   Class goog.ui.FilterObservingMenuItem
   
   @author Cardoso Gabriel
   @version 0.2
*)

open Js

open MenuItem

class type filterObservingMenuItem = object
  inherit MenuItem.menuItem

  method callObserver : js_string t opt -> unit meth

  method enterDocument : unit meth

  method setObserver : (filterObservingMenuItem t -> js_string t -> unit) 
    -> unit meth
end

let tmp = Js.Unsafe.variable "goog.ui.FilterObservingMenuItem"
let filterObservingMenuItem : (ControlContent.controlContent -> 
  Gdom.domHelper t opt -> filterObservingMenuItem #menuItemRenderer t opt -> 
    filterObservingMenuItem t) constr = tmp
