
(** 
    * OClosure Project - 2010
    * Class goog.editor.SeamlessField
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open Style  (* goog.style *)
open EventType  (* goog.events.EventType *)
open Events  (* goog.events *)
open Node  (* goog.editor.node *)
open FieldStyleInfo  (* goog.editor.icontent.FieldStyleInfo *)
open FieldFormatInfo  (* goog.editor.icontent.FieldFormatInfo *)
open Icontent  (* goog.editor.icontent *)
open EventType  (* goog.editor.Field.EventType *)
open Field  (* goog.editor.Field *)
open BrowserFeature  (* goog.editor.BrowserFeature *)
open TagName  (* goog.dom.TagName *)
open Range  (* goog.dom.Range *)
open Dom  (* goog.dom *)
open Logger  (* goog.debug.Logger *)
open Style  (* goog.cssom.iframe.style *)

class external seamlessField 
inherit field: string -> document(* opt? *) ->  <
logger : unit;
setMinHeight : number -> unit;
isFixedHeight : boolean;
overrideFixedHeight : boolean -> unit;
doFieldSizingGecko : unit;
getIframeableCss : boolean(* opt? *) -> string;
setIframeableCss : string -> unit;
inheritBlendedCSS : unit;
usesIframe : unit;
setupMutationEventHandlersGecko : unit;
handleChange : unit;
dispatchBlur : unit;
turnOnDesignModeGecko : unit;
installStyles : unit;
makeEditableInternal : unit;
handleFieldLoad : unit;
getIframeAttributes : unit;
attachIframe : unit;
getFieldFormatInfo : unit;
writeIframeContent : unit;
restoreDom : unit;
> = "goog.editor.SeamlessField"
