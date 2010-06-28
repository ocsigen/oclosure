(**
 * OClosure Project - 2010
 * Tab bar UI component.  A tab bar contains tabs, rendered above, below,
 * before, or after tab contents.  Tabs in tab bars dispatch the following
 * 
 * Clients may listen for all of the above events on the tab bar itself, and
 * refer to the event target to identify the tab that dispatched the event.
 * When an unselected tab is clicked for the first time, it dispatches both a
  method * [SELECT] event and an [ACTION] event meth
 * already selected tab only result in [ACTION] events.
 *
  method * @param opt_location Tab bar location meth
 *    .
 * @param opt_renderer Renderer used to render or
  method *     decorate the container meth
 * @param opt_domHelper DOM helper, used for document
 *     interaction.
 * @constructor
 * @extends
 * @author Bourdin Pierre
 * @version 0.1
 *)

open Js
open Container

class type tabbar = object
  inherit container
  method disposeInternal : unit meth
  (* Removes the tab from the tab bar.  Overrides the superclass implementation
   * by deselecting the tab being removed.  Since uses
   * internally, we only need to override this method.
   * @param tab Tab to remove.
   * @param opt_unrender Whether to call [exitDocument] on the
   *     removed tab, and detach its DOM from the document (defaults to false).
   * @return The removed tab, if any.*)
  method removeChild : js_string t array -> Dom_html.element t meth
  (* @return Tab bar location relative to tab contents.*)
  method getLocation : js_string t meth
  (* Sets the location of the tab bar relative to tab contents.
   * @param location Tab bar location relative to tab
   *     contents.
   * @throws If the tab bar has already been rendered.*)
  method setLocation : js_string t -> unit meth
  (* @return Whether keyboard navigation should change the selected tab,
   *     or just move the highlight.*)
  method isAutoSelectTabs : bool t meth
  (* Enables or disables auto-selecting tabs using the keyboard.  If auto-select
   * is enabled, keyboard navigation switches tabs immediately, otherwise it just
   * moves the highlight.
   * @param enable Whether keyboard navigation should change the
   *     selected tab, or just move the highlight.*)
  method setAutoSelectTabs : bool t -> unit meth
  (* Highlights the tab at the given index in response to a keyboard event.
   * Overrides the superclass implementation by also selecting the tab if
   * returns true.
   * @param index Index of tab to highlight.
   * @protected
   * @override*)
  method setHighlightedIndexFromKeyEvent : int->unit meth
  (* @return The currently selected tab (null if none).*)
  method getSelectedTab : Dom_html.element t meth
  (* Selects the given tab.
   * @param tab Tab to select (null to select none).*)
  method setSelectedTab : Dom_html.element t -> unit meth
  (* @return Index of the currently selected tab (-1 if none).*)
  method getSelectedTabIndex : int meth
  (* Selects the tab at the given index.
   * @param index Index of the tab to select (-1 to select none).*)
  method setSelectedTabIndex : int -> unit meth
  (*
   * If the specified tab is the currently selected tab, deselects it, and
   * selects the closest selectable tab in the tab bar (first looking before,
   * then after the deselected tab).  Does nothing if the argument is not the
   * currently selected tab.  Called internally when a tab is removed, hidden,
   * or disabled, to ensure that another tab is selected instead.
   * @param tab Tab to deselect (if any).
   * @protected
   *)
  method deselectIfSelected : Dom_html.element t -> unit meth
  (* Returns true if the tab is selectable, false otherwise.  Only visible and
   * enabled tabs are selectable.
   * @param tab Tab to check.
   * @return Whether the tab is selectable.
   * @protected*)
  method isSelectableTab : Dom_html.element t -> bool t meth
  (* Handles [SELECT] events dispatched by tabs as they become selected.
   * @param e Select event to handle.
   * @protected*)
  method handleTabSelect : Dom_html.element t -> unit meth
  (* Handles [UNSELECT] events dispatched by tabs as they become deselected.
   * @param e Unselect event to handle.
   * @protected*)
  method handleTabUnselect : Dom_html.element t -> unit meth
  (* Handles [DISABLE] events displayed by tabs.
   * @param e Disable event to handle.
   * @protected*)
  method handleTabDisable : Dom_html.element t -> unit meth
  (* Handles [HIDE] events displayed by tabs.
   * @param e Hide event to handle.
   * @protected*)
  method handleTabHide : Dom_html.element t -> unit meth
  (* Handles focus events dispatched by the tab bar's key event target.  If no tab
   * is currently highlighted, highlights the selected tab or the first tab if no
   * tab is selected either.
   * @param e Focus event to handle.
   * @protected
   * @override*)
  method handleFocus : Dom_html.element t -> unit meth
  (* Returns the that is implied by the
   * given.
   * @param location Tab bar location.
   * @return Corresponding orientation.*)
  method getOrientationFromLocation : js_string t -> bool t meth
  (*Register a decorator factory function for goog.ui.TabBars.*)
  method setDecoratorByClassName : Dom_html.element t -> tabbar t meth
end

let tabbar : tabbar t constr =
  Js.Unsafe.variable "goog.ui.TabBar"
