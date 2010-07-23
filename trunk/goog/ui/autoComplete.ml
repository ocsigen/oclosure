(**
   OClosure Project - 2010

   Class goog.ui.AutoComplete
   
   @author : Oran Charles
   @version 0.2
*)
open Events
open Disposable
open Js
open Tools

class type autoComplete = object
  inherit eventTarget 
  
  method getRenderer : eventTarget meth
    
  method handleEvent : event t -> unit meth
    
  method setMaxMatches : int -> unit meth
    
  method setAutoHilite : bool t -> unit meth
    
  method setAllowFreeSelect : bool t -> unit meth
 
  method setTriggerSuggestionsOnUpdate : bool t -> unit meth

  method setToken : js_string t -> js_string t opt -> unit meth

  method getTarget : js_string t meth

  method setTarget : #Dom_html.element t -> unit meth
    
  method isOpen : bool t meth
    
  method hiliteNext : bool t meth

  method hilitePrev : bool t meth

  method hiliteId : int -> bool meth

  method selectHilited : bool t meth
    
  method dismiss : unit meth

  method dismissOnDelay : unit meth
    
  method cancelDelayedDismiss : unit meth
    
  method disposeInternal : unit meth
    
  method renderRows : js_string t array -> bool t opt -> unit meth
 
end

(*let autocomplete : (obj -> eventTarget -> obj -> autocomplete t) constr = 
  Js.Unsafe.variable "goog.ui.AutoComplete"*)

  
module AutoComplete = struct 

  module EventType = struct 
    let _HILITE = Js.string "hilite"
      
    let _SELECT = Js.string "select"
      
    let _DISMISS = Js.string "dismiss"
      
    let _CANCEL_DISMISS = Js.string  "canceldismiss"
      
    let _UPDATE = Js.string "update"
  end

  class type arrayMatcher = object 

    method requestMatchingRows : js_string t -> int -> (unit -> unit) -> js_string opt -> unit meth
      
    method getPrefixMatches : js_string t -> int -> js_string t array
      
    method getSimilarRows : js_string t -> int -> js_string t array
  end
	    
  let arrayMatcher : (js_string t array -> bool t opt 
    -> arrayMatcher t) constr = 
    Js.Unsafe.variable "goog.ui.AutoComplete.ArrayMatcher"

  class type inputHandler = object
    inherit disposable 
      
    method attachAutoComplete : autoComplete t -> unit meth 
      
    method getAutoComplete : autoComplete t meth
      
    method getActiveElement : Dom_html.element t meth
      
    method getValue : js_string t meth
      
    method setValue : int -> unit meth
      
    method getCursorPosition : int meth
      
    method setCursorPosition : int -> unit meth
      
    method attachInput : #Dom_html.element t -> unit meth
      
    method detachInput : #Dom_html.element t -> unit meth
      
    (* method selectRow : ?????*)
      
    method disposeInternal : unit meth
      
    method setSeparators : js_string t -> unit meth

    method setUpsideDown : bool t -> unit meth 

    method setWhitespaceWrapEntries : bool t -> unit meth
      
    method setGenerateNewTokenOnLiteral : bool t -> unit meth

    method setTrimmingRegExp : regExp t -> unit meth
      
    method setPreventDefaultOnTab : bool t -> unit meth
      
    method setSeparatorCompletes : bool t -> unit meth

    method setSeparatorSelects : bool t -> unit meth

    method getThrottleTime : int meth

    method setRowJustSelected : bool t -> unit meth

    method setThrottleTime : int -> unit meth

    method getUpdateDuringTyping : bool t meth

    method setUpdateDuringTyping : bool t -> unit meth

    method update : bool t opt -> unit meth
  end


  let inputHandler : (js_string t opt -> js_string t opt -> bool t opt -> int -> inputHandler t) constr =
    Js.Unsafe.variable "goog.ui.AutoComplete.InputHandler"

  module InputHandler = struct
    let _STANDARD_LIST_SEPARATORS = Js.string ",;"

    let _QUOTE_LITERALS = Js.string "\""
  end 

  class type basic = object
    inherit autoComplete
  end
  let tmp = Js.Unsafe.variable "goog.ui.AutoComplete.Basic"
  let basic : (string js_array t -> #Dom_html.element t -> bool t opt -> bool t opt -> basic t) constr = tmp   

  class type remote = object 
    inherit autoComplete

    method setUseStandardHighlighting : bool t -> unit meth
      
    method getInputHandler : inputHandler t meth
      
    method setMethod : js_string t -> unit meth 
      
    method setContent : js_string t -> unit meth
      
    method setHeaders : #Dom_html.element t -> unit meth
      
    method setTimeoutInterval : float -> unit meth  
  end

  let tmp = Js.Unsafe.variable "goog.ui.AutoComplete.Remote"
  let remote : (js_string t -> #Dom_html.element t -> bool t opt -> bool t opt 
    -> remote t) constr = tmp

  class type richRemote = object 
    inherit autoComplete
    method setRowFilter : (unit -> unit) callback -> unit meth      
  end

  let tmp = Js.Unsafe.variable "goog.ui.AutoComplete.RichRemote"
  let richRemote : (js_string t -> #Dom_html.element t -> bool t opt -> bool t opt -> richRemote t) constr = tmp
 
end
