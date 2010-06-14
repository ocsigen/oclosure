
(** 
    * OClosure Project - 2010
    * Class goog.ui.SplitPane.Orientation, goog.ui.SplitPane
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open UserAgent  (* goog.userAgent *)
open EventType  (* goog.ui.Component.EventType *)
open Component  (* goog.ui.Component *)
open Style  (* goog.style *)
open Size  (* goog.math.Size *)
open Rect  (* goog.math.Rect *)
open EventType  (* goog.fx.Dragger.EventType *)
open Dragger  (* goog.fx.Dragger *)
open EventType  (* goog.events.EventType *)
open Classes  (* goog.dom.classes *)
open Dom  (* goog.dom *)

class external splitPane 
inherit component: component -> component -> orientation -> domHelper(* opt? *) ->  <
splitDragger_ : unit;
orientation : unit;
createDom : unit;
canDecorate : element -> boolean;
decorateInternal : element -> unit;
enterDocument : unit;
setInitialSize : number -> unit;
setHandleSize : number -> unit;
setContinuousResize : boolean -> unit;
setOrientationClassForHandle : unit;
setOrientation : orientation -> unit;
getOrientation : orientation;
getFirstComponentSize : number(* opt? *);
setFirstComponentSize : number(* opt? *) -> unit;
setSize : unit;
disposeInternal : unit;
> = "goog.ui.SplitPane"
