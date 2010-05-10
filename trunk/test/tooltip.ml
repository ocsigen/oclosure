(* OClosure - 2010 *
 * Esther Baruk    *
 * goog.ui.Tooltip *)
type domHelper = JSOO.obj

type number = JSOO.obj

type element = JSOO.obj

type state = JSOO.obj

(*goog.ui.Tooltip.State*)
type coordinate = JSOO.obj

(*goog.math.Coordinate*)
type browserEvent = JSOO.obj

(*goog.events.BrowserEvent*)
type corner = JSOO.obj

(*goog.positioning.Corner*)
let __tooltip_builder o a0 a1 =
  JSOO.call_function
    [| Obj.magic o; JSOO.current_vm (); JSOO.string a0; JSOO.string a1 |]
    (JSOO.eval "__caml_make_tooltip")
  
class __tooltip o =
  object (self)
    val mutable __jso = o
      
    method getDomHelper : unit -> domHelper =
      fun a1 ->
        let a1 = Obj.magic a1
        in
          (fun o ->
             let o = Obj.magic o
             in
               try
                 match JSOO.extract (JSOO.get "__caml" o) with
                 | JSOO.Nil ->
                     let wrapper : 'a__ -> 'b__ =
                       Obj.magic (JSOO.get "__caml_wrapper" o) in
                     let wrapped = wrapper o
                     in (JSOO.set "__caml" (Obj.magic wrapped) o; wrapped)
                 | JSOO.Obj o -> Obj.magic o
                 | _ -> failwith "typeconv"
               with | Failure _ -> failwith "unhandled type conversion")
            (JSOO.call_method "getDomHelper_" [| (a1) |] __jso)
      
    initializer JSOO.set "__jso" __jso (Obj.magic self)
      
  end
and tooltip a0 a1 = let nil = JSOO.inject JSOO.Nil
  in
    object (self)
      inherit __tooltip nil
        
      initializer
        (__jso <- __tooltip_builder (Obj.repr self) a0 a1;
	 print_endline a0;
	 print_endline a1;
         JSOO.set "__jso" __jso (Obj.magic self))
        
    end
  
let _ =
  (JSOO.set "__caml_wrapper" (Obj.magic (fun o -> new __tooltip o))
     (JSOO.get "prototype" (JSOO.eval "goog.ui.Tooltip"));
   JSOO.set "__caml_wrapper" (Obj.magic (fun o -> new __tooltip o))
     (JSOO.get "prototype" (JSOO.eval "__caml_tooltip")))
  

