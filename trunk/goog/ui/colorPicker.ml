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
open Gdom.DomHelper

open ColorPalette

open Component

open Js

(** [Array.<string>]
    The array of colors to be added.*)
type colors = js_string t js_array t

(** [js_string t] Color*)
type color = js_string t

(** [oog.math.Size]
    The size of the grid. *)
type size = int

class type colorPicker = object
  inherit component

    (** Sets the array of colors to be displayed by the color picker. *)
  method addColor : colors -> unit meth

 (** ColorPickers cannot be used to decorate pre-existing html,
     since the structure they build is fairly complicated. *)
  method canDecorate : Dom_html.element t -> bool meth

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
  method getSelectedIndex : number meth

 (**  Gets the number of columns displayed.*)
  method getSize : size meth

 (** Returns true if the component is focusable, false otherwise.
     The default is true. 
     Focusable components always have a tab index and 
     allocate a key handler to handle keyboard events while focused. *)
  method isFocusable : bool meth

 (** Sets the array of colors to be displayed by the color picker. *)
  method setColors : colors -> unit meth

 (** Sets the number of columns. 
     Will throw an error after the picker has been rendered.*)
  method setColumnCount : number -> unit meth

 (** Sets whether the component is focusable. 
     The default is true. 
     Focusable components always have a tab index and
     allocate a key handler to handle keyboard events while focused. *)
  method setFocusable : bool -> unit meth

 (** *)
  method setSelectedColor : color -> unit meth
 
 (**  Sets which color is selected. 
      A value that is out-of-range means that no color is selected. *)
  method setSelectedIndex : number -> unit meth

 (**  Sets the size of the palette.
      Will throw an error after the picker has been rendered. *)
  method setSize : size -> unit meth
end

let colorPicker : (domHelper t -> colorPalette t -> colorPicker t) constr = 
  Js.Unsafe.variable "goog.ui.ColorPicker"
