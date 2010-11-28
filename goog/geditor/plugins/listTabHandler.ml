(** 
   class goog.editor.plugins.ListTabHandler

   @author Gabriel Cardoso
*)

open Js
open AbstractTabHandler

class type listTabHandler = object
  inherit abstractTabHandler
  method getTrogClassId : js_string t meth
  method handleTabKey : #Events.event t -> bool t meth
end

let tmp = Tools.variable 
    "[oclosure]goog.editor.plugins.ListTabHandler[/oclosure]"
let listTabHandler : listTabHandler t constr = tmp
