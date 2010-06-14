open ScrollFloater

let _ =
  let scrollfloater1 = new scrollFloater () in
  let scrollfloater2 = new scrollFloater () in
  let aff = Js.get_element_by_id "floater1" in
  let aff1 = Js.get_element_by_id "floater2container" in
    scrollfloater1 # decorate aff;
    scrollfloater2 # render aff1
