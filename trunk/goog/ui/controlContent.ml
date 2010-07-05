type controlContent = Js.Unsafe.any

module ControlContent = struct
  let string s = Js.Unsafe.inject s 
  let node n = Js.Unsafe.inject n
  let node_array na = Js.Unsafe.inject na
  let string_nodeList nl = Js.Unsafe.inject nl
end

