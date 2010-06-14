(** 
    * OClosure Project - 2010 
    * Class goog.ui.PopupBase
    * 
    * The PopupBase class provides functionality for showing and
    * hiding a generic container element. It also provides the option 
    * for hiding the popup element if the user clicks outside the 
    * popup or the popup loses focus.
    * 
    * @author Esther Baruk
    * @version 0.1
*)

type number = JSOO.obj
type element = JSOO.obj

(**  Enumeration of type string
    goog.ui.PopupBase.Type = {
    * TOGGLE_DISPLAY: 'toggle_display',
    * MOVE_OFFSCREEN: 'move_offscreen'
    * };
*)
type type_ = string

class external popupbase (* inherit eventTarget*): element ->
  <
    (** Returns the type of popup this is.*)
    getType : unit -> type_;

    (** Specifies the type of popup to use.*)
    setType : type_ -> unit;

    (** Returns whether the popup should hide itself asynchronously 
       * using a timeout instead of synchronously.*)
    shouldHideAsync : unit -> bool;

    (** Sets whether the popup should hide itself asynchronously 
       * using a timeout instead of synchronously.*)
    setShouldHideAsync : bool -> unit;

    (** Returns the dom element that should be used for the popup.*)
    getElement : unit -> element;

    (** Specifies the dom element that should be used for the popup.*)
    setElement : element -> unit;

    (** Returns whether the Popup dismisses itself when the user clicks
       * outside of it.*)
    getAutoHide : unit -> bool;

    (** Sets whether the Popup dismisses itself when the user clicks outside of it.*)
    setAutoHide : bool -> unit;

    (** Returns whether the Popup autohides on the escape key.*)
    getHideOnEscape : unit -> bool;

    (** Sets whether the Popup dismisses itself on the escape key.*)
    setHideOnEscape : bool -> unit;

    (** Returns whether cross iframe dismissal is enabled.*)
    getEnableCrossIframeDismissal : unit -> bool;

    (** Sets whether clicks in other iframes should dismiss this popup.  
       * In some cases it should be disabled, because it can cause spurious*)
    setEnableCrossIframeDismissal : bool -> unit;

    (** Returns the region inside which the Popup dismisses itself when 
       * the user clicks, or null if it's the entire document.*)
    getAutoHideRegion : unit -> bool;

    (** Sets the region inside which the Popup dismisses itself when 
       * the user clicks.*)
    setAutoHideRegion : bool -> unit;  

    (** Returns the time when the popup was last shown. Time in ms since
       * epoch or -1 if the popup was never shown.*)
    getLastShowTime : unit -> number;

    (** Returns the time when the popup was last hidden. Time in ms since
       * epoch or -1 if the popup was never hidden or is currently showing.*)
    getLastHideTime : unit -> number;

    (** Returns whether the popup is currently visible.*)
    isVisible : unit -> bool;

    (** Returns whether the popup is currently visible or was visible 
       * within about 150 ms ago. This is used by clients to handle a 
       * very specific, but common, popup scenario. The button that 
       * launches the popup should close the popup on mouse down if 
       * the popup is already open. The problem is that the popup closes 
       * itself during the capture phase of the mouse down and thus the 
       * button thinks it's hidden and this should show it again. This method 
       * provides a good heuristic for clients. Typically in their event 
       * handler they will have code that is:
       *     if (menu.isOrWasRecentlyVisible()) {
       *       menu.setVisible(false);
       *     } else {
	*          ... (* code to position menu and initialize other state *)
       *          menu.setVisible(true);
       *     }*)
    isOrWasRecentlyVisible : unit -> bool;

    (** Sets whether the popup should be visible.*)
    setVisible : bool -> unit;

    (** Shows the popup element.*)
    showPopupElement : unit -> unit;

    (** Called before the popup is shown. Derived classes can 
       * override to hook this event but should make sure to call 
       * the parent class method.*)
    onBeforeShow : unit -> bool; 
  > = "goog.ui.PopupBase";;


