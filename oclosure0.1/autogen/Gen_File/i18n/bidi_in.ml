
(** 
    * OClosure Project - 2010
    * Class goog.i18n.bidi
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)

class external format :  <
toDir : dir(* | number| boolean *) -> dir;
hasAnyRtl : string -> boolean(* opt? *) -> boolean;
hasRtlChar : string -> boolean;
hasAnyLtr : string -> boolean(* opt? *) -> boolean;
isRtlChar : string -> boolean;
isLtrChar : string -> boolean;
isNeutralChar : string -> boolean;
startsWithRtl : string -> boolean(* opt? *) -> boolean;
isRtlText : string -> boolean(* opt? *) -> boolean;
startsWithLtr : string -> boolean(* opt? *) -> boolean;
isLtrText : string -> boolean(* opt? *) -> boolean;
isNeutralText : string -> boolean(* opt? *) -> boolean;
endsWithLtr : string -> boolean(* opt? *) -> boolean;
isLtrExitText : string -> boolean(* opt? *) -> boolean;
endsWithRtl : string -> boolean(* opt? *) -> boolean;
isRtlExitText : string -> boolean(* opt? *) -> boolean;
isRtlLanguage : string -> boolean;
guardBracketInHtml : string -> boolean(* opt? *) -> string;
guardBracketInText : string -> boolean(* opt? *) -> string;
enforceRtlInHtml : string -> string;
enforceRtlInText : string -> string;
enforceLtrInHtml : string -> string;
enforceLtrInText : string -> string;
mirrorCSS : string -> string;
normalizeHebrewQuote : string -> string;
estimateDirection : string -> boolean(* opt? *) -> dir;
detectRtlDirectionality : string -> boolean(* opt? *) -> boolean;
setElementDirAndAlign : element -> dir(* | number| boolean *) -> unit;
> = "goog.i18n.bidi.Format"
