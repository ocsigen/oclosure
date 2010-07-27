(** 
    OClosure Project - 2010
    Class goog.ui.Palette
    
    @author Bozman Cagdas
    @version 0.1
    @see 'goog.ui.Control'
*)
open Control

open Js
class type palette = object
  inherit control

  method disposeInternal : unit meth

  method getCaption : js_string t opt meth

  method getHighlightedIndex : int meth

  method getHighlightedItem : Dom.node t meth

  method getSelectedIndex : int meth

  method getSelectedItem : Dom.node t meth

  method getSize : Math.size t meth

  method handleKeyEvent : #Events.event t -> bool t meth

  method handleMouseDown : #Events.event t -> unit meth

  method handleMouseOut : #Events.event t -> unit meth

  method handleMouseOver : #Events.event t -> unit meth

  method handleSelectionChange : #Events.event t -> unit meth

  method performActionInternal : #Events.event t -> bool t meth

  method setCaption : js_string t -> unit meth

  method setHighlightedIndex : int -> unit meth

  method setSelectedIndex : int -> unit meth

  method setSelectedItem : Dom.node t -> unit meth

  method setSize : (Math.size t, int) Tools.Union.t -> int opt -> unit meth
end

class type ['pal] paletteRenderer = object
  inherit ['pal] Control.controlRenderer
  method canDecorate : #Dom_html.element t -> bool t meth

  method createDom : 'pal t -> Dom_html.element t meth
end

let paletteRenderer = Tools.variable "[oclosure]goog.ui.PaletteRenderer[/oclosure]"
let paletteRenderer : #palette paletteRenderer t constr = paletteRenderer

let palette = Tools.variable "[oclosure]goog.ui.Palette[/oclosure]"
let palette : (#Dom.node t js_array t -> palette #paletteRenderer t opt -> Gdom.domHelper t opt -> palette t) constr = palette

