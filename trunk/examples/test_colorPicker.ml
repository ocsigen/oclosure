let get_el s = Js.Opt.get (Dom_html.document##getElementById(Js.string s))
    (fun _ -> assert false)

let sel = get_el "sel"

let cp = jsnew Goog.Ui.colorPicker (Js.null, Js.null)
let _ = 
  cp##setSize(7);
  cp##setColors(Goog.Ui.ColorPicker._SIMPLE_GRID_COLORS);
  cp##addEventListener(Goog.Ui.ColorPicker.EventType._CHANGE, 
		       (fun () -> sel##innerHTML <- cp##getSelectedColor();
			 Js._true),
		       Js.null);
  cp##render(Js.some (get_el "colorPicker"))
