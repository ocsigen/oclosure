open Js

include PluginField

module Command = struct
  let _UNDO = Js.string "+undo"
  let _REDO = Js.string "+redo"
  let _LINK = Js.string "+link"
  let _FORMAT_BLOCK = Js.string "+formatBlock"
  let _INDENT = Js.string "+indent"
  let _OUTDENT = Js.string "+outdent"
  let _REMOVE_FORMAT = Js.string "+removeFormat"
  let _STRIKE_THROUGH = Js.string "+strikeThrough"
  let _HORIZONTAL_RULE = Js.string "+insertHorizontalRule"
  let _SUBSCRIPT = Js.string "+subscript"
  let _SUPERSCRIPT = Js.string "+superscript"
  let _UNDERLINE = Js.string "+underline"
  let _BOLD = Js.string "+bold"
  let _ITALIC = Js.string "+italic"
  let _FONT_SIZE = Js.string "+fontSize"
  let _FONT_FACE = Js.string "+fontName"
  let _FONT_COLOR = Js.string "+foreColor"
  let _EMOTICON = Js.string "+emoticon"
  let _BACKGROUND_COLOR = Js.string "+backColor"
  let _ORDERED_LIST = Js.string "+insertOrderedList"
  let _UNORDERED_LIST = Js.string "+insertUnorderedList"
  let _TABLE = Js.string "+table"
  let _JUSTIFY_CENTER = Js.string "+justifyCenter"
  let _JUSTIFY_FULL = Js.string "+justifyFull"
  let _JUSTIFY_RIGHT = Js.string "+justifyRight"
  let _JUSTIFY_LEFT = Js.string "+justifyLeft"
  let _BLOCKQUOTE = Js.string "+BLOCKQUOTE" (* This is a nodename. Should be all caps. *)
  let _DIR_LTR = Js.string "ltr" (* should be exactly 'ltr' as it becomes dir attribute value *)
  let _DIR_RTL = Js.string "rtl" (* same here *)
  let _IMAGE = Js.string "image"
  let _EDIT_HTML = Js.string "editHtml"

  (* queryCommandValue only: returns the default tag name used in the field.
     DIV should be considered the default if no plugin responds. *)
  let _DEFAULT_TAG = Js.string "+defaultTag"

  (* TODO(nicksantos): Try to give clients an API so that they don't need
     these execCommands. *)
  let _CLEAR_LOREM = Js.string "clearlorem"
  let _UPDATE_LOREM = Js.string "updatelorem"
  let _USING_LOREM = Js.string "usinglorem"

  (* Modal editor commands (usually dialogs). *)
  let _MODAL_LINK_EDITOR = Js.string "link"
end

module Plugins = Plugins
