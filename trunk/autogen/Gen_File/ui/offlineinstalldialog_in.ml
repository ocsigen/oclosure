
(** 
    * OClosure Project - 2010
    * Class goog.ui.OfflineInstallDialogScreen, goog.ui.OfflineInstallDialog.UpgradeScreen, goog.ui.OfflineInstallDialog.ScreenType, goog.ui.OfflineInstallDialog.InstallingGearsScreen, goog.ui.OfflineInstallDialog.InstallScreen, goog.ui.OfflineInstallDialog.EnableScreen, goog.ui.OfflineInstallDialog.ButtonKeyType, goog.ui.OfflineInstallDialog
    *
    * 
    * @author autmatic generated file (Hugo Heuzard)
    * @version 0.1
*)
open Window  (* goog.window *)
open EventType  (* goog.ui.Dialog.EventType *)
open ButtonSet  (* goog.ui.Dialog.ButtonSet *)
open Dialog  (* goog.ui.Dialog *)
open StringBuffer  (* goog.string.StringBuffer *)
open String  (* goog.string *)
open Gears  (* goog.gears *)
open Classes  (* goog.dom.classes *)
open Disposable  (* goog.Disposable *)

class external offlineInstallDialog 
inherit dialog: string(* opt? *) -> boolean(* opt? *) -> domHelper(* opt? *) ->  <
setAppUrl : string -> unit;
getAppUrl : string;
setGearsDownloadPageUrl : string -> unit;
getGearsDownloadPageUrl : string;
getGearsDownloadPageFriendlyUrl : string;
setGearsDownloadPageFriendlyUrl : string -> unit;
setCurrentScreenType : string -> unit;
getCurrentScreenType : string;
getCurrentScreen : offlineInstallDialogScreen(* opt? *);
getScreen : string -> offlineInstallDialogScreen(* opt? *);
registerScreenType : string -> function -> unit;
registerScreen : offlineInstallDialogScreen -> unit;
setVisible : unit;
createDom : unit;
enterDocument : unit;
update : unit;
goToGearsDownloadPage : unit;
disposeInternal : unit;
> = "goog.ui.OfflineInstallDialog"

class external offlineInstallDialogScreen 
inherit disposable: offlineInstallDialog -> string ->  <
getDialog : offlineInstallDialog;
getType : string;
getButtonSet : buttonSet;
setButtonSet : buttonSet -> unit;
getContent : string;
setContent : string -> unit;
getTitle : string;
setTitle : string -> unit;
getCustomClassName : string;
setCustomClassName : string -> unit;
activate : unit;
deactivate : unit;
handleSelect : event -> unit;
> = "goog.ui.OfflineInstallDialogScreen"

class external enableScreen 
inherit offlineInstallDialogScreen: offlineInstallDialog ->  <
getButtonSet : buttonSet;
> = "goog.ui.OfflineInstallDialog.EnableScreen"

class external installScreen 
inherit offlineInstallDialogScreen: offlineInstallDialog -> string(* opt? *) ->  <
getButtonSet : buttonSet;
setInstallDescription : string -> unit;
getContent : unit;
handleSelect : unit;
> = "goog.ui.OfflineInstallDialog.InstallScreen"

class external upgradeScreen 
inherit installScreen: offlineInstallDialog ->  <
getButtonSet : buttonSet;
setUpgradeDescription : string -> unit;
> = "goog.ui.OfflineInstallDialog.UpgradeScreen"

class external installingGearsScreen 
inherit offlineInstallDialogScreen: offlineInstallDialog ->  <
getButtonSet : buttonSet;
getContent : string;
> = "goog.ui.OfflineInstallDialog.InstallingGearsScreen"
