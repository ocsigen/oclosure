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

type element = JSOO.obj

class external charPicker inherit component : charPickerData -> string array -> float -> float ->
<

  (** Gets the last selected character. **)
  getSelectedChar : unit -> string;

 (** Gets the list of characters user selected recently. **) 
 getRecentChars : unit -> string array;

 (** @inheritDoc **)
 createDom : unit -> unit;

 (** @inheritDoc **)
 disposeInternal : unit -> unit;

 (** @inheritDoc **)
 decorateInternal : element -> unit;

 (** @inheritDoc **)
 enterDocument : unit -> unit;

> = "goog.ui.CharPickerData"
