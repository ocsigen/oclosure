open Goog
module D = Dom_html
let d = D.document

let header = Js.Opt.get (d##getElementById (Js.string "header"))
    (fun () -> assert false)

let f () = Js.Opt.get (d##getElementById (Js.string "content"))
    (fun () -> assert false)

let z = jsnew Ui.animatedZippy (
  Js.some (Tools.Union.i1 header), 
  Js.some (Tools.Union.i2 (Js.string "content")),
  Js.null)

let _ = z##setExpanded(Js._true)
