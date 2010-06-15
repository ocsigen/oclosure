let dialog = jsnew Ui.Dialog.dialog(Js.null, Js.null)

let button = Dom_html.createButton Dom_html.document
let _ = 
  button##onclick <- Js.some (fun _ -> 
    dialog##setVisible(Js._true); Js.bool true)
let _ = Dom.appendChild(Dom_html.document##body) button;
  Dom.appendChild button (Dom_html.document##createTextNode(Js.string "Dialog"))

let _ =
  dialog##setVisible(Js._false);
  dialog##setContent(Js.string "<br />OClosure : <br />A simple dialog box");
