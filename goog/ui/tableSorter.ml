(** 
    OClosure Project - 2010
    Class goog.ui.TableSorter
    
    @author Gabriel Cardoso 
    @version 0.2
*)

open Js

class type tableSorter = object
  inherit Component.component
  method canDecorate : #Dom_html.element t -> bool t meth
  method enterDocument : unit meth
  method getDefaultSortFunction : 
    (js_string t -> js_string t -> int) callback meth
  method getSortColumn : int meth
  method getSortFunction : 
    (js_string t -> js_string t -> int) callback meth
  method isSortReversed : bool t meth
  method setDefaultSortFunction : (js_string t -> js_string t -> int) callback 
    -> unit meth
  method setSortFunction : int -> 
    (js_string t -> js_string t -> int) callback -> unit meth
  method sort : int -> bool t opt -> unit meth
end

let tableSorter : (Gdom.domHelper t opt -> tableSorter t) constr = 
  Js.Unsafe.variable "goog.ui.TableSorter"
