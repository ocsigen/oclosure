(**
   * OClosure Project - 2010
   * Class goog.ui.AnimatedZippy
   *
   * Zippy widget. Expandable/collapsible container, 
   * clicking the header toggles the visibility of the content.
   *
   * @author : Oran Charles
   * @version 0.1
   * @see 'goog.ui.Zippy'
   * @see 'goog.events.Event'
*)
open Zippy
open Event

class external animatedzippy inherit zippy : string -> string -> bool ->    
< 
  (** Whether the zippy is in the process of being expanded or collapsed. *)
  isBusy : unit -> bool;

 (** Sets expanded state.*)
 setExpanded : bool -> unit;

 (** Called during animation. *)
 onAnimate_ : event -> unit;

 (** Called once the expand/collapse animation has completed. *)
 onAnimationCompleted_ : bool -> unit;

 > = "goog.ui.AnimatedZippy" 
