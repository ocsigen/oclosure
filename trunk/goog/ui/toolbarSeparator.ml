(**
   OClosure Project - 2010

   Class goog.ui.ToolBarSeparator
   Class goog.ui.ToolBarSeparatorRenderer
   
   @author : Oran Charles
   @version 0.2
*)
open Js
open Separator
open MenuSeparatorRenderer
open Gdom

class type toolbarSeparator = object
  inherit separator
end

class type ['sep] toolbarSeparatorRenderer = object
  inherit ['sep] menuSeparatorRenderer

  (**
     Returns a styled toolbar separator implemented by the following DOM:
     <div class="goog-toolbar-separator goog-inline-block">&nbsp;</div>
     Overrides goog.ui.MenuSeparatorRenderer#createDom.
     @param separator Separator to render.
     @return Root element for the separator.
  *)
  method createDom : separator t -> Dom_html.element t meth
    
  (**
     Takes an existing element, and decorates it with the separator.  Overrides goog.ui.MenuSeparatorRenderer#decorate.
     @param separator Separator to decorate the element.
     @param element Element to decorate.
     @return Decorated element.
  *)
  method decorate : separator t -> #Dom_html.element t -> Dom_html.element t meth

  (**
     Returns the CSS class to be applied to the root element of components
     rendered using this renderer.
     @return Renderer-specific CSS class.
  *)
  method getCssClass : js_string t meth

end

(**
   A separator control for a toolbar. 
   @param opt_renderer Renderer to render or decorate the separator; defaults to goog.ui.ToolbarSeparatorRenderer.
   @param opt_domHelper Optional DOM helper, used for document interaction.
   @constructor
*)
let tmp = Js.Unsafe.variable "goog.ui.ToolbarSeparator"
let toolbarSeparator  : (toolbarSeparator #toolbarSeparatorRenderer t opt -> domHelper t opt -> toolbarSeparator t) constr = tmp

(**
   Renderer for toolbar separators.
   @constructor
*)
let toolbarSeparatorRenderer : toolbarSeparator #toolbarSeparatorRenderer t constr =
  Js.Unsafe.variable "goog.ui.ToolbarSeparatorRenderer"
