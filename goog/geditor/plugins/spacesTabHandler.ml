(**
   class goog.editor.plugins.SpacesTabHandler

   @author Gabriel Cardoso
*)

open Js
open AbstractTabHandler

class type spacesTabHandler = object
  inherit abstractTabHandler
  method getTrogClassId : js_string t meth
  method handleTabKey : #Events.event t -> bool t meth
end

let tmp = Tools.variable 
   "[oclosure]goog.editor.plugins.SpacesTabHandler[/oclosure]"
let spacesTabHandler : spacesTabHandler t constr = tmp
