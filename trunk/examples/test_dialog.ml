let dialog = jsnew Ui.Dialog.dialog()

(*let button = Dom_html.createButton(Dom_html.document)
let _ = button##onclick(fun () -> 
   let _ = Dom_html.window##alert(Js.string "yo") in
Js.bool true)*)

let _ =
  dialog##setVisible(true);
  dialog##setContent(Js.string "<br />OClosure : <br />A simple dialog box");
