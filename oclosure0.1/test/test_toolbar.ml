(* 
 * Module goog.ui.ToolBar
 * 
 * Cardoso Gabriel - 2010
 *)

open Js

let t = new Toolbar.toolbar
let _ = t#addChild (new ToolbarButton.toolbarButton "Button") true
let _ = t#render (Js.get_element_by_id "toolbar")
