
(** 
    * OClosure Project - 2010
    * Class goog.ui.RoundedPanel.Corner, goog.ui.RoundedPanel, goog.ui.GraphicsRoundedPanel, goog.ui.CssRoundedPanel, goog.ui.BaseRoundedPanel
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open UserAgent  (* goog.userAgent *)
open Component  (* goog.ui.Component *)
open Style  (* goog.style *)
open Coordinate  (* goog.math.Coordinate *)
open Stroke  (* goog.graphics.Stroke *)
open SolidFill  (* goog.graphics.SolidFill *)
open Graphics  (* goog.graphics *)
open Classes  (* goog.dom.classes *)
open Dom  (* goog.dom *)

class external create : number -> number -> string -> string(* opt? *) -> number(* opt? *) -> domHelper(* opt? *) ->  <
> = "goog.ui.RoundedPanel.create"

class external baseRoundedPanel 
inherit component: number -> number -> string -> string(* opt? *) -> number(* opt? *) -> domHelper(* opt? *) ->  <
decorateInternal : element -> unit;
disposeInternal : unit;
getContentElement : element;
> = "goog.ui.BaseRoundedPanel"

class external cssRoundedPanel 
inherit baseRoundedPanel: number -> number -> string -> string(* opt? *) -> number(* opt? *) -> domHelper(* opt? *) ->  <
decorateInternal : element -> unit;
> = "goog.ui.CssRoundedPanel"

class external graphicsRoundedPanel 
inherit baseRoundedPanel: number -> number -> string -> string(* opt? *) -> number(* opt? *) -> domHelper(* opt? *) ->  <
decorateInternal : element -> unit;
disposeInternal : unit;
> = "goog.ui.GraphicsRoundedPanel"
