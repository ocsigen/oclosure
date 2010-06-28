open Js
open Goog.Spell.SpellCheck

let dict = ["test"; "words"; "a"; "few"]
let propose = Array.map Js.string [|"foo"; "bar"; "test"|]

let spell_checking words spell_checker callback = 
  let results = Js.array [||] in
  for i = 0 to words##length - 1 do
    Optdef.iter (Js.array_get words i) (fun w ->
      ignore
	(results##push
	   (if List.mem (Js.to_string w) dict then
	     wordEntry w VALID (Js.array [||])
	   else
             wordEntry w INVALID (Js.array propose))))
  done;
  invokeCallback callback spell_checker results

let handler = jsnew spellCheck(Js.wrap_callback spell_checking)

let s = jsnew Goog.Ui.plainTextSpellChecker (handler, Js.null)

let d = Dom_html.document
let button txt h =
  let b = Dom_html.createButton d in
  b##onclick <- Dom_html.handler (fun _ -> h (); Js._false);
  Dom.appendChild b (d##createTextNode (Js.string txt));
  b

let _ =
  s##markCorrected <- Js._true;
  Opt.iter (d##getElementById (Js.string "t0")) 
    (fun e -> s##decorate(e));
  Dom.appendChild (d##body) (button "Check" (fun () -> s##check()));
  Dom.appendChild (d##body) (button "Resume" (fun () -> s##resume()))
