
(** 
    * OClosure Project - 2010
    * Class goog.cssom.CssRuleType, goog.cssom
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open Dom  (* goog.dom *)
open Array  (* goog.array *)

class external cssRuleType :  <
getAllCssText : cSSStyleSheet(* opt? *) -> string;
getAllCssStyleRules : cSSStyleSheet(* opt? *) -> (* Array[cSSStyleRule] *);
getCssRulesFromStyleSheet : cSSStyleSheet -> cSSRuleList;
getAllCssStyleSheets : cSSStyleSheet(* opt? *) -> boolean(* opt? *) -> (* Array[cSSStyleSheet] *);
getCssTextFromCssRule : cSSRule -> string;
getCssRuleIndexInParentStyleSheet : cSSRule -> cSSStyleSheet(* opt? *) -> number;
getParentStyleSheet : cSSRule -> cSSStyleSheet;
replaceCssRule : cSSRule -> string -> cSSStyleSheet(* opt? *) -> number(* opt? *) -> unit;
addCssRule : cSSStyleSheet -> string -> number(* opt? *) -> unit;
removeCssRule : cSSStyleSheet -> number -> unit;
addCssText : string -> domHelper(* opt? *) -> element;
getFileNameFromStyleSheet : styleSheet(* opt? *) -> string(* opt? *);
> = "goog.cssom.CssRuleType"
