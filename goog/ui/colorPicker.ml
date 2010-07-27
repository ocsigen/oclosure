(** 
    OClosure Project - 2010
    Class goog.ui.ColorPicker
    
    @author Bozman Cagdas
    @version 0.1
*)
open Gdom

open ColorPalette

open Component

open Js

type colors = js_string t js_array t

type color = js_string t

class type colorPicker = object
  inherit component

  method addColor : colors -> unit meth

  method canDecorate : #Dom_html.element t -> bool t meth

  method enterDocument : unit meth

  method focus : unit meth

  method getColors : colors meth

  method getSelectedColor : js_string t meth

  method getSelectedIndex : int meth

  method getSize : Math.size t opt meth

  method isFocusable : bool t meth

  method setColors : colors -> unit meth

  method setColumnCount : int -> unit meth

  method setFocusable : bool t -> unit meth

  method setSelectedColor : color -> unit meth
 
  method setSelectedIndex : int -> unit meth

  method setSize : int -> unit meth
end


let cp = Tools.variable "[oclosure]goog.ui.ColorPicker[/oclosure]"
let colorPicker : (domHelper t opt -> colorPalette t opt 
  -> colorPicker t) constr = cp
 

module ColorPicker = struct
  let createSimpleColorGrid (dh : Gdom.domHelper t opt) : colorPicker t = 
    cp##createSimpleColorGrid(dh)

  let _SIMPLE_GRID_COLORS = cp##_SIMPLE_GRID_COLORS_
  module EventType = struct
    let _CHANGE = Js.string "change"
  end
end
