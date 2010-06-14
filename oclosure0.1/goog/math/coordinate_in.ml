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

class external coordinate : float -> float ->
< (** Returns a new copy of the coordinate.*)
  clone : unit -> coordinate;
  
  (** Returns a nice string representing the coordinate.*)
  toString : unit -> string;
  
  (** Compares coordinates for equality.*)
  equals : coordinate -> coordinate -> bool;
  
  (** Returns the distance between two coordinates.*)
  distance : coordinate -> coordinate -> float;
  
  (** Returns the squared distance between two coordinates.*)
  squaredDistance : coordinate -> coordinate -> float;
  
  (** Returns the difference between two coordinates as a new goog.math.Coordinate.*)
  difference : coordinate -> coordinate -> coordinate;
  
  (** Returns the sum of two coordinates as a new goog.math.Coordinate.*)
  sum : coordinate -> coordinate -> coordinate;

  > = "goog.math.Coordinate"
