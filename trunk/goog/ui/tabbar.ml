(**
 * OClosure Project - 2010
 * Tab bar UI component.  A tab bar contains tabs, rendered above, below,
 * before, or after tab contents.  Tabs in tab bars dispatch the following
 * 
 * Clients may listen for all of the above events on the tab bar itself, and
 * refer to the event target to identify the tab that dispatched the event.
 * When an unselected tab is clicked for the first time, it dispatches both a
  method * {@code SELECT} event and an {@code ACTION} event meth
 * already selected tab only result in {@code ACTION} events.
 *
  method * @param {goog.ui.TabBar.Location=} opt_location Tab bar location meth
 *     {@link goog.ui.TabBar.Location.TOP}.
 * @param {goog.ui.TabBarRenderer=} opt_renderer Renderer used to render or
  method *     decorate the container meth
 * @param {goog.dom.DomHelper=} opt_domHelper DOM helper, used for document
 *     interaction.
 * @constructor
 * @extends {goog.ui.Container}
 * @author Bourdin Pierre
 * @version 0.1
 *)

open Js
open Container
type element = Dom.element

let location_top = "top"
let location_bottom = "bottom"
let location_start = "start"
let location_end = "end"

		 
class type tabbar = object
  inherit container
  method disposeInternal:unit meth
  (* Removes the tab from the tab bar.  Overrides the superclass implementation
   * by deselecting the tab being removed.  Since {@link #removeChildAt} uses
   * {@link #removeChild} internally, we only need to override this method.
   * @param {js_string t|goog.ui.Control} tab Tab to remove.
   * @param {boolean=} opt_unrender Whether to call {@code exitDocument} on the
   *     removed tab, and detach its DOM from the document (defaults to false).
   * @return {goog.ui.Control} The removed tab, if any.*)
  method removeChild : js_string t array -> element meth
  (* @return {goog.ui.TabBar.Location} Tab bar location relative to tab contents.*)
  method getLocation : unit -> js_string t meth
  (* Sets the location of the tab bar relative to tab contents.
   * @param {goog.ui.TabBar.Location} location Tab bar location relative to tab
   *     contents.
   * @throws {Error} If the tab bar has already been rendered.*)
  method setLocation : js_string t -> unit meth
  (* @return {boolean} Whether keyboard navigation should change the selected tab,
   *     or just move the highlight.*)
  method isAutoSelectTabs: unit->bool meth
  (* Enables or disables auto-selecting tabs using the keyboard.  If auto-select
   * is enabled, keyboard navigation switches tabs immediately, otherwise it just
   * moves the highlight.
   * @param {boolean} enable Whether keyboard navigation should change the
   *     selected tab, or just move the highlight.*)
  method setAutoSelectTabs : bool -> unit meth
  (* Highlights the tab at the given index in response to a keyboard event.
   * Overrides the superclass implementation by also selecting the tab if
   * {@link #isAutoSelectTabs} returns true.
   * @param {number} index Index of tab to highlight.
   * @protected
   * @override*)
  method setHighlightedIndexFromKeyEvent : int->unit meth
  (* @return {goog.ui.Control?} The currently selected tab (null if none).*)
  method getSelectedTab : unit -> element meth
  (* Selects the given tab.
   * @param {goog.ui.Control?} tab Tab to select (null to select none).*)
  method setSelectedTab : element->unit meth
  (* @return {number} Index of the currently selected tab (-1 if none).*)
  method getSelectedTabIndex : unit -> int meth
  (* Selects the tab at the given index.
   * @param {number} index Index of the tab to select (-1 to select none).*)
  method setSelectedTabIndex :int->unit meth
  (*
   * If the specified tab is the currently selected tab, deselects it, and
   * selects the closest selectable tab in the tab bar (first looking before,
   * then after the deselected tab).  Does nothing if the argument is not the
   * currently selected tab.  Called internally when a tab is removed, hidden,
   * or disabled, to ensure that another tab is selected instead.
   * @param {goog.ui.Control?} tab Tab to deselect (if any).
   * @protected
   *)
  method deselectIfSelected:element->unit meth
  (* Returns true if the tab is selectable, false otherwise.  Only visible and
   * enabled tabs are selectable.
   * @param {goog.ui.Control} tab Tab to check.
   * @return {boolean} Whether the tab is selectable.
   * @protected*)
  method isSelectableTab : element -> bool meth
  (* Handles {@code SELECT} events dispatched by tabs as they become selected.
   * @param {goog.events.Event} e Select event to handle.
   * @protected*)
  method handleTabSelect : element -> unit meth
  (* Handles {@code UNSELECT} events dispatched by tabs as they become deselected.
   * @param {goog.events.Event} e Unselect event to handle.
   * @protected*)
  method handleTabUnselect: element -> unit meth
  (* Handles {@code DISABLE} events displayed by tabs.
   * @param {goog.events.Event} e Disable event to handle.
   * @protected*)
  method handleTabDisable:element->unit meth
  (* Handles {@code HIDE} events displayed by tabs.
   * @param {goog.events.Event} e Hide event to handle.
   * @protected*)
  method handleTabHide : element-> unit meth
  (* Handles focus events dispatched by the tab bar's key event target.  If no tab
   * is currently highlighted, highlights the selected tab or the first tab if no
   * tab is selected either.
   * @param {goog.events.Event} e Focus event to handle.
   * @protected
   * @override*)
  method handleFocus : element -> unit meth
  (* Returns the {@link goog.ui.Container.Orientation} that is implied by the
   * given {@link goog.ui.TabBar.Location}.
   * @param {goog.ui.TabBar.Location} location Tab bar location.
   * @return {goog.ui.Container.Orientation} Corresponding orientation.*)
  method getOrientationFromLocation : js_string t -> bool meth
  (*Register a decorator factory function for goog.ui.TabBars.*)
  method setDecoratorByClassName : element -> tabbar meth
end

let tabbar : tabbar t constr =
  Js.Unsafe.variable "goog.ui.TabBar"
