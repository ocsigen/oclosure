
(** 
    * OClosure Project - 2010
    * Class goog.editor.icontent.FieldStyleInfo, goog.editor.icontent.FieldFormatInfo, goog.editor.icontent
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open UserAgent  (* goog.userAgent *)
open Style  (* goog.style *)
open BrowserFeature  (* goog.editor.BrowserFeature *)

class external fieldFormatInfo : string -> boolean -> boolean -> boolean -> object(* opt? *) ->  <
> = "goog.editor.icontent.FieldFormatInfo"

class external fieldStyleInfo : element -> string ->  <
forceStandardsModeIframes : unit;
writeNormalInitialBlendedIframe : fieldFormatInfo -> string -> fieldStyleInfo(* opt? *) -> hTMLIFrameElement -> unit;
writeNormalInitialIframe : fieldFormatInfo -> string -> fieldStyleInfo(* opt? *) -> hTMLIFrameElement -> unit;
writeHttpsInitialIframe : fieldFormatInfo -> document -> string -> unit;
> = "goog.editor.icontent.FieldStyleInfo"
