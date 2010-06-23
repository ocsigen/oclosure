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

open Js

type element = Dom.element

(**  Enumeration of type string
    goog.ui.PopupBase.Type = {
    * TOGGLE_DISPLAY: 'toggle_display',
    * MOVE_OFFSCREEN: 'move_offscreen'
   }
*)
type type_ = js_string

class type popupBase = object
    (** Returns the type of popup this is.*)
  method getType : type_ meth
      
    (** Specifies the type of popup to use.*)
  method setType : type_ -> unit meth
      
    (** Returns whether the popup should hide itself asynchronously 
       * using a timeout instead of synchronously.*)
  method shouldHideAsync : bool meth
      
    (** Sets whether the popup should hide itself asynchronously 
       * using a timeout instead of synchronously.*)
  method setShouldHideAsync : bool -> unit meth
      
    (** Returns the dom element that should be used for the popup.*)
  method getElement : element meth
      
    (** Specifies the dom element that should be used for the popup.*)
  method setElement : element -> unit meth
      
    (** Returns whether the Popup dismisses itself when the user clicks
       * outside of it.*)
  method getAutoHide : bool meth
      
    (** Sets whether the Popup dismisses itself when the user clicks outside of it.*)
  method setAutoHide : bool -> unit meth
      
    (** Returns whether the Popup autohides on the escape key.*)
  method getHideOnEscape : bool meth
      
    (** Sets whether the Popup dismisses itself on the escape key.*)
  method setHideOnEscape : bool -> unit meth
      
    (** Returns whether cross iframe dismissal is enabled.*)
  method getEnableCrossIframeDismissal : bool meth
      
    (** Sets whether clicks in other iframes should dismiss this popup.  
       * In some cases it should be disabled, because it can cause spurious*)
  method setEnableCrossIframeDismissal : bool -> unit meth
      
    (** Returns the region inside which the Popup dismisses itself when 
       * the user clicks, or null if it's the entire document.*)
  method getAutoHideRegion : bool meth
      
    (** Sets the region inside which the Popup dismisses itself when 
       * the user clicks.*)
  method setAutoHideRegion : bool -> unit meth
      
    (** Returns the time when the popup was last shown. Time in ms since
       * epoch or -1 if the popup was never shown.*)
  method getLastShowTime : number meth
      
    (** Returns the time when the popup was last hidden. Time in ms since
       * epoch or -1 if the popup was never hidden or is currently showing.*)
  method getLastHideTime : number meth
      
    (** Returns whether the popup is currently visible.*)
  method isVisible : bool meth
      
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
       method *       menu.setVisible(false) meth
       *     } else {
       *          ... (* code to position menu and initialize other state *)
       method *          menu.setVisible(true) meth
       *     }*)
  method isOrWasRecentlyVisible : bool meth
      
    (** Sets whether the popup should be visible.*)
  method setVisible : bool -> unit meth
      
    (** Shows the popup element.*)
  method showPopupElement : unit meth
      
    (** Called before the popup is shown. Derived classes can 
       * override to hook this event but should make sure to call 
       * the parent class method.*)
  method onBeforeShow : bool meth
end
 
let popubBase : (element -> popupBase t) constr =
  Js.Unsafe.variable "goog.ui.PopupBase"
