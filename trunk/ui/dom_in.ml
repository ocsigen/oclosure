(*
 * Module goog.dom.DomHelper
 * Create an instance of a DOM helper with a new document object. 
 * Bozman Cagdas - 2010
 *)

(** JSOO.obj **)
type element = JSOO.obj

(** Number **)
type number = JSOO.obj (*TODO : Check this type *)

(** Node **) (*TODO : Check this type *)
type node = JSOO.obj

(** Document object**) (*TODO : Check this type *)
type document = JSOO.obj

(** goog.math.Coordinate: Object with values 'x' and 'y' **) 
type coordinate = JSOO.obj (*TODO : Check this type *)

class external domHelper : 
  < 
  (** Appends a child to a node **)
  appendChild: element -> element -> unit;
 
 (** Whether a node contains another node **)
 contains: node -> node -> bool;
 
 (** Returns a dom node with a set of attributes. 
     This function accepts varargs for subsequent nodes to be added. 
     Subsequent nodes will be added to the first node as childNodes. **)
 (* Todo: Replace string with a type element = string | JSOO.obj *)
 createDom: string -> string -> string -> element;
 
 (**  Creates a new element **)
 createElement : string -> JSOO.obj;
 
 (** Create a table **)
 createTable: number -> number -> bool -> element;

 (** Creates a new text node **)
 (* Todo: Check the return value *)
 createTextNode: string -> node;

 (** Finds the first descendant node that matches the filter function.
     This does a depth first search. **)
 (* Todo: Check this function *)
 findNode: node -> (node -> bool) -> node;
 (* findNodes: Array<Node> -> Array<Node>*)
 
 (** Flattens an element. 
    That is, removes it and replace it with its children **)
 flattenElement: element -> element;
 
 (** Walks up the DOM hierarchy returning the first ancestor
     that passes the matcher function. **)
 getAncestor: node -> (node -> bool) -> bool -> number -> element;

 (** Walks up the DOM hierarchy returning the first ancestor 
     that has the passed tag name and/or class name. 
     If the passed element matches the specified criteria,
     the element itself is returned.  **)
 getAncestorByTagNameAndClass: node -> string -> string -> node;
 
 (**  Returns the compatMode of the document **)
 getCompatMode: unit -> string;

 (** Returns the compatMode of the document **)
 getDocument: unit -> document;

 (** Calculates the height of the document **)
 (* TODO: Check type number *)
 getDocumentHeight: unit -> number;

 (** Gets the document scroll distance as a coordinate object **)
 (* TODO: Check type coordinate *)
 getDocumentScroll: unit -> coordinate;

 (** Gets the document scroll element **)
 getDocumentScrollElement: unit -> element;

 (** Gets the DomHelper object for the document where the element resides **)
 (* TODO: BUG
    getDomHelper: node -> domHelper;*)
 
 (** Return the element with the given ID **)
 getElement : string -> element;
 
>
