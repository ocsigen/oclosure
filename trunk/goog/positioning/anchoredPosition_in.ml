(* Module goog.positioning.AnchoredPosition
 * Esther Baruk 2010 *)
(* *)

open AbstractPosition

class external anchoredPosition inherit abstractPosition : 
  element -> corner ->
	< reposition : element -> corner-> 
	(*optional argument : goog.math.Box ->*)unit
	> = "goog.positioning.AnchoredPosition"
