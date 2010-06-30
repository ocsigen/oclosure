let defaultTimeout = ref 10000
let bubble = ref Js.null
let clickButton anch textField =
  Js.Opt.iter !bubble (fun o -> o##dispose(); bubble := Js.null);
  let textString, anchor = 
    if (Js.to_string textField##value = "") then 
      (Js.string "Input here!", textField)
    else
      (textField##value, anch)
  in
  let b = jsnew Goog.Ui.bubble(Goog.Tools.Union.i1 textString) in
  bubble := Js.some b;
  b##setAutoHide(Js._false);
  b##setPosition(jsnew Goog.Positioning.anchoredPosition(anchor, Js.null));
  b##setTimeout(!defaultTimeout);
  b##render(Js.null);
  b##attach(anchor);
  b##setVisible(Js._true)

let decorated = Js._false
let bubbleC = ref Js.null
let doCustom xcoord ycoord corner autoHide timeout decorated =
  Js.Opt.iter !bubbleC (fun o -> o##dispose(); bubbleC := Js.null);
  let internalElement = 
    if (decorated##checked) then begin
      let internalElement = Dom_html.createDiv Dom_html.document in
      internalElement##innerHTML <- Js.string "<table><tbody>
	  <tr><td>One!</td><td>Two!</td></tr>
	<tr><td>Three!</td><td>Four!</td></tr>
	</tbody></table>";
      Goog.Tools.Union.i2 internalElement
    end
    else
      Goog.Tools.Union.i1
	(Js.string "Random Bubble. La-la-la-la! La-la-la-la-la!!!")
  in
  let c = jsnew Goog.Ui.bubble(internalElement) in
  c##setAutoHide(Js.bool (autoHide##value == Js.string "false"));
  c##setPinnedCorner(corner##value);
  c##setPosition(jsnew Goog.Positioning.absolutePosition(
		       xcoord##value, ycoord##value));
  c##setTimeout(timeout##value);
  
  c##render(Js.null);
  c##setVisible(Js._true);
  bubbleC := Js.some c
   
    
let toggleVisibility () =
  Js.Opt.iter !bubbleC
    (fun o -> o##setVisible(Js.bool (not (Js.to_bool (o##isVisible())))))


let _ = Random.self_init

let doRandomClick() =
  let rec loop number = 
    if number = 5 then loop ((Random.int 9) + 1)
    else number
  in
  let number = loop ((Random.int 9) + 1) in
  let button =
    Js.coerce_opt
    (Dom_html.document##getElementById(Js.string ("button"^string_of_int number)))
    Dom_html.CoerceTo.input (fun _ -> assert false) in
  let defaultTimeoutSav = !defaultTimeout in
  defaultTimeout := 2000;
  button##click ();
  defaultTimeout := defaultTimeoutSav

let timer = ref Js.null
let doRandom() =
  Js.Opt.iter !timer (fun t ->
    Dom_html.window##clearInterval(t);
    timer := Js.null);
  doRandomClick();
  timer := Js.some (Dom_html.window##setInterval(Js.wrap_callback doRandomClick, 2000.))
  
let set_onClick () =
for i = 1 to 9 do
if i!=5 then
  let button = 
    Js.coerce_opt 
      (Dom_html.document##getElementById(Js.string ("button"^string_of_int i)))
      Dom_html.CoerceTo.input (fun _ -> assert false) in
  let input = 
    Js.coerce_opt
      (Dom_html.document##getElementById(Js.string ("textField"^string_of_int i)))
      Dom_html.CoerceTo.input (fun _ -> assert false) in
  button##onclick <- Dom_html.handler 
      (fun _ -> clickButton button input; Js._true)
done
in set_onClick()  

(*
let button = 
  Js.coerce_opt 
    (Dom_html.document##getElementById(Js.string ("button5.0.1"))
    Dom_html.CoerceTo.input (fun _ -> assert false) in
button##onclick <- Dom_html.handler 
    (fun _ -> ; Js._true)
*)
