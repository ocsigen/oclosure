open Js

type controlContent

module ControlContent : sig
  val string : js_string t -> controlContent
  val node : Dom.node t -> controlContent
  val node_array : Dom.node t js_array t -> controlContent
  val string_nodeList : js_string t Dom.nodeList t -> controlContent
end
