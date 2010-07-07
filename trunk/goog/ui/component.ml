(**
   * OClosure Project - 2010
   * Class goog.ui.Component
   * 
   * Class that provides the basic implementation for disposable objects. 
   * 
   * @author Cardoso Gabriel
   * @version 0.1
*)
open Events
open Js

class type component = object
  inherit eventTarget

  method addChild : component t -> bool t opt -> unit meth
  
  method decorate : Dom_html.element t -> unit meth
  
  method getChild : js_string t -> component t opt meth

  method getChildAt : int -> component t opt meth  

  method render : Dom_html.element t opt -> unit meth
  
  method getElement : Dom_html.element t meth

  method getParent : component t opt meth

  method enterDocument : unit meth
end

let component : component t constr =
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
