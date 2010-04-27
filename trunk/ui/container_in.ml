open Component
open Control

class external container inherit component:
  <
  addChild: control -> bool -> unit
  > = "goog.ui.Container"
