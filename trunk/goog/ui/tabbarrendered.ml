(**
 * OClosure Project - 2010
 * Default renderer for {@link goog.ui.TabBar}s, based on the [TabPane]
 * code.  The tab bar's DOM structure is determined by its orientation and
 * location relative to tab contents.  For example, a horizontal tab bar
 * located above tab contents looks like this:
 *     ...(tabs here)...
 * @constructor
 * @extends {goog.ui.ContainerRenderer}
 *
  @extends {goog.ui.Component} * 
 * @author Bourdin Piere
 * @version 0.1
 *)

open Js
class type tabbarrendered = object
end

let tabbarrendered : tabbarrendered t constr =
  Js.Unsafe.variable "goog.ui.TabBarRendered"
