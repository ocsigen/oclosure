open Js

class type plugin = object
  inherit Events.eventTarget
  method getFieldDomHelper : Gdom.domHelper t opt meth
  method registerFieldObject : field t -> unit meth
  method unregisterFieldObject : field t -> unit meth
  method enable : field t -> unit meth
  method disable : field t -> unit meth
  method isEnabled : field t -> bool t meth
  method setAutoDispose : bool t -> unit meth
  method isAutoDispose : bool t meth
  method activeOnUneditableFields : bool t meth
  method isSilentCommand : js_string t -> bool t meth
  method disposeInternal : unit meth
(*  method execCommand : *)
  method isSupportedCommand : js_string t -> bool t meth
end

and field = object
  inherit Events.eventTarget
  method inModalMode : bool t meth
  method setModalMode : bool t -> unit meth
  method getHashCode : js_string t meth
  method getElement : Dom_html.element t meth
  method getOriginalElement : Dom_html.element t meth
  method addListener : 
      (js_string t, js_string t js_array t) Tools.Union.t 
       -> (unit -> unit) callback -> bool t opt -> unit meth
  method getPluginByClassId : js_string t -> plugin t meth
  method setInitialStyle : js_string t -> unit meth
  method resetOriginalElemProperties : unit meth
  method isModified : bool t opt -> bool t meth
  method usesIframe : bool t meth
  method isFixedHeight : bool t meth
  method setAppWindow : Dom_html.window t -> unit meth
  method getAppWindow : Dom_html.window t meth
  method setBaseZindex : int -> unit meth
  method getBaseZindex : int meth
  method disposeInternal : unit meth
  method attachWrapper : #Disposable.disposable t -> unit meth
  method removeAllWrappers : unit meth
  method getInjectableContents : js_string t -> js_string t meth
  method getEditableDomHelper : Gdom.domHelper t opt meth 
  method dispatchSelectionChangeEvent : #Events.browserEvent t -> unit meth 
  method dispatchBeforeChange : unit meth
  method stopChangeEvents : bool t opt -> bool t opt -> unit meth 
  method startChangeEvents : bool t opt -> bool t opt -> unit meth
  method stopEvent : js_string t -> unit meth
  method startEvent : js_string t -> unit meth
  method debounceEvent : js_string t meth
  method manipulateDom : (unit -> unit) callback -> bool t opt -> unit meth
  method dispatchCommandValueChange : js_string t js_array t -> unit meth    
  method dispatchChange : bool t opt -> unit meth
  method handleChange : unit meth
  method clearDelayedChange : unit meth
  method isSelectionEditable : bool t meth
  method getCleanContents : js_string t meth 
  method setHtml : bool t -> js_string t opt -> bool t opt -> bool t opt 
    -> unit meth
  method isUneditable : bool t meth 
  method isLoaded : bool t meth
  method isLoading : bool t meth
  method focus : unit meth
  method focusAndPlaceCursorAtStart : unit meth 
  method placeCursorAtStart : unit meth
  method makeEditable : js_string t opt -> unit meth
  method makeUneditable : bool t opt -> unit meth
end

let field : (js_string t -> Dom_html.document t opt -> field t) constr = 
  Tools.variable "[oclosure]goog.editor.Field[/oclosure]"

module Field = struct
  let registerPlugin (field : field t) p : unit = 
    (Js.Unsafe.coerce field)##registerPlugin(p)

  let unregisterPlugin (field : field t) p : unit =
    (Js.Unsafe.coerce field)##unregisterPlugin(p)

  module EventType = struct
    let _COMMAND_VALUE_CHANGE = Js.string "cvc"
    let _LOAD = Js.string "load"
    let _UNLOAD = Js.string "unload"
    let _BEFORECHANGE = Js.string "beforechange"
    let _CHANGE = Js.string "change"
    let _DELAYEDCHANGE = Js.string "delayedchange"
    let _BEFOREFOCUS = Js.string "beforefocus"
    let _FOCUS = Js.string "focus"
    let _BLUR = Js.string "blur"
    let _BEFORETAB = Js.string "beforetab"
    let _SELECTIONCHANGE = Js.string "selectionchange"
  end
end
