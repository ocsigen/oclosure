(**
   OClosure Project - 2010
   Class goog.ui.ContainerScroller
   
   @author : Cardoso Gabriel
   @version 0.2
*)

open Js

class type containerScroller = object
  inherit Disposable.disposable

  method disposeInternal : unit meth
end

let containerScroller : (Container.container t -> containerScroller t) constr = 
  Js.Unsafe.variable "goog.ui.ContainerScroller"
