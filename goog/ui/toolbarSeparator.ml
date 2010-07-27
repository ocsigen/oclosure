(**
   OClosure Project - 2010

   Class goog.ui.ToolBarSeparator
   Class goog.ui.ToolBarSeparatorRenderer
   
   @author : Oran Charles
   @version 0.2
*)
open Js
open Separator
open Gdom

class type toolbarSeparator = object
  inherit separator
end

class type ['sep] toolbarSeparatorRenderer = object
  inherit ['sep] menuSeparatorRenderer
  method createDom : separator t -> Dom_html.element t meth
  method decorate : separator t -> #Dom_html.element t 
    -> Dom_html.element t meth
  method getCssClass : js_string t meth
end

let toolbarSeparatorRenderer : toolbarSeparator #toolbarSeparatorRenderer t constr =
  Tools.variable "[oclosure]goog.ui.ToolbarSeparatorRenderer[/oclosure]"

let tmp = Tools.variable "[oclosure]goog.ui.ToolbarSeparator[/oclosure]"
let toolbarSeparator  : (toolbarSeparator #toolbarSeparatorRenderer t opt -> domHelper t opt -> toolbarSeparator t) constr = tmp
