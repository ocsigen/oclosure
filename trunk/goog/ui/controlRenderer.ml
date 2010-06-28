(** 
   OClosure Project - 2010
   Class goog.ui.ControlRenderer
    
   Default renderer for goog.ui.Controls. Can be used as-is, but subclasses of 
   Control will probably want to use renderers specifically tailored for them by
   extending this class. Controls that use renderers delegate one or more of the
   following API methods to the renderer:
     
     * createDom - renders the DOM for the component
     * canDecorate - determines whether an element can be decorated by the 
   component
     * decorate - decorates an existing element with the component
     * setState - updates the appearance of the component based on its state
     * getContent - returns the component&#39;s content
     * setContent - sets the component&#39;s content
   
   Controls are stateful; renderers, on the other hand, should be stateless and
   reusable.
    
   @author Bozman Cagdas
   @version 0.2
*)
open Js

class type controlRenderer = object
  method canDecorate : Dom_html.element t -> bool t meth
end

let controlRenderer : controlRenderer t constr = 
  Js.Unsafe.variable "goog.ui.ControlRenderer"
