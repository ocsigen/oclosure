(** 
    * OClosure Project - 2010
    * Class goog.ui.Dialog
    *
    * Class for showing simple dialog boxes. The Html structure of the dialog 
    * box is:
    * Element         Function                Class-name, modal-dialog = default
    * ----------------------------------------------------------------------------
    * - iframe         Iframe mask              modal-dialog-bg
    * - div            Background mask          modal-dialog-bg
    * - div            Dialog area              modal-dialog
    * - div        Title bar                modal-dialog-title
    * - span                             modal-dialog-title-text
    * - text  Title text               N/A
    * - span                             modal-dialog-title-close
    * - ??    Close box                N/A
    * - div        Content area             modal-dialog-content
    * - ??      User specified content   N/A
    * - div        Button area              modal-dialog-buttons
    * - button                           N/A
    * - button
    * - ...
    * 
    * @author Cardoso Gabriel
    * @author Bozman Cagdas
    * @version 0.1
    * @see 'goog.ui.Component'
*)
open Component
  
open Js
class type dialog = object
  inherit component
  (** Allows arbitrary HTML to be set in the content element. *)
  method setContent : js_string t -> unit meth
 
  (** Sets the title. *)
  method setTitle : js_string t -> unit meth

  (** Sets the visibility of the dialog box and moves focus to the default 
     button. 
     Lazily renders the component if needed. 
   *)
  method setVisible : bool t -> unit meth
end

(**
   @param opt_class CSS class name for the dialog element, also used
   as a class name prefix for related elements; defaults to modal-dialog.
   @param opt_useIframeMask Work around windowed controls z-index
   issue by using an iframe instead of a div for bg element.
   @param opt_domHelper Optional DOM helper; see {@link
   goog.ui.Component} for semantics.
*)
let dialog : (js_string opt -> bool t opt -> Gdom.domHelper t opt -> dialog t) constr =
  Js.Unsafe.variable "goog.ui.Dialog"
