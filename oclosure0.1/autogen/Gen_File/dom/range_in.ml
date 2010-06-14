
(** 
    * OClosure Project - 2010
    * Class goog.dom.Range
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open UserAgent  (* goog.userAgent *)
open TextRange  (* goog.dom.TextRange *)
open NodeType  (* goog.dom.NodeType *)
open MultiRange  (* goog.dom.MultiRange *)
open ControlRange  (* goog.dom.ControlRange *)
open AbstractRange  (* goog.dom.AbstractRange *)
open Dom  (* goog.dom *)

class external createFromWindow : window(* opt? *) ->  <
createFromBrowserSelection : object(* opt? *) -> abstractRange(* opt? *);
createFromBrowserRange : range(* | textRange *) -> boolean(* opt? *) -> abstractRange;
createFromNodeContents : node -> boolean(* opt? *) -> abstractRange;
createCaret : node -> number -> abstractRange;
createFromNodes : node -> number -> node -> number -> abstractRange;
clearSelection : window(* opt? *) -> unit;
hasSelection : window(* opt? *) -> boolean;
isReversed : node -> number -> node -> number -> boolean;
> = "goog.dom.Range.createFromWindow"
