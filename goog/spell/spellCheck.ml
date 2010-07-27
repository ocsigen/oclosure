(**
   OClosure Project - 2010
   Class goog.spell.Spellcheck
   
   @author Cardoso Gabriel
   @version 0.2
*)

open Js

type wordStatus = UNKNOWN | VALID | INVALID | IGNORED | CORRECTED 

type wordEntry = Js.Unsafe.any js_array t

let wordEntry
      (word : js_string t) (status : wordStatus) (l : js_string t js_array t) =
  Js.array
    [|Js.Unsafe.inject word;Js.Unsafe.inject status;Js.Unsafe.inject l|]

type 'a callback 

let invokeCallback (cb : 'a callback) (o : 'a) (s : wordEntry js_array t) =
  Js.Unsafe.call cb o [|Js.Unsafe.inject s|]

class type ['a] spellCheck = object
  inherit Events.eventTarget

  method checkBlock : js_string t -> unit meth

  method checkWord : js_string t -> int meth

  method getLanguage : js_string t meth

  method getSuggestions : js_string t -> js_string t js_array t meth

  method processPending : unit meth

  method setLanguage : js_string opt -> unit meth

  method setLookupFunction : 
      (js_string t js_array t -> 'a -> 'a callback -> unit) Js.callback -> unit meth

  method setWordStatus :
      js_string t -> int -> js_string t js_array t opt -> unit meth
end

let spellCheck = Tools.variable "[oclosure]goog.spell.SpellCheck[/oclosure]"

let spellCheck : ((js_string t js_array t -> 'a -> 'a callback -> unit) Js.callback -> 'a spellCheck t) constr = spellCheck
