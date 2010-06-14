(**
   * OClosure Project - 2010
   * Class goog.ui.Component
   * 
   * Class that provides the basic implementation for disposable objects. 
   * 
   * @author Cardoso Gabriel
   * @version 0.1
*)
open EventTarget

class external component inherit eventTarget: 
  <
  (** Adds the specified component as the last child of this component. 
    * See goog.ui.Component#addChildAt for detailed semantics. 
    *) 
  addChild : component -> bool -> unit;
  (** Decorates the element for the UI component. *)
  decorate : JSOO.obj -> unit;
  (** Returns the child with the given ID, or null if no such child exists. *)
  getChild : string -> component;
  (** Renders the component. If a parent element is supplied, it should already
     * be in the document and then the component's element will be appended to 
     * it. If there is no optional parent element and the element doesn't have 
     * a parentNode then it will be appended to the document body. Throws an 
     * Error if the component is already rendered.
  *)
  render : JSOO.obj -> unit;
  > = "goog.ui.Component"
