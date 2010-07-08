open Js

(** 
   Decorates the element with a suitable goog.ui.Component instance, if a 
   matching decorator is found.
*)
let decorate (e : Dom_html.element t) : #Component.component t opt =
  Js.Unsafe.fun_call 
    (Js.Unsafe.variable "goog.ui.decorate")
    [|Js.Unsafe.inject e|]

include AbstractSpellChecker
include AdvancedTooltip
include AnimatedZippy
include AutoComplete
include Bubble
include Button
include CharPicker
include Charcounter
include Checkbox
include ColorPalette
include ColorPicker
include Component
include Container
include Control
include DatePicker
include Dialog
include ImagelessRoundedCorner
include Labelinput
include Menu
include MenuButton
include MenuItem
include Palette
include PlainTextSpellChecker
include Popup
include PopupBase
include ProgressBar
include Prompt
include Ratings
include RoundedPanel
include RichTextSpellChecker
include ScrollFloater
include Slider
include SliderBase
include SubMenu
include TabBarRenderer
include Tabbar
include Toolbar
include ToolbarButton
include Tooltip
include Twothumbslider
include Zippy
module Tree = Tree
include BidiInput
include ControlContent
include CheckBoxMenuItem
include ToolbarMenuButton
include Separator
include MenuSeparator
include ContainerRenderer
include MenuRenderer
include ToggleButton
include ToolbarToggleButton
include ComboBoxItem
include ComboBox
include GaugeTheme
include Gauge
include CustomButton
include CustomButtonRenderer
include Css3ButtonRenderer
include ContainerScroller
include CustomColorPalette
