let document = Dom_html.document

let show_prompt prompt =
  prompt##setVisible(Js._true)
    
let handler o = Dom_html.window##alert(Js.string o)
let handler s = 
  let res = Js.Opt.get s (fun () -> Js.string "faux") in
  if res = (Js.string "faux") then
    Dom_html.window##alert(Js.string "Afraid to answer?")
  else 
    Dom_html.window##alert(res);
  Js._true

let prompt = 
  jsnew Ui.Prompt.prompt(Js.string "Goog.ui.Prompt", Js.string "Question", 
			 handler)

let button = Dom_html.createA document 
let _ = 
  button##href <- Js.string "#";
  button##onclick <- Js.some (fun _ -> show_prompt prompt; Js._true);
  Dom.appendChild(document##body) (Dom_html.createBr document);
  Dom.appendChild(document##body) button;
  Dom.appendChild button (document##createTextNode(Js.string "Prompt"))

let _ =
  prompt##setDefaultValue(Js.string "Default text message");
  prompt##setRows(3);
  prompt##setContent(Js.string "Question");  (** Fonction de la classe mère **)

