(**
   OClosure Project - 2010

   Class goog.ui.Container
   
   @author Cardoso Gabriel Oran Charles
   @version 0.2
*)
open Component
open Control
open Tools
open Js

module Container = struct
  type orientation =
    | HORIZONTAL
    | VERTICAL
	
  type orientation_pre = js_string t

  let orientation_pre_of_orientation = function
    | VERTICAL -> Js.string "vertical"
    | HORIZONTAL -> Js.string "horizontal"

  let orientation_of_orientation_pre s = match Js.to_string s with
    | "vertical" -> VERTICAL
    | "horizontal" -> HORIZONTAL
    | _ -> invalid_arg "Goog.Ui.Container.orientation_of_orientation_pre"
end
type orientation = Container.orientation


class type container = object
  inherit component
  method getKeyEventTarget : Dom_html.element t meth

  method setKeyEventTarget : #Dom_html.element t optdef -> unit meth 

  method getKeyHandler : Events.keyHandler t meth 

 (*method getRenderer : container containerRenderer t meth *)
 
  (*method setRenderer : container containerRenderer t -> unit meth*)

  method createDom : unit meth 

  method getContentElement : Dom_html.element t meth 

  method canDecorate : #Dom_html.element t -> bool t meth 

  method decorateInternal : #Dom_html.element t -> unit meth 

  method enterDocument : unit meth 

  method exitDocument : unit meth 

  method handleEnterItem : Events.event t -> bool t meth 

  method handleHighlightItem : #Events.event t -> unit meth 

  method handleUnHighlightItem : #Events.event t -> unit meth 

  method handleOpenItem : #Events.event t -> unit meth 

  method handleCloseItem : #Events.event -> unit meth 

  method handleMouseDown : #Events.browserEvent t -> unit meth 

  method handleDocumentMouseUp : #Events.browserEvent t -> unit meth 

  method handleChildMouseEvents : #Events.browserEvent t -> unit meth 

  method getOwnerControl : #Dom.node t -> #Control.control t opt -> unit meth 

  method handleFocus : #Events.event t -> unit meth 

  method handleBlur : #Events.browserEvent t -> unit meth 

  method handleKeyEvent : Events.keyEvent t -> bool t meth 

  method handleKeyEventInternal : Events.keyEvent t -> bool t meth 

  method addChild : #Control.control t -> bool t opt -> unit meth 

  method getChild : js_string t -> component t opt meth

  method getChildAt : int -> component t opt meth

  method addChildAt : Control.control t -> int -> bool t opt -> unit meth 

  method removeChild : (js_string t,#Control.control t) Union.t -> bool t opt 
    -> Control.control t meth  

  method getOrientation : Container.orientation_pre opt meth 

  method setOrientation : Container.orientation_pre -> unit meth 

  method isVisible : bool t  meth 

  method setVisible : bool t -> bool t opt -> bool t meth 

  method isEnabled : bool t meth 

  method setEnabled : bool t -> unit meth 

  method isFocusable : bool t meth 

  method setFocusable : bool t -> unit meth 

  method isFocusableChildrenAllowed : bool t meth 

  method setFocusableChildrenAllowed : bool t -> unit meth 

  method getHighlightedIndex : int meth 

  method setHighlightedIndex : int -> unit meth 

  method setHighlighted : #Control.control t -> unit meth 

  method getHighlighted : Control.control t meth 

  method highlightFirst : unit meth 

  method highlightLast : unit meth 

  method highlightNext : unit meth 

  method highlightPrevious : unit meth 

  method highlightHelper : (int -> int -> int ) callback -> int -> bool t meth

  method canHighlightItem : #Control.control t -> bool t meth 

  method setHighlightedIndexFromKeyEvent : int -> unit meth 

  method isMouseButtonPressed : bool t meth 

  method setMouseButtonPressed : bool t -> unit meth 
end

and ['cont] containerRenderer = object
  constraint 'cont = #container
  method canDecorate : #Dom_html.element t -> bool t meth

  method createDom : 'cont t -> Dom_html.element t meth

  method decorate : 'cont t -> #Dom_html.element t -> Dom_html.element t meth

  method decorateChildren : 'cont t -> #Dom_html.element t -> Dom_html.element t meth

  method enableTabIndex : #Dom_html.element t -> bool t meth

  method getAriaRole : Gdom.A11y.role_pre optdef meth

  method getClassNames : 'cont t -> js_string t js_array t meth

  method getContentElement : #Dom_html.element t -> Dom_html.element t meth

  method getCssClass : js_string t meth

  method getDecoratorForChild : #Dom_html.element t 
    -> Control.control t opt meth

  method getDefaultOrientation : Container.orientation_pre meth
  
  method getKeyEventTarget : 'cont t -> Dom_html.element t opt meth

  method hasTabIndex : #Dom_html.element t -> bool t meth

  method initializeDom : 'cont t -> unit meth
end

let tmp = Tools.variable "[oclosure]goog.ui.ContainerRenderer[/oclosure]"
let containerRenderer : (#container containerRenderer t) constr = tmp


let tmp = Tools.variable "[oclosure]goog.ui.Container[/oclosure]"
let container : (Container.orientation_pre opt -> container #containerRenderer t opt -> Gdom.domHelper t opt -> container t) constr =
  tmp

