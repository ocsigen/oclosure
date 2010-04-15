(* 
 * Module goog.ui.Zippy
 * Zippy widget
 * 
 * Oran Charles - 2010
 *)

let _ =
  let z = new Zippy.zippy "header" "content" in
    z#expand()
