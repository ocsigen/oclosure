(**
   * OClosure Project - 2010
   * Class goog.ui.Container
   * 
   * Base class for containers. Extends goog.ui.Component by adding the 
   * following:
   *  - a goog.events.KeyHandler, to simplify keyboard handling,
   *  - a pluggable renderer framework, to simplify the creation of containers 
   *    without the need to subclass this class,
   *  - methods to manage child controls hosted in the container,
   *  - default mouse and keyboard event handling methods. 
   * 
   * @author Cardoso Gabriel
   * @version 0.1
*)
open Component
open Control

class external container inherit component:
  <
  (** Adds the specified control as the last child of this container. 
     * See goog.ui.Container#addChildAt for detailed semantics. 
  *)
  addChild: control -> bool -> unit
  > = "goog.ui.Container"
