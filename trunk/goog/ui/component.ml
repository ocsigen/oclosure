(**
   OClosure Project - 2010
   Class goog.ui.Component
   
   Class that provides the basic implementation for disposable objects. 
   
   @author Cardoso Gabriel
   @version 0.1
*)
open Events
open Js

class type component = object
  inherit eventTarget

  method addChild : component t -> bool t opt -> unit meth

  method addChildAt : component t -> int -> bool t opt -> unit meth

  method canDecorate : #Dom_html.element t -> bool t meth

  method createDom : unit meth

  method decorate : #Dom_html.element t -> unit meth

  method disposeInternal : unit meth

  method enterDocument : unit meth

  method exitDocument : unit meth

  method getChild : js_string t -> component t opt meth

  method getChildAt : int -> component t opt meth  

  method getChildCount : int meth

  method getChildIds : js_string t js_array t meth

  method getContentElement : Dom_html.element t meth

  method getDomHelper : Gdom.domHelper t meth

  method getElement : Dom_html.element t meth

  method getElementByFragment : js_string t -> Dom_html.element t meth

  method getFragmentFromId : js_string t -> js_string t meth

  method getId : js_string t meth

  method getParent : component t opt meth

  method hasChildren : bool t meth

  method indexOfChild : component t opt -> int meth

  method isInDocument : bool t meth

  method isRightToLeft : bool t meth

  method makeId : js_string t -> js_string t meth

  method removeChild : (js_string t, component t) Tools.Union.t opt 
    -> bool t opt -> component t  meth

  method removeChildAt : int -> bool t opt -> component t meth

  method removeChildren : bool t opt -> unit meth

  method render : #Dom_html.element t opt -> unit meth

  method renderBefore : #Dom_html.element t -> unit meth

  method setId : js_string t -> unit meth

  method setParent : component t -> unit meth

  method setParentEventTarget : Events.eventTarget t opt -> unit meth

  method setRightToLeft : bool t -> unit meth

  method wasDecorated : bool t meth
end

let component : Gdom.domHelper t opt -> component t constr =
  Js.Unsafe.variable "goog.ui.Component"

module Component = struct
  let addChild (c : #component t) child (b : bool t opt) = 
    c##addChild((child : #component t :> component t), b)

  module State = struct 
    type state = 
	ALL | DISABLED | HOVER | ACTIVE | SELECTED | CHECKED | FOCUSED | OPENED
	  
    type state_pre = int

    let state_pre_of_state = function
	ALL -> 255 | DISABLED -> 1 | HOVER -> 2 | ACTIVE -> 4 | SELECTED -> 8
      | CHECKED -> 16 | FOCUSED -> 32 | OPENED -> 64 
	    
    let state_of_state_pre = function
	255 -> ALL | 1 -> DISABLED | 2 -> HOVER | 4 -> ACTIVE | 8 -> SELECTED 
      | 16 -> CHECKED | 32 -> FOCUSED | 64 -> OPENED 
      | _ -> invalid_arg "Goog.Ui.Component.state_of_state_pre"
  end

  module EventType = struct   
    let _BEFORE_SHOW = Js.string "beforeshow"
    let _SHOW = Js.string "show"
    let _HIDE = Js.string "hide"
    let _DISABLE = Js.string "disable"
    let _ENABLE = Js.string "enable"
    let _HIGHLIGHT = Js.string "highlight"
    let _UNHIGHLIGHT = Js.string "unhighlight"
    let _ACTIVATE = Js.string "activate"
    let _DEACTIVATE = Js.string "deactivate"
    let _SELECT = Js.string "select"
    let _UNSELECT = Js.string "unselect"
    let _CHECK = Js.string "check"
    let _UNCHECK = Js.string "uncheck"
    let _FOCUS = Js.string "focus"
    let _BLUR = Js.string "blur"
    let _OPEN = Js.string "open"
    let _CLOSE = Js.string "close"
    let _ENTER = Js.string "enter"
    let _LEAVE = Js.string "leave"
    let _ACTION = Js.string "action"
    let _CHANGE = Js.string "change"
  end
end
