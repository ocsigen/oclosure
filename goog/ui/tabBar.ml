(**
   OClosure Project - 2010

   Class goog.ui.TabBar
   
   @author Oran Charles
   @version 0.2
*)
open Js
open Container
open Tools

module TabBar = struct
  type location =
      TOP
    |BOTTOM
    |START
    |END

  type location_pre = js_string t

  let location_pre_of_location = function
    | TOP -> Js.string "top"
    | BOTTOM -> Js.string "bottom"
    | START -> Js.string "start"
    | END -> Js.string "end"

  let location_of_location_pre s = match Js.to_string s with
    | "top" -> TOP
    | "bottom" -> BOTTOM
    | "start" -> START
    | "end" -> END
    | _ ->  invalid_arg "Goo.ui.TabBar.location_of_location_pre"

end

class type tabBar = object 
  inherit container
  method disposeInternal : unit meth
  method removeChild : (js_string t, #Control.control t) Union.t -> bool t opt -> Control.control t meth
  method getLocation : TabBar.location_pre meth
  method setLocation : TabBar.location_pre -> unit meth
  method isAutoSelectTabs : bool t meth
  method setAutoSelectTabs : bool t -> unit meth
  method setHighlightedIndexFromKeyEvent : int -> unit meth
  method getSelectedTab : Control.control t opt meth
  method setSelectedTab : #Control.control t opt -> unit meth
  method getSelectedTabIndex : int meth
  method setSelectedTabIndex : int -> unit meth
  method deselectIfSelected : #Control.control t-> unit meth
  method isSelectableTab : #Control.control t -> bool t meth
  method handleTabSelect : #Event.event t -> unit meth
  method handleTabUnselect : #Event.event t -> unit meth
  method handleTabDisable : #Event.event t -> unit meth
  method handleTabHide : #Event.event t -> unit meth
  method handleFocus : #Event.event t -> unit meth
  method getOrientationFromLocation : TabBar.location_pre 
    -> Container.orientation_pre meth
end

class type ['cont] tabBarRenderer = object
  inherit ['cont] containerRenderer
  method getCssClass : js_string t meth
  method setStateFromClassName : 'cont t -> js_string t -> js_string t -> unit meth
  method getClassNames : 'cont t -> js_string t js_array t meth
end

let tmp = Tools.variable "[oclosure]goog.ui.TabBarRendered[/oclosure]"
let tabBarRenderer : tabBar #tabBarRenderer t constr = tmp

let tmp = Tools.variable "[oclosure]goog.ui.TabBar[/oclosure]"
let tabBar : (TabBar.location_pre opt -> tabBar #tabBarRenderer t opt -> Gdom.domHelper t opt -> tabBar t) constr = 
  tmp
    
