(** 
    * OClosure Project - 2010 
    * Class goog.ui.Tooltip
    *
    * Tooltip widget. Can be attached to one or more elements 
    * and is shown, with a slight delay, when the the cursor is over 
    * the element or the element gains focus.
    *
    * @author Esther Baruk
    * @version 0.1
    * @see 'goog.dom.DomHelper'
*)
open Gdom

open Positioning

open Tools

type state =
  | INACTIVE
  | WAITING_TO_SHOW
  | SHOWING
  | WAITING_TO_HIDE
  | UPDATING

open Js
class type tooltip = object
  inherit Popup.popup
  method getDomHelper : domHelper meth
  method attach : (#Dom_html.element t, js_string t) Union.t -> unit meth
  method detach : (#Dom_html.element t, js_string t) Union.t opt -> unit meth
  method setshowDelayMs : int -> unit meth
  method getShowDelayMs : int meth
  method setHideDelayMs : int -> unit meth
  method getHideDelayMs : int meth
  method setText : js_string t -> unit meth
  method setHtml : js_string t -> unit meth
  method setElement : #Dom_html.element t -> unit meth
  method getText : js_string t meth
  method getHtml : js_string t meth
  method getState : state meth
  method setRequireInteraction : bool t -> unit meth
  method isCoordinateInTooltip : Math.coordinate t -> bool t meth
  method maybeShow : #Dom_html.element t -> abstractPosition t opt -> unit meth
  method showForElement : #Dom_html.element t -> abstractPosition t opt 
    -> unit meth
  method maybeHide : #Dom_html.element t -> unit meth
  method hasActiveChild : bool meth
  method disposeInternal : unit meth
  method className : js_string t prop
end

let tmp = Js.Unsafe.variable "goog.ui.Tooltip"
let tooltip : ((#Dom_html.element t, js_string t) Union.t opt -> js_string t opt -> domHelper t opt -> tooltip t) constr = tmp
