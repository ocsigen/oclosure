(* OClosure - 2010   *
 * Esther Baruk      *
 * goog.ui.Popupbase *
 *)

type number = JSOO.obj
type element = JSOO.obj


class external popupbase : element ->
  <
  (* variables : a ne pas binder*)
  (* element_ : element;
     autoHide_ : bool;
     autoHideRegion_ : element;
     isVisible_ : bool;
     shouldHideAsync_ : bool;
     lastShowTime_ : number;
     lastHideTime_ : number;
  hideOnEscape_ : bool;
  enableCrossIframeDismissal_ : bool;*)
  setShouldHideAsync : bool -> unit;
  getElement : unit -> element;
  setElement : element -> unit;
  getAutoHide : unit -> bool;
  setAutoHide : bool -> unit;
  getHideOnEscape : unit -> bool;
  setHideOnEscape : bool -> unit;
  getEnableCrossIframeDismissal : unit -> bool;
  setEnableCrossIframeDismissal : bool -> unit;
  getAutoHideRegion : unit -> bool;
  setAutoHideRegion : bool -> unit;  
  getLastShowTime : unit -> number;
  getLastHideTime : unit -> number;
  isVisible : unit -> bool;
  isOrWasRecentlyVisible : unit -> bool;
  setVisible : bool -> unit;
  hide_ : unit -> bool; 
  (*hide_ takes an optional parameter : Target of the event causing the hide *)
  showPopupElement : unit -> unit;
  onBeforeShow : unit -> bool; (* call dispatchEvent*)
  > = "goog.ui.PopupBase";;


