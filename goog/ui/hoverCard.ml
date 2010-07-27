(**
   OClosure Project - 2010
   Class goog.ui.HoverCard
   
   @author Cardoso Gabriel 
   @version 0.2
*)

open Js

class type hoverCard = object
  inherit AdvancedTooltip.advancedTooltip

  method cancelTrigger : unit meth

  method disposeInternal : unit meth

  method getAnchorElement : Dom_html.element t meth

  method maybeShow : #Dom_html.element t -> 
    Positioning.abstractPosition t opt -> unit meth

  method setMaxSearchSteps : int -> unit meth

  method triggerForElement : #Dom_html.element t -> 
    Positioning.abstractPosition t opt -> unit meth
end

let tmp = Tools.variable "[oclosure]goog.ui.HoverCard[/oclosure]"
let hoverCard : ((#Dom_html.element t -> bool t) -> bool t opt -> 
  Gdom.domHelper t opt -> hoverCard t) constr = tmp
  
