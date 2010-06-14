open Js
open EventTarget

type empty

(** On force tous les arguments (opt ou non) *)
let listen t s f =
  (Js.Unsafe.variable "goog.events.listen" : #eventTarget t -> js_string t -> (unit -> unit) -> empty Js.opt -> empty Js.opt -> unit) t s f Js.null Js.null  

(*
(** On force tous les arguments (opt ou non) *)
let listen =
  (Js.Unsafe.variable "goog.events.listen" : eventTarget t -> js_string t -> (unit -> unit) -> bool t opt -> empty opt -> unit)  

(** Permet le polymorphisme grâce à la coercion *)
let listen = (listen : eventTarget t -> _ :> #eventTarget t -> _)
*)
