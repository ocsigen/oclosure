(**
   class goog.editor.plugins.AbstractBubblePlugin

   @author Gabriel Cardoso
*)

open Js
open PluginField
open Gdom
open Events

class type abstractBubblePlugin = object
  inherit plugin
  method closeBubble : unit meth
  method createBubble : #Dom_html.element t -> unit meth
  method disable : field t -> unit meth
  method getBubbleDom : domHelper t meth
  method getBubbleTargetFromSelection : 
      #Dom_html.element t -> Dom_html.element t opt meth
  method getTargetElement : Dom_html.element t meth
  method getTrogClassId : js_string t meth
  method handleKeyUp : browserEvent t -> bool t meth
  method handleSelectionChange : event t opt -> bool t meth
  method isVisible : bool t meth
  method reposition : unit meth
  method setBubbleParent : #Dom_html.element t -> unit meth
end
