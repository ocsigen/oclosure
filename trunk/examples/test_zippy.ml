open Goog
module D = Dom_html
let d = D.document

let header = Js.Opt.get (d##getElementById (Js.string "header"))
    (fun () -> assert false)

let f () = Js.Opt.get (d##getElementById (Js.string "content"))
    (fun () -> assert false)

let z = jsnew Ui.Zippy.zippy (
  Js.some (Tools.elt header), 
  Js.some (Tools.id (Js.string "content")),
  Js.null, Js.null)

let _ = z##setExpanded(Js._true)
  
