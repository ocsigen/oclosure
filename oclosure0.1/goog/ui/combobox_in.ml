(**
 * OClosure Project - 2010
 * Class goog.ui.Combobox
 *
 * A ComboBox control.
 * @param {goog.dom.DomHelper=} opt_domHelper Optional DOM helper.
 * @extends {goog.ui.Component} * 
 * @author Bourdin Piere
 * @version 0.1
 *)

open Js
open Component

type element = JSOO.obj
type arrow
  
  

class external comboboxitem  :string->
  <
  (*Sets the menu item to be sticky or not sticky.
   * @param {boolean} sticky Whether the menu item should be sticky.*)
  setSticky:bool->unit;
 (*@return {boolean} Whether the menu item is sticky.*)
 isSticky:unit->bool;
 (*Sets the format for a menu item based on a token, bolding the token.
  * @param {string} token The token.*)
 setFormatFromToken:string->string;
 > = "goog.ui.ComboBoxItem"
       
class external combobox inherit component:  
  <
  (*Adds a new menu item at the end of the menu.
   * @param {goog.ui.MenuItem} item Menu item to add to the menu.*)
  addItem:comboboxitem->unit;
 (*
  * Adds a new menu item at a specific index in the menu.
  * @param {goog.ui.MenuItem} item Menu item to add to the menu.
  * @param {number} n Index at which to insert the menu item.*)
 addItemAt:comboboxitem->int->unit;
 (** Sets the default text for the combo box.
  * @param {string} text The default text for the combo box.
  */
  *)
 setDefaultText:string->unit;
 (* @return {string} text The default text for the combox box.*)
 getDefaultText:unit->string;
 enterDocument:unit->unit;
 exitDocument:unit->unit;
 (** Combo box currently can't decorate elements.
  * @return {boolean} The value false.
  *)
 canDecorate:unit->bool;
 disposeInternal:unit->unit;
 dissim:unit->unit;
 (*
  * Removes an item from the menu and disposes it.
  * @param {goog.ui.MenuItem} item The menu item to remove.*)
 removeItem:comboboxitem->unit;
 (* * Removes a menu item at a given index in the menu.
  * @param {number} n Index of item.*)
 removeAllItems:unit->unit;
 (** Returns a reference to the menu item at a given index.
  * @param {number} n Index of menu item.
  * @return {goog.ui.MenuItem?} Reference to the menu item.*)
 removeItemAt:int->unit;
 getItemAt:int->comboboxitem;
 (* Sets the field name for the combo box.
  * @param {string} fieldName The field name for the combo box.*)
 getFieldName:unit->string;
 (*Set to true if a unicode inverted triangle should be displayed in the
  * dropdown button.
  * This option defaults to false for backwards compatibility.
  * @param {boolean} useDropdownArrow True to use the dropdown arrow.*) 
 setUseDropdownArrow:arrow->unit;
 (*Sets the current value of the combo box.
 * @param {string} value The new value.*)
 setValue:string->unit;
 (*@return {string} The current value of the combo box.*)
 getValue:unit->string;
> = "goog.ui.ComboBox" 





