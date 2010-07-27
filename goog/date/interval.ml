(**
   OClosure Project - 2010
   Class goog.date.Interval

   @author Cardoso Gabriel
   @version 0.2
*)

class type interval = object
  method add : interval Js.t -> unit Js.meth

  method clone : interval Js.t Js.meth

  method equals : interval Js.t -> bool Js.t Js.meth

  method getInverse : interval Js.t Js.meth

  method toIsoString : bool Js.t Js.opt -> Js.js_string Js.t Js.opt Js.meth
end

let interval : ((int, Js.js_string Js.t) Tools.Union.t Js.opt -> int Js.opt -> int Js.opt -> int Js.opt -> int Js.opt -> int Js.opt -> interval Js.t) Js.constr = 
  Tools.variable "[oclosure]goog.date.Interval[/oclosure]"
