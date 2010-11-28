(**
   class goog.editor.plugins.LinkBubble
   class goog.editor.plugins.LinkBubble.Action

   @author Gabriel Cardoso
*)

open Js
open AbstractBubblePlugin

module LinkBubble = struct
  class type action = object end
  let tmp = Tools.variable "[oclosure]goog.editor.plugins.LinkBubble.Action[/oclosure]"
  let action : js_string t -> js_string t -> js_string t 
    -> (js_string t -> bool t) callback -> (js_string t -> unit) callback 
      -> action t constr = tmp
end

class type linkBubble = object
  inherit abstractBubblePlugin
  method createBubbleContents : #Dom_html.element t -> unit meth
  method getBubbleTargetFromSelection : #Dom_html.element t 
    -> Dom_html.element t opt meth
  method getBubbleTitle : js_string t meth
  method getBubbleType : js_string t meth
  method getTrogClassId : js_string t meth
  method isInvalidUrl : bool t meth
  method setTestLinkUrlFn : (js_string t -> js_string t) callback -> unit meth
  method stopReferrerLeaks : unit meth
end

let tmp = Tools.variable "[oclosure]goog.editor.plugins.LinkBubble[/oclosure]"
let linkBubble : (LinkBubble.action t js_array t -> linkBubble t) constr = tmp
