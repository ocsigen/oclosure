(**
   OClosure Project - 2010

   Class goog.ui.ProgressBar
   
   @author : Oran Charles
   @version 0.2
*)
open Component

open Js
class type progressBar = object
  inherit component
  method createDom : unit meth
  method enterDocument : unit meth
  method exitDocument : unit meth
  method decorateInternal : #Dom_html.element t -> unit meth
  method getValue : float t meth
  method setValue : float -> unit meth
  method getMinimum : float t meth
  method setMinimum : float -> unit meth
  method getMaximum : float t meth
  method setMaximum : float -> unit meth
  method setOrientation : js_string t -> unit meth
  method getOrientation : js_string t meth
  method disposableInternal : unit meth
  method getStep : int meth
  method setStep : int -> unit meth
end

let progressBar : progressBar t constr =
  Tools.variable "[oclosure]goog.ui.ProgressBar[/oclosure]"

module ProgressBar = struct
  module Orientation = struct
    let _VERTICAL = Js.string "vertical"
    let _HORIZONTAL = Js.string "horizontal"
  end
end
