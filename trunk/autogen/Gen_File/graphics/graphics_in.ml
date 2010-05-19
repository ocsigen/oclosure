
(** 
    * OClosure Project - 2010
    * Class goog.graphics
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open UserAgent  (* goog.userAgent *)
open VmlGraphics  (* goog.graphics.VmlGraphics *)
open SvgGraphics  (* goog.graphics.SvgGraphics *)
open CanvasGraphics  (* goog.graphics.CanvasGraphics *)

class external createGraphics : string(* | number *) -> string(* | number *) -> number(* opt? *) -> number(* opt? *) -> domHelper(* opt? *) ->  <
createSimpleGraphics : string(* | number *) -> string(* | number *) -> number(* opt? *) -> number(* opt? *) -> domHelper(* opt? *) -> abstractGraphics;
isBrowserSupported : boolean;
> = "goog.graphics.createGraphics"
