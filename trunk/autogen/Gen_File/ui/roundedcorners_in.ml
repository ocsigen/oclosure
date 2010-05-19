
(** 
    * OClosure Project - 2010
    * Class goog.ui.RoundedCorners.Corners, goog.ui.RoundedCorners
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open UserAgent  (* goog.userAgent *)
open Style  (* goog.style *)
open String  (* goog.string *)
open Size  (* goog.math.Size *)
open Dom  (* goog.dom *)
open Color  (* goog.color *)
open Uri  (* goog.Uri *)

class external roundedCorners : uri(* | string *) ->  <
roundElement : element -> string -> size(* opt? *) -> number(* opt? *) -> unit;
getColor : string;
setColor : string -> unit;
getBackgroundColor : string;
setBackgroundColor : string -> unit;
getInnerColor : string;
setInnerColor : string -> unit;
getBorderThickness : size;
setBorderThickness : size -> unit;
getExplicitHeight : string(* opt? *);
setExplicitHeight : string -> unit;
getPadding : string;
setPadding : string -> unit;
getLineWidth : number;
setLineWidth : number -> unit;
getCornersToShow : number;
setCornersToShow : number -> unit;
getImageFormat : string;
setImageFormat : string -> unit;
getContent : string;
setContent : string -> unit;
getBorderHtml : string;
getBackgroundHtml : string;
> = "goog.ui.RoundedCorners"
