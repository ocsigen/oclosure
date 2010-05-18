(** 
    * OClosure Project - 2010
    * Class goog.dom.DomHelper
    *
    * Create an instance of a DOM helper with a new document object. 
    *
    * @author Bozman Cagdas 
    * @version 0.1
*)

(** JSOO.obj **)
type element

(** Number **)
type number 

(** Node **) 
type node = JSOO.obj

(** Document object**)
type document 

(** goog.math.Coordinate: Object with values 'x' and 'y' **) 
type coordinate 

(** goog.math.Size **)
type size 

(** The window associated with the given document **)
type window 

class external dom : 
  < 
  (** Appends a child to a node *)
  appendChild: element -> element -> unit;
 
 (** Whether a node contains another node *)
 contains: node -> node -> bool;
 
 (** Returns a dom node with a set of attributes. 
     This function accepts varargs for subsequent nodes to be added. 
     Subsequent nodes will be added to the first node as childNodes. *)
 createDom: string -> string -> string -> element;
 
 (**  Creates a new element *)
 createElement : string -> JSOO.obj;
 
 (** Create a table *)
 createTable: number -> number -> bool -> element;

 (** Creates a new text node *)
 createTextNode: string -> node;

 (** Finds the first descendant node that matches the filter function.
     This does a depth first search. *)
 findNode: node -> (node -> bool) -> node;
 
 (** Flattens an element. 
     That is, removes it and replace it with its children *)
 flattenElement: element -> element;
 
 (** Walks up the DOM hierarchy returning the first ancestor
     that passes the matcher function. *)
 getAncestor: node -> (node -> bool) -> bool -> number -> element;

 (** Walks up the DOM hierarchy returning the first ancestor 
     that has the passed tag name and/or class name. 
     If the passed element matches the specified criteria,
     the element itself is returned. *)
 getAncestorByTagNameAndClass: node -> string -> string -> node;
 
 (**  Returns the compatMode of the document *)
 getCompatMode: unit -> string;

 (** Returns the compatMode of the document *)
 getDocument: unit -> document;

 (** Calculates the height of the document *)
 getDocumentHeight: unit -> number;

 (** Gets the document scroll distance as a coordinate object **)
 getDocumentScroll: unit -> coordinate;

 (** Gets the document scroll element **)
 getDocumentScrollElement: unit -> element;

 (** Gets the DomHelper object for the document where the element resides *)
 getDomHelper: node -> dom;
 
 (** Return the element with the given ID **)
 getElement : string -> element;
 
 (** Looks up elements by both tag and class name, using browser native
     functions (querySelectorAll, getElementsByTagName or 
     getElementsByClassName) where possible. 
     The returned array is a live NodeList or a static list depending on
     the code path taken. *)
 getElementByTagNameAndClass: string -> string -> element -> number;

 (** Returns the first child node that is an element *)
 getFirstElementChild: node -> node;

 (** Cross browser function for getting the document element of an iframe *)
 getFrameContentDocument: element -> element;

 (** Returns the last child node that is an element *)
 getLastElementChild: node -> element;

 (** Returns the first next sibling that is an element *)
 getNextElementSibling: node -> element;

 (** Returns the next node in source order from the given node **)
 getNextNode: node -> node;
 
 (** Returns the text length of the text contained in a node, without markup. 
     This is equivalent to the selection length if the node was selected,
     or the number of cursor movements to traverse the node.
     Images & BRs take one space.  New lines are ignored. *)
 getNodeTextLength: node -> number;

 (** Returns the text offset of a node relative to one of its ancestors.
     The text length is the same as the length calculated 
     by goog.dom.getNodeTextLength. *)
 getNodeTextOffset: node -> node -> number;

 (** Returns the owner document for a node. *)
 getOwnerDocument: node -> element;
   
 (** Returns the first previous sibling that is an element **)
 getPreviousElementSibling: node -> element;

 (** Returns the previous node in source order from the given node. *)
 getPreviousNode: node -> element;

 (** Returns the text content of the current node, without markup 
     and invisible symbols.
     New lines are stripped and whitespace is collapsed,
     such that each character would be visible.
     In browsers that support it, innerText is used.
     Other browsers attempt to simulate it via node traversal.
     Line breaks are canonicalized in IE. *)
 getTextContent: node -> string;

 (** Gets the dimensions of the viewport. *)
 getViewportSize: window -> size;

 (** Gets the window object associated with the document. *)
 getWindow: unit -> window;
 
 (** Converts an HTML string into a document fragment. *)
 htmlToDocumentFragment: string -> node;

 (** Inserts a new node after an existing reference node
     (i.e., as the next sibling).
     If the reference node has no parent, then does nothing. *)
 insertSiblingAfter: node -> node;
 
 (** Inserts a new node before an existing reference node
     (i.e., as the next sibling).
     If the reference node has no parent, then does nothing. *)
 insertSiblingBefore: node -> node;

 (** Returns true if the browser is in "CSS1-compatible"
     (standards-compliant) mode, false otherwise. *)
 isCss1CompatMode: unit -> bool;

 (** Whether the object looks like a DOM node. *)
 isNodeLike: node -> bool;

 (** Removes all the child nodes on a DOM node. *)
 removeChildren: node -> unit;
 
 (** Removes a node from its parent. *)
 removeNode: node -> node;

 (** Replaces a node in the DOM tree. 
     Will do nothing if {@code oldNode} has no parent. *)
 replaceNode: node -> node -> unit;
 
 (** Sets the document object. *)
 setDocument: document -> unit;

 (** Sets a number of properties on a node. *)
 setProperties: element -> element -> unit;
 
 (** Cross browser function for setting the text content of an element. *)
 setTextContent: element -> string -> unit;
> = "goog.dom.DomHelper"
