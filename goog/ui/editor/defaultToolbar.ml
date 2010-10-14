(**
  goog/ui/editor/defaulttoolbar.js file

  @author Gabriel Cardoso
*)

open Js
open Tools
open Control
open Select
open Toolbar
open Button

module DefaultToolbar = struct
  let editor = 
    Tools.variable "[oclosure]goog.ui.editor.DefaultToolbar[/oclosure]"

  let addDefaultFontSizes (s : #select t) : unit = 
    editor##addDefaultFontSizes (s)

  let addDefaultFonts (s : #select t) : unit =
    editor##addDefaultFonts (s)
      
  let addDefaultFormatOptions (s : #select t) : unit =
    editor##addDefaultFormatOptions (s)
      
  let makeBuiltInToolbarButton (s : js_string t) 
      (dom : Gdom.domHelper t opt) : #button t = 
    editor##makeBuiltInToolbarButton (s, dom)
      
  let makeDefaultToolbar (el : #Dom_html.element t) 
      (b : bool t opt) : toolbar t = editor##makeDefaultToolbar (el, b)

  let makeToolbar (arr : (js_string t, control t) Union.t js_array t)
      (el : #Dom_html.element t) (b : bool t opt) : toolbar t =
    editor##makeToolbar (arr, el, b)

  let setLocale (s : js_string t) : unit = editor##setLocale (s)
end
