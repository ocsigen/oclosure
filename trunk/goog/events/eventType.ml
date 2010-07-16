open Js

type eventType =
  (* Mouse events*)
  | CLICK
  | DBLCLICK
  | MOUSEDOWN
  | MOUSEUP
  | MOUSEOVER
  | MOUSEOUT
  | MOUSEMOVE
  | SELECTSTART

  (* Key events*)
  | KEYPRESS
  | KEYDOWN
  | KEYUP

  (* Focus*)
  | BLUR
  | FOCUS
  | DEACTIVATE
  (* TODO(user): Test these. I experienced problems with DOMFocusIn, the event*)
  (* just wasn't firing.*)
  | FOCUSIN
  | FOCUSOUT

  (* Forms*)
  | CHANGE
  | SELECT
  | SUBMIT

  (* Drag and drop*)
  | DRAGSTART
  | DRAGENTER
  | DRAGOVER
  | DRAGLEAVE
  | DROP

  (* Misc*)
  | CONTEXTMENU
  | ERROR
  | HASHCHANGE
  | HELP
  | LOAD
  | LOSECAPTURE
  | READYSTATECHANGE
  | RESIZE
  | SCROLL
  | UNLOAD

type eventType_pre = js_string t

let of_eventType = function
  | CLICK -> Js.string "click"
  | DBLCLICK -> Js.string "dblclick"
  | MOUSEDOWN -> Js.string "mousedown"
  | MOUSEUP -> Js.string "mouseup"
  | MOUSEOVER -> Js.string "mouseover"
  | MOUSEOUT -> Js.string "mouseout"
  | MOUSEMOVE -> Js.string "mousemove"
  | SELECTSTART-> Js.string "selectstart"
  | KEYPRESS -> Js.string "keypress"
  | KEYDOWN -> Js.string "keydown"
  | KEYUP -> Js.string "keyup"
  | BLUR -> Js.string "blur"
  | FOCUS -> Js.string "focus"
  | DEACTIVATE -> Js.string "deactivate"
  | FOCUSIN -> if Js.to_bool UserAgent.iE then Js.string "focusin" 
    else Js.string "DOMFocusIn"
  | FOCUSOUT -> if Js.to_bool UserAgent.iE then Js.string "focusout" 
    else Js.string "DOMFocusOut"
  | CHANGE -> Js.string "change"
  | SELECT -> Js.string "select"
  | SUBMIT -> Js.string "submit"
  | DRAGSTART -> Js.string "dragstart"
  | DRAGENTER -> Js.string "dragenter"
  | DRAGOVER -> Js.string "dragover"
  | DRAGLEAVE -> Js.string "dragleave"
  | DROP -> Js.string "drop"
  | CONTEXTMENU -> Js.string "contextmenu"
  | ERROR -> Js.string "error"
  | HASHCHANGE -> Js.string "hashchange"
  | HELP -> Js.string "help"
  | LOAD -> Js.string "load"
  | LOSECAPTURE -> Js.string "losecapture"
  | READYSTATECHANGE -> Js.string "readystatechange"
  | RESIZE -> Js.string "resize"
  | SCROLL -> Js.string "scroll"
  | UNLOAD -> Js.string "unload"
