(**
   OClosure Project - 2010
   Class goog.ui.CheckBoxMenuItem
   
   @author : Cardoso Gabriel
   @version 0.2
*)

open Js

class type checkBoxMenuItem = object
  inherit MenuItem.menuItem
end

(**
   Class representing a checkbox menu item.  This is just a convenience class
   that extends {@link goog.ui.MenuItem} by making it checkable.
   
   @param content Text caption or DOM structure to
   display as the content of the item (use to add icons or styling to
   menus).
   @constructor
*)
val checkBoxMenuItem : (ControlContent.controlContent -> checkBoxMenuItem t) constr
