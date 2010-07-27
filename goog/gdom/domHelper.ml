(**
   OClosure Project - 2010
   Class goog.dom.DomHelper
   
   Create an instance of a DOM helper with a new document object. 
   
   @author Bozman Cagdas 
   @version 0.1
*)
open Js
open Tools

type document = Dom_html.document t

type size = Math.size

type window = Dom_html.window

class type domHelper = object
  method appendChild: #Dom.node t -> #Dom.node t -> unit meth
 
  method contains: #Dom.node t -> #Dom.node t -> bool t meth
 
  method createDom: js_string Js.t -> js_string Js.t Js.opt 
    -> js_string Js.t opt -> Dom_html.element t meth
 
  method createElement : js_string Js.t -> Dom_html.element t meth
 
  method createTextNode: js_string Js.t -> Dom.node t meth

  method findNode: #Dom.node t -> (#Dom.node t -> bool t) -> Dom.node t meth
 
  method flattenElement: #Dom_html.element t -> Dom_html.element t meth
 
  method getAncestor: #Dom.node t -> (#Dom.node t -> bool t) -> bool t 
    -> int opt -> Dom.node t meth

  method getAncestorByTagNameAndClass: #Dom.node t -> js_string Js.t 
    -> js_string Js.t -> Dom.node t meth
 
  method getCompatMode: js_string Js.t meth

  method getDocument: document meth

  method getDocumentHeight: int meth

  method getDocumentScroll: Math.coordinate t meth

  method getDocumentScrollElement: Dom_html.element t meth

  method getDomHelper: #Dom.node t -> domHelper t meth
 
  method getElement : (#Dom_html.element t, js_string t) Union.t 
    -> Dom_html.element t meth
 
  method getElementByTagNameAndClass: js_string Js.t -> js_string Js.t 
    -> #Dom_html.element t -> int meth

  method getFirstElementChild: #Dom.node t -> Dom.node t meth

  method getFrameContentDocument: #Dom_html.element t -> Dom_html.element t meth

  method getLastElementChild: #Dom.node t -> Dom_html.element t meth

  method getNextElementSibling: #Dom.node t -> Dom_html.element t meth

  method getNextNode: #Dom.node t -> Dom.node t meth

  method getNodeTextLength: #Dom.node t -> int meth

  method getNodeTextOffset: #Dom.node t -> #Dom.node t -> int meth

  method getOwnerDocument: #Dom.node t -> Dom_html.element t meth
   
  method getPreviousElementSibling: #Dom.node t -> Dom_html.element t meth

  method getPreviousNode: #Dom.node t -> Dom_html.element t meth

  method getTextContent: #Dom.node t -> js_string Js.t meth

  method getViewportSize: window t -> size t meth

  method getWindow: window t meth
 
  method htmlToDocumentFragment: js_string Js.t -> Dom.node t meth

  method insertSiblingAfter: #Dom.node t -> Dom.node t meth
 
  method insertSiblingBefore: #Dom.node t -> Dom.node t meth

  method isCss1CompatMode: bool t meth

  method isNodeLike: #Dom.node t -> bool t meth

  method removeChildren: #Dom.node t -> unit meth
 
  method removeNode: #Dom.node t -> Dom.node t meth

  method replaceNode: #Dom.node t -> #Dom.node t -> unit meth
 
  method setDocument: document -> unit meth

  method setProperties: #Dom_html.element t -> #Dom_html.element t -> unit meth
 
  method setTextContent: #Dom_html.element t -> js_string Js.t -> unit meth
end

let domHelper : domHelper Js.t constr = 
  Js.Unsafe.variable "goog.dom.DomHelper"
