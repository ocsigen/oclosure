(*
  Module goog.ui.ComboBox
  Bourdin Pierre 
*)
open Js
type element = JSOO.obj
(** goog.dom.DomHelper **)
type dom
type arrow
  
  
class external component : 
  <
  createDom:unit;
 getElement:unit ->element;
 decorate:element->unit;
 render:element -> unit;
 > = "goog.ui.Component"
       
class external comboboxitem  :string->
  <
  setSticky:bool->unit;
 isSticky:unit->bool;
 setFormatFromToken:string->string;
 > = "goog.ui.ComboBoxItem"
       
class external combobox inherit component :  
  <
 addItem:comboboxitem->unit;
 addItemAt:comboboxitem->int->unit;
 setDefaultText:string->unit;
 getDefaultText:unit->string;
(*
 enterDocument:unit->unit;
 exitDocument:unit->unit;
 canDecorate:unit->bool;
 disposeInternal:unit->unit;
 dissim:unit->unit;
 removeItem:comboboxitem->unit;
 removeAllItems:unit->unit;
 removeItemAt:int->unit;
 getItemAt:int->comboboxitem;
 getFieldName:unit->string;
 setUseDropdownArrow:arrow->unit;
 setValue:string->unit;
 getValue:unit->string;
 maybeShowMenu_:bool->unit;
 showMenu_:unit->unit;
 hideMenu_:unit->unit;
 clearDismissTimer_:unit->unit;
 setItemVisibilityFromToken_ :string->unit;
 setItemHighlightFromToken_ :string->unit;
 isItemSticky_:comboboxitem->bool;
*)
> = "goog.ui.ComboBox" 


let _=
  let combo=new combobox in
    combo#setDefaultText "yeah";
    combo#createDom;
    combo#decorate (Js.get_element_by_id "cible")


(*combo#render (Js.get_element_by_id "cible");;*)



