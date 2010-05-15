(* Module goog.positioning.AnchoredPosition
 * Esther Baruk 2010 *)
(* Abstract Position object. Encapsulates position and overflow handling *)

open AbstractPosition



class external anchoredPosition inherit abstractPosition : 
  element -> corner ->
	< reposition : element -> corner-> 
	(*optional argument : goog.math.Box ->*)unit
	> = "goog.positioning.AnchoredPosition"
