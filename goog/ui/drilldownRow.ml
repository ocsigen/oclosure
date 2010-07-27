(**
   OClosure Project - 2010
   Class goog.ui.DrilldownRow
   
   @author Cardoso Gabriel
   @version 0.2
*)

open Js

class type drilldownRow = object
  inherit Component.component
  method addChildAt : Component.component t -> int -> bool t opt -> unit meth

  method canDecorate : #Dom_html.element t -> bool t meth

  method createDom : unit meth

  method disposeInternal : unit meth

  method enterDocument : unit meth

  method findIndex : int meth

  method getDepth : int meth

  method isExpanded : bool t meth

  method removeChild : (js_string t, Component.component t) Tools.Union.t opt ->
    bool t opt -> Component.component t meth

  method render_ : unit meth

  method setExpanded : bool t -> unit meth
end

let drilldownRow : (drilldownRow t) constr = 
  Tools.variable "[oclosure]goog.ui.DrilldownRow[/oclosure]"
