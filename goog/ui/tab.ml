(**
   OClosure Project - 2010

   Class goog.ui.Tab
   
   @author Oran Charles
   @version 0.2
*)
open Js
open Control

class type tab = object 
  inherit control
  method getTooltip : js_string t optdef meth
  method setTooltip : js_string t -> unit meth
  method setTooltipInternal : js_string t -> unit meth
end

class type ['ctrl] tabRenderer = object
  inherit ['ctrl] controlRenderer
  method getCssClass : js_string t meth
  method createDom : 'ctrl t -> Dom_html.element t meth
  method decorate : 'ctrl t  -> #Dom_html.element t -> Dom_html.element t meth
  method getTooltip : #Dom_html.element t -> js_string t meth
  method setTooltip : #Dom_html.element t -> js_string t optdef -> unit meth
end

let tmp = Tools.variable "[oclosure]goog.ui.Tab[/oclosure]"
let tab : (ControlContent.controlContent -> tab #tabRenderer t opt -> Gdom.domHelper t opt -> tab t) constr = tmp

let tmp = Tools.variable "[oclosure]goog.ui.TabRenderer[/oclosure]"
let tabRenderer : tab tabRenderer t constr = tmp


