
module D = Dom_html
let d = D.document

let z = jsnew Ui.AnimatedZippy.animatedZippy (Js.string "header", Js.string "content", true)

let _ = z##setExpanded(false)

let t = jsnew Ui.Toolbar.toolbar()
let toolbar = Js.Opt.get (d##getElementById (Js.string "toolbar"))
    (fun () -> assert false)

let button = jsnew Ui.ToolbarButton.toolbarButton(Js.string "machin")

let _ = 
  Events.Events.listen button (Js.string "action") (fun () -> D.window##alert(Js.string "Bravo"));
  t##addChild(button,true);
  t##render(toolbar)

  
