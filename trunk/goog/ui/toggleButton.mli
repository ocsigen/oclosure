(**
   OClosure Project - 2010
   Class goog.ui.ToggleButton
   
   @author : Cardoso Gabriel
   @version 0.2
*)

open Js

class type toggleButton = object
  inherit Button.button
end

(**
   A toggle button, with checkbox-like semantics.  Rendered using
   {@link goog.ui.CustomButtonRenderer} by default, though any
   {@link goog.ui.ButtonRenderer} would work.
   
   @param content Text caption or existing DOM
   structure to display as the button's caption.
   @param opt_renderer Renderer used to render or
   decorate the button; defaults to {@link goog.ui.CustomButtonRenderer}.
   @param opt_domHelper Optional DOM hepler, used for
   document interaction.
   @constructor
*)
val toggleButton : (ControlContent.controlContent 
		    -> toggleButton #Button.buttonRenderer t opt 
		    -> Gdom.domHelper t opt -> toggleButton t) constr
