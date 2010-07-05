(**
   OClosure Project - 2010
   Class goog.ui.MenuSeparatorRenderer
   
   @author : 
   @version 0.2
*)

open Js

class type menuSeparatorRenderer = object
  inherit ControlRenderer.controlRenderer

(**
   Returns an empty, styled menu separator DIV.  Overrides {@link
   goog.ui.ControlRenderer#createDom}.
   @param separator Separator to render.
   @return Root element for the separator.
*)
  method createDom : #Separator.separator t -> Dom_html.element t meth

(**
   Takes an existing element, and decorates it with the separator.  Overrides
   {@link goog.ui.ControlRenderer#decorate}.
   @param separator Separator to decorate the element.
   @param element Element to decorate.
   @return Decorated element.
*)
  method decorate : #Separator.separator t -> Dom_html.element t -> Dom_html.element t meth

(**
   Returns the CSS class to be applied to the root element of components
   rendered using this renderer.
   @return Renderer-specific CSS class.
*)
  method getCssClass : js_string t meth

(**
   Overrides {@link goog.ui.ControlRenderer#setContent} to do nothing, since
   separators are empty.
   @param separator The separator's root element.
   @param content Text caption or DOM structure to be
   set as the separators's content (ignored).
*)
  method setContent : Separator.separator t -> ControlContent.controlContent -> unit meth
end

val menuSeparatorRenderer : (menuSeparatorRenderer t) constr
