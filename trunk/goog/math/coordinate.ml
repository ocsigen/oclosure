(** OClosure Project - 2010
 * Class goog.math.Coordinate
 * 
 * Class for representing coordinates and positions.
 * @param {number=} opt_x Left, defaults to 0.
 * @param {number=} opt_y Top, defaults to 0.
 * 
 * @author : Emmanuel CRESPIN
 * @version 0.1
 *)

open Js
class type coordinate = object
  method clone : unit -> coordinate meth
  
  (** Returns a nice js_string t representing the coordinate.*)
  method toString : unit -> js_string t meth
  
  (** Compares coordinates for equality.*)
  method equals : coordinate -> coordinate -> bool meth
  
  (** Returns the distance between two coordinates.*)
  method distance : coordinate -> coordinate -> float meth
  
  (** Returns the squared distance between two coordinates.*)
  method squaredDistance : coordinate -> coordinate -> float meth
  
  (** Returns the difference between two coordinates as a new goog.math.Coordinate.*)
  method difference : coordinate -> coordinate -> coordinate meth
  
  (** Returns the sum of two coordinates as a new goog.math.Coordinate.*)
  method sum : coordinate -> coordinate -> coordinate meth

end

let coordinate : (float -> float -> coordinate t) constr =
  Js.Unsafe.variable "goog.math.Coordinate"
