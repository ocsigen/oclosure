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

let colorPicker : (domHelper t opt -> colorPalette t opt -> colorPicker t) constr = 
  Js.Unsafe.variable "goog.ui.ColorPicker"

module ColorPicker = struct
  let createSimpleColorGrid (dh : Gdom.domHelper t opt) : colorPicker t = 
    Js.Unsafe.fun_call 
      (Js.Unsafe.variable "goog.ui.ColorPicker.createSimpleColorGrid")
      [|Js.Unsafe.inject dh|]

  let _SIMPLE_GRID_COLORS = Js.Unsafe.variable 
      "goog.ui.ColorPicker.SIMPLE_GRID_COLORS"
  module EventType = struct
    let _CHANGE = Js.string "change"
  end
end
