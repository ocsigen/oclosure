(**
   OClosure Project - 2010
   Class goog.ui.KeyboardShortcutHandler

   @author Cardoso Gabriel
   @version 0.2
 *)
open Js

class type keyboardShortcutHandler = object
  inherit Events.eventTarget

  method disposeInternal : unit meth

  method getAllShortcutsAreGlobal : bool t meth

  method getAlwaysPreventDefault : bool t meth

  method getAlwaysStopPropagation : bool t meth

  method getEventType : js_string t -> js_string t meth

  method getGlobalKeys : int js_array t meth

  method getModifierShortcutsAreGlobal : bool t meth

  method isShortcutRegistered : js_string t -> bool t meth

  method registerShortcut : js_string t -> js_string t meth

  method setAllShortcutsAreGlobal : bool t -> unit meth

  method setAlwaysPreventDefault : bool t -> unit meth

  method setAlwaysStopPropagation : bool t -> unit meth

  method setGlobalKeys : int js_array t -> unit meth

  method setModifierShortcutsAreGlobal : bool t -> unit meth

  method unregisterAll : unit meth

  method unregisterShortcut : js_string t -> unit meth
end

let tmp = Tools.variable "[oclosure]goog.ui.KeyboardShortcutHandler[/oclosure]"
let keyboardShortcutHandler :
    ((#Events.eventTarget t, #Dom_html.eventTarget t) Tools.Union.t opt 
     -> keyboardShortcutHandler t) constr = tmp
