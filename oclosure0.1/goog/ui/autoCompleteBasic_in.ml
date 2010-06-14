(**
   * OClosure Project - 2010
   * Class goog.ui.AutoComplete.Basic
   *
   * Factory class for building a basic autocomplete widget that autocompletes
   * an inputbox or text area from a data array.
   * 
   * @author : Oran Charles
   * @version 0.1
   * @see 'goog.ui.AutoComplete'
*)
open AutoComplete

class external basic inherit autocomplete : string array -> JSOO.obj -> bool ->
<

> = "goog.ui.AutoComplete.Basic"
