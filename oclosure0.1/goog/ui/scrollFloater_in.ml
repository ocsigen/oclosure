(** OClosure Project - 2010
 * Class goog.ui.ScrollFloater
 * 
 * Creates a ScrollFloater; see file overview for details.
 * 
 * @author : Emmanuel CRESPIN
 * @version 0.1
 * @see 'goog.ui.Component'
 *)

open Component
type element = JSOO.obj

class external scrollFloater inherit component : unit ->
< (** Delegates dom creation to superclass, then constructs and
   * decorates required DOM elements.*)
  createDom : unit -> unit;
  
  (** Decorates the floated element with the standard ScrollFloater CSS class.*)
  decorateInternal : element -> unit;
  
  (** @inheritDoc*)
  enterDocument : unit -> unit;
  
  (** @inheritDoc*)
  diposeInternal : unit -> unit;
  
  (** Sets whether the element should be floated if it scrolls out of view.*)
  setScrollingEnabled : bool -> unit;
  
  (** Whether the component is enabled for scroll-floating.*)
  isScrollingEnabled : unit -> bool;
  
  (** Whether the component is currently scroll-floating.*)
  isFloating : unit -> bool;

> = "goog.ui.ScrollFloater"
