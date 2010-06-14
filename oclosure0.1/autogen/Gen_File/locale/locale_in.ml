
(** 
    * OClosure Project - 2010
    * Class goog.locale
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open NativeNameConstants  (* goog.locale.nativeNameConstants *)

class external setLocale : string ->  <
getLocale : string;
getLanguageSubTag : string -> string;
getRegionSubTag : string -> string;
getScriptSubTag : string -> string;
getVariantSubTag : string -> string;
getNativeCountryName : string -> string;
getLocalizedCountryName : string -> object(* opt? *) -> string;
getNativeLanguageName : string -> string;
getLocalizedLanguageName : string -> object(* opt? *) -> string;
registerResource : object -> resource(* | string *) -> string -> unit;
isResourceRegistered : resource(* | string *) -> string -> boolean;
registerDateTimeConstants : object -> string -> unit;
registerTimeZoneConstants : object -> string -> unit;
registerNumberFormatConstants : object -> string -> unit;
registerLocaleNameConstants : object -> string -> unit;
registerTimeZoneSelectedIds : object -> string -> unit;
registerTimeZoneSelectedShortNames : object -> string -> unit;
registerTimeZoneSelectedLongNames : object -> string -> unit;
registerTimeZoneAllLongNames : object -> string -> unit;
getResource : string -> string(* opt? *) -> object(* | undefined *);
getResourceWithFallback : string -> string(* opt? *) -> object(* | undefined *);
defaultDateTimeConstants : unit;
dateTimeConstants__en_iso8601 : unit;
> = "goog.locale.setLocale"
