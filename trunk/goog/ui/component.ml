(**
   * OClosure Project - 2010
   * Class goog.ui.Component
   * 
   * Class that provides the basic implementation for disposable objects. 
   * 
   * @author Cardoso Gabriel
   * @version 0.1
*)
open Events.EventTarget

type element = Dom_html.element

open Js
class type component = object
  inherit eventTarget
  (** Adds the specified component as the last child of this component. 
    * See goog.ui.Component#addChildAt for detailed semantics. 
    *) 
  method addChild : component t -> bool t -> unit meth
  (** Decorates the element for the UI component. *)
  method decorate : element t -> unit meth
  (** Returns the child with the given ID, or null if no such child exists. *)
  method getChild : js_string t -> component meth
  (* Returns the child at the given index, or null if the index is out of 
     bounds. *) 
   method getChildAt : Js.number t -> component opt meth  
  (** Renders the component. If a parent element is supplied, it should already
     * be in the document and then the component's element will be appended to 
     * it. If there is no optional parent element and the element doesn't have 
     * a parentNode then it will be appended to the document body. Throws an 
     * Error if the component is already rendered.
  *)
  method render : element t -> unit meth
end

let component : component t constr =
  Js.Unsafe.variable "goog.ui.Component"
