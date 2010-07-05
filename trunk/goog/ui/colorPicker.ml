(** 
    OClosure Project - 2010
    Class goog.ui.ColorPicker
    
    Create a new, empty color picker. 
    
    @author Bozman Cagdas
    @version 0.1
    @see 'goog.dom.DomHelper'
    @see 'goog.ui.ColorPalette'
    @see 'goog.ui.Component'
*)
open Gdom

open ColorPalette

open Component

open Js

type colors = js_string t js_array t

type color = js_string t

class type colorPicker = object
  inherit component

    (** Sets the array of colors to be displayed by the color picker. *)
  method addColor : colors -> unit meth

 (** ColorPickers cannot be used to decorate pre-existing html,
     since the structure they build is fairly complicated. *)
  method canDecorate : Dom_html.element t -> bool t meth

(** Renders the color picker inside the provided element.
     This will override the current content of the element. *)
  method enterDocument : unit meth

 (** Sets the focus to the color picker's palette. *)
  method focus : unit meth

 (**  Gets the array of colors displayed by the color picker.
      Modifying this array will lead to unexpected behavior.*)
  method getColors : colors meth

 (** Gets the color that is currently selected in this color picker. *)
  method getSelectedColor : js_string t meth

 (** The index of the color selected. *)
  method getSelectedIndex : int meth

 (**  Gets the number of columns displayed.*)
  method getSize : Math.size t opt meth

 (** Returns true if the component is focusable, false otherwise.
     The default is true. 
     Focusable components always have a tab index and 
     allocate a key handler to handle keyboard events while focused. *)
  method isFocusable : bool t meth

 (** Sets the array of colors to be displayed by the color picker. *)
  method setColors : colors -> unit meth

 (** Sets the number of columns. 
     Will throw an error after the picker has been rendered.*)
  method setColumnCount : int -> unit meth

 (** Sets whether the component is focusable. 
     The default is true. 
     Focusable components always have a tab index and
     allocate a key handler to handle keyboard events while focused. *)
  method setFocusable : bool t -> unit meth

 (** *)
  method setSelectedColor : color -> unit meth
 
 (**  Sets which color is selected. 
      A value that is out-of-range means that no color is selected. *)
  method setSelectedIndex : int -> unit meth

 (**  Sets the size of the palette.
      Will throw an error after the picker has been rendered. *)
  method setSize : int -> unit meth
end

let colorPicker : (domHelper t opt -> colorPalette t opt -> colorPicker t) constr = 
  Js.Unsafe.variable "goog.ui.ColorPicker"

module ColorPicker = struct
  let createSimpleColorGrid (dh : Gdom.domHelper t opt) : colorPicker t = 
    Js.Unsafe.fun_call 
      (Js.Unsafe.variable "goog.ui.ColorPicker.createSimpleColorGrid")
      [|Js.Unsafe.inject dh|]

  let _SIMPLE_GRID_COLORS = Js.array (Array.map Js.string [|
  "#ffffff"; "#cccccc"; "#c0c0c0"; "#999999"; "#666666"; "#333333"; "#000000";
  "#ffcccc"; "#ff6666"; "#ff0000"; "#cc0000"; "#990000"; "#660000"; "#330000";
  "#ffcc99"; "#ff9966"; "#ff9900"; "#ff6600"; "#cc6600"; "#993300"; "#663300";
  "#ffff99"; "#ffff66"; "#ffcc66"; "#ffcc33"; "#cc9933"; "#996633"; "#663333";
  "#ffffcc"; "#ffff33"; "#ffff00"; "#ffcc00"; "#999900"; "#666600"; "#333300";
  "#99ff99"; "#66ff99"; "#33ff33"; "#33cc00"; "#009900"; "#006600"; "#003300";
  "#99ffff"; "#33ffff"; "#66cccc"; "#00cccc"; "#339999"; "#336666"; "#003333";
  "#ccffff"; "#66ffff"; "#33ccff"; "#3366ff"; "#3333ff"; "#000099"; "#000066";
  "#ccccff"; "#9999ff"; "#6666cc"; "#6633ff"; "#6600cc"; "#333399"; "#330099";
  "#ffccff"; "#ff99ff"; "#cc66cc"; "#cc33cc"; "#993399"; "#663366"; "#330033"|])

  module EventType = struct
    let _CHANGE = Js.string "change"
  end
end
