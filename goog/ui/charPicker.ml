(**
   OClosure Project - 2010
   Class goog.ui.CharPicker
   
   @author Oran Charles
   @version 0.1
*)
open Component

open Js
class type charPicker = object
  inherit component

  method getSelectedChar : js_string t opt meth

  method getRecentChars : js_string t js_array t meth

  method createDom : unit meth

  method disposeInternal : unit meth

  method decorateInternal : #Dom_html.element t -> unit meth

  method enterDocument : unit meth

end

let charPicker : (I18n.charPickerData t -> js_string t js_array t -> int opt -> int opt -> int opt -> int opt -> Gdom.domHelper t opt -> charPicker t) constr =
  Tools.variable "[oclosure]goog.ui.CharPicker[/oclosure]"
