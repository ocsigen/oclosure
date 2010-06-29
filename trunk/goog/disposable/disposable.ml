(* 
 * Module goog.Disposable
 * Class that provides the basic implementation for disposable objects. 
 * If your class holds one or more references to COM objects, DOM nodes, or 
 * other disposable objects, it should extend this class or implement the 
 * disposable interface.
 * Cardoso Gabriel - 2010
 *)

open Js

class type disposable = object
  method dispose: unit meth
  method getDisposed: bool t meth
  method isDisposed: bool t meth
end
