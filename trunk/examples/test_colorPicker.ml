let get_el s = Js.Opt.get (Dom_html.document##getElementById(Js.string s))
    (fun _ -> assert false)

let cp = jsnew Goog.Ui.colorPicker (Js.null, Js.null) in 
cp##setSize(1);
cp##setColors(Js.array (Array.map Js.string [|"#FFFFFF"; "#CCCCCC"; "#C0C0C0"; "#999"; "#666"; "#333"; "#000"|]));
cp##render(Js.some (get_el "colorPicker"))
