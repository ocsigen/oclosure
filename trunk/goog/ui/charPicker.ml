(**
 * OClosure Project - 2010
 * Class goog.ui.CharPicker
 *
 * Character Picker Class. This widget can be used to pick any Unicode
 * character by traversing a category-subcategory structure or by inputing its
   hex value.
 *
 * @author : Oran Charles
 * @version 0.1
 * @see 'goog.ui.Component'
 *)
open Component
open CharPickerData

type element = Dom.element

open Js
class type charPicker = object
  inherit component

  (** Gets the last selected character. **)
  method getSelectedChar : unit -> js_string t meth

 (** Gets the list of characters user selected recently. **) 
  method getRecentChars : unit -> js_string t array meth

 (** @inheritDoc **)
  method createDom : unit -> unit meth

 (** @inheritDoc **)
  method disposeInternal : unit -> unit meth

 (** @inheritDoc **)
  method decorateInternal : element -> unit meth

 (** @inheritDoc **)
  method enterDocument : unit -> unit meth

end

let charPicker : (charPickerData -> js_string t array -> float -> float -> charPicker t) constr =
  Js.Unsafe.variable "goog.ui.CharPickerData"
