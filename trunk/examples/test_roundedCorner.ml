open Js

let d = Dom_html.document

let height = 50
let width = 50
let color = Js.string "#000"
let bgColor = Js.string "#FFE"
let lineW = 1

let slider = jsnew Goog.Ui.Slider.slider()

let rec pow n k = if k=0 then 1 else n*(pow n (k-1)) 

let rec create_rounded_corner i =
  let roundedDiv = Js.Opt.get (d##getElementById (Js.string ("rc"^(string_of_int i))))
      (fun () -> Dom_html.window##alert(Js.string (string_of_int i)); assert false) in
  let _ = roundedDiv##innerHTML <- Js.string "" in
  let roundedCorner = Js.Optdef.get 
      (Goog.Ui.ImagelessRoundedCorner.create
	 roundedDiv width height 1 (slider##getValue()) (pow 2 i) color 
	 (Js.some bgColor) Js.null) 
      (fun () -> assert false) in
  roundedCorner##draw()

let createRoundedCorners () =
  let _ = slider##setMaximum(max height width) in
  let rec aux i = 
    create_rounded_corner i;
    if i>0 then aux (i-1)
  in aux 3
 (* for i=0 to 3 do create_rounded_corner i done *)
      
let _ =
  let sliderDiv = Js.Opt.get (d##getElementById (Js.string "slider"))
      (fun () -> assert false) in
  slider##decorate(sliderDiv);
  slider##setMinimum(1);
  Goog.Events.Events.listen 
    slider 
    (Js.string "change")
    createRoundedCorners
    Js._false;
  createRoundedCorners()