open Goog.Tree
open TreeControl
open TreeNode
open BaseNode
open Js

let d = Dom_html.document

let coerce x =
  (x : unit treeNode t :> unit baseNode t)

let tree : unit treeControl t = 
  jsnew treeControl(Js.string "Fac", Js.null, Js.null)

let ufrInfo = tree##createNode(Js.string "Ufr Info")
let ufrChimie = tree##createNode(Js.string "Ufr chimie")
let _ = tree##add((coerce ufrInfo), Js.null); tree##add((coerce ufrChimie), Js.null)

let e = tree##createNode(Js.string "Gab")
let _ = ufrInfo##add(coerce e, Js.null)

let abr = Js.Opt.get (d##getElementById (Js.string "treeContainer"))
    (fun () -> assert false)

let _ = tree##render(Obj.magic abr)
