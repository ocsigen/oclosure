(** 
    OClosure Project - 2010
    Class goog.ui.Palette
    
    A palette is a grid of DOM nodes that the user can highlight or
    select via the keyboard or the mouse.
    The selection state of the palette is controlled an ACTION event.
    Event listeners may retrieve the selected item using the #getSelectedItem
    or #getSelectedIndex method.
    Use this class as the base for components like color palettes or
    emoticon pickers.
    Use #setContent to set/change the items in the palette after construction.
    See palette.html demo for example usage. 
    
    @author Bozman Cagdas
    @version 0.1
    @see 'goog.ui.Control'
*)
open Control

class  external palette inherit control: 
  <
  > = "goog.ui.Palette"
