
(** 
    * OClosure Project - 2010
    * Class goog.i18n.BidiFormatter
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open String  (* goog.string *)
open Bidi  (* goog.i18n.bidi *)

class external bidiFormatter : dir(* | number| boolean *) -> boolean(* opt? *) ->  <
getContextDir : dir;
getAlwaysSpan : boolean;
setContextDir : dir(* | number| boolean *) -> unit;
setAlwaysSpan : boolean -> unit;
estimateDirection : string -> boolean(* opt? *) -> dir;
dirAttrValue : string -> boolean(* opt? *) -> string;
knownDirAttrValue : dir -> string;
dirAttr : string -> boolean(* opt? *) -> string;
knownDirAttr : dir -> string;
spanWrap : string -> boolean(* opt? *) -> boolean(* opt? *) -> string;
spanWrapWithKnownDir : dir -> string -> boolean(* opt? *) -> boolean(* opt? *) -> string;
unicodeWrap : string -> boolean(* opt? *) -> boolean(* opt? *) -> string;
unicodeWrapWithKnownDir : dir -> string -> boolean(* opt? *) -> boolean(* opt? *) -> string;
markAfter : string -> boolean(* opt? *) -> string;
mark : string;
startEdge : string;
endEdge : string;
> = "goog.i18n.BidiFormatter"
