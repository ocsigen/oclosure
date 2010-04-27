open EventTarget

class external component inherit eventTarget: 
  <
  addChild : component -> bool -> unit;
  decorate : JSOO.obj -> unit;
  getChild : string -> component;
  render : JSOO.obj -> unit;
  > = "goog.ui.Component"
