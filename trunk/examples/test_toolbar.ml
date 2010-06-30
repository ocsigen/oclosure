open Goog

module D = Dom_html
let d = D.document

let t = jsnew Ui.toolbar()
let toolbar = Js.Opt.get (d##getElementById (Js.string "toolbar"))
    (fun () -> assert false)

let button = jsnew Ui.toolbarButton(Js.string "Clik me!")
let button2 = jsnew Ui.toolbarButton(Js.string "Disabled")

let _ = 
  ignore (Events.listen 
    (Tools.Union.i1 button) 
    (Js.string "action") 
    (fun () -> D.window##alert(Js.string "Bravo!")) Js._false);
  t##addChild(button,Js.bool true);
  (* t##addChild(button2, Js._true);
  let c = Js.Opt.get (t##getChildAt(Js.number_of_float 1.)) 
      (fun () -> assert false) 
  in c##setEnabled(Js.bool false); *)
  t##render(Js.some toolbar)
