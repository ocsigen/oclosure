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
open Dom

open ColorPalette

open Component

(** [Array.<string>]
    The array of colors to be added.*)
type colors = string array

(** [string] Color*)
type color = string

(** JSOO.obj *)
type element 

(** [oog.math.Size]
    The size of the grid. *)
type size = int

(** type number 
    The index of the color selected. *)
type number

class external colorPicker  inherit component: domHelper -> colorPalette ->
  <
    (** Sets the array of colors to be displayed by the color picker. *)
    addColor : colors -> unit;

 (** ColorPickers cannot be used to decorate pre-existing html,
     since the structure they build is fairly complicated. *)
 canDecorate : element -> bool; 

(** Renders the color picker inside the provided element.
     This will override the current content of the element. *)
 enterDocument : unit;

 (** Sets the focus to the color picker's palette. *)
 focus : unit;

 (**  Gets the array of colors displayed by the color picker.
      Modifying this array will lead to unexpected behavior.*)
 getColors : unit -> colors;

 (** Gets the color that is currently selected in this color picker. *)
 getSelectedColor : unit -> string;

 (** The index of the color selected. *)
 getSelectedIndex : unit -> number;

 (**  Gets the number of columns displayed.*)
 getSize : unit -> size;

 (** Returns true if the component is focusable, false otherwise.
     The default is true. 
     Focusable components always have a tab index and 
     allocate a key handler to handle keyboard events while focused. *)
 isFocusable : unit -> bool;

 (** Sets the array of colors to be displayed by the color picker. *)
 setColors : colors -> unit;

 (** Sets the number of columns. 
     Will throw an error after the picker has been rendered.*)
 setColumnCount : number -> unit;

 (** Sets whether the component is focusable. 
     The default is true. 
     Focusable components always have a tab index and
     allocate a key handler to handle keyboard events while focused. *)
 setFocusable : bool -> unit;

 (** *)
 setSelectedColor : color -> unit;
 
 (**  Sets which color is selected. 
      A value that is out-of-range means that no color is selected. *)
 setSelectedIndex : number -> unit;

 (**  Sets the size of the palette.
      Will throw an error after the picker has been rendered. *)
 setSize : size -> unit;
  > = "goog.ui.ColorPicker"
