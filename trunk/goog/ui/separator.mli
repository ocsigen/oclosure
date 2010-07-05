(**
   OClosure Project - 2010
   Class goog.ui.Separator
   
   @author : Cardoso Gabriel
   @version 0.2
*)

open Js

class type separator = object
  inherit Control.control
(**
   Configures the component after its DOM has been rendered.  Overrides
   {@link goog.ui.Control#enterDocument} by making sure no event handler
   is allocated.
*)
  method enterDocument : unit meth
end

val separator : (separator t) constr
