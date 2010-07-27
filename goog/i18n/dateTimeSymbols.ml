open Js

type dateTimeSymbols = 
  | DateTimeSymbols_am
  | DateTimeSymbols_ar
  | DateTimeSymbols_bg
  | DateTimeSymbols_bn
  | DateTimeSymbols_ca
  | DateTimeSymbols_cs
  | DateTimeSymbols_da
  | DateTimeSymbols_de
  | DateTimeSymbols_de_AT
  | DateTimeSymbols_de_CH
  | DateTimeSymbols_el
  | DateTimeSymbols_en
  | DateTimeSymbols_en_AU
  | DateTimeSymbols_en_GB
  | DateTimeSymbols_en_IE
  | DateTimeSymbols_en_IN
  | DateTimeSymbols_en_ISO
  | DateTimeSymbols_en_SG
  | DateTimeSymbols_en_US
  | DateTimeSymbols_en_ZA
  | DateTimeSymbols_es
  | DateTimeSymbols_et
  | DateTimeSymbols_eu
  | DateTimeSymbols_fa
  | DateTimeSymbols_fi
  | DateTimeSymbols_fil
  | DateTimeSymbols_fr
  | DateTimeSymbols_fr_CA
  | DateTimeSymbols_gl
  | DateTimeSymbols_gsw
  | DateTimeSymbols_gu
  | DateTimeSymbols_he
  | DateTimeSymbols_hi
  | DateTimeSymbols_hr
  | DateTimeSymbols_hu
  | DateTimeSymbols_id
  | DateTimeSymbols_in
  | DateTimeSymbols_is
  | DateTimeSymbols_it
  | DateTimeSymbols_iw
  | DateTimeSymbols_ja
  | DateTimeSymbols_kn
  | DateTimeSymbols_ko
  | DateTimeSymbols_ln
  | DateTimeSymbols_lt
  | DateTimeSymbols_lv
  | DateTimeSymbols_ml
  | DateTimeSymbols_mo
  | DateTimeSymbols_mr
  | DateTimeSymbols_ms
  | DateTimeSymbols_mt
  | DateTimeSymbols_nl
  | DateTimeSymbols_no
  | DateTimeSymbols_or
  | DateTimeSymbols_pl
  | DateTimeSymbols_pt
  | DateTimeSymbols_pt_BR
  | DateTimeSymbols_pt_PT
  | DateTimeSymbols_ro
  | DateTimeSymbols_ru
  | DateTimeSymbols_sk
  | DateTimeSymbols_sl
  | DateTimeSymbols_sq
  | DateTimeSymbols_sr
  | DateTimeSymbols_sv
  | DateTimeSymbols_sw
  | DateTimeSymbols_ta
  | DateTimeSymbols_te
  | DateTimeSymbols_th
  | DateTimeSymbols_tl
  | DateTimeSymbols_tr
  | DateTimeSymbols_uk
  | DateTimeSymbols_ur
  | DateTimeSymbols_vi
  | DateTimeSymbols_zh
  | DateTimeSymbols_zh_CN
  | DateTimeSymbols_zh_HK
  | DateTimeSymbols_zh_TW

type dateTimeSymbols_pre = js_string t

let of_dateTimeSymbols = function 
  | DateTimeSymbols_am -> Js.Unsafe.variable "goog.i18n.DateTimeSymbols_am"
  | DateTimeSymbols_ar -> Js.Unsafe.variable "goog.i18n.DateTimeSymbols_ar"
  | DateTimeSymbols_bg -> Js.Unsafe.variable "goog.i18n.DateTimeSymbols_bg"
  | DateTimeSymbols_bn -> Js.Unsafe.variable "goog.i18n.DateTimeSymbols_bn"
  | DateTimeSymbols_ca -> Js.Unsafe.variable "goog.i18n.DateTimeSymbols_ca"
  | DateTimeSymbols_cs -> Js.Unsafe.variable "goog.i18n.DateTimeSymbols_cs"
  | DateTimeSymbols_da -> Js.Unsafe.variable "goog.i18n.DateTimeSymbols_da"
  | DateTimeSymbols_de -> Js.Unsafe.variable "goog.i18n.DateTimeSymbols_de"
  | DateTimeSymbols_de_AT -> Js.Unsafe.variable "goog.i18n.DateTimeSymbols_de_AT"
  | DateTimeSymbols_de_CH -> Js.Unsafe.variable "goog.i18n.DateTimeSymbols_de_CH"
  | DateTimeSymbols_el -> Js.Unsafe.variable "goog.i18n.DateTimeSymbols_el"
  | DateTimeSymbols_en -> Js.Unsafe.variable "goog.i18n.DateTimeSymbols_en"
  | DateTimeSymbols_en_AU -> Js.Unsafe.variable "goog.i18n.DateTimeSymbols_en_AU"
  | DateTimeSymbols_en_GB -> Js.Unsafe.variable "goog.i18n.DateTimeSymbols_en_GB"
  | DateTimeSymbols_en_IE -> Js.Unsafe.variable "goog.i18n.DateTimeSymbols_en_IE"
  | DateTimeSymbols_en_IN -> Js.Unsafe.variable "goog.i18n.DateTimeSymbols_en_IN"
  | DateTimeSymbols_en_ISO -> Js.Unsafe.variable "goog.i18n.DateTimeSymbols_en_ISO"
  | DateTimeSymbols_en_SG -> Js.Unsafe.variable "goog.i18n.DateTimeSymbols_en_SG"
  | DateTimeSymbols_en_US -> Js.Unsafe.variable "goog.i18n.DateTimeSymbols_en_US"
  | DateTimeSymbols_en_ZA -> Js.Unsafe.variable "goog.i18n.DateTimeSymbols_en_ZA"
  | DateTimeSymbols_es -> Js.Unsafe.variable "goog.i18n.DateTimeSymbols_es"
  | DateTimeSymbols_et -> Js.Unsafe.variable "goog.i18n.DateTimeSymbols_et"
  | DateTimeSymbols_eu -> Js.Unsafe.variable "goog.i18n.DateTimeSymbols_eu"
  | DateTimeSymbols_fa -> Js.Unsafe.variable "goog.i18n.DateTimeSymbols_fa"
  | DateTimeSymbols_fi -> Js.Unsafe.variable "goog.i18n.DateTimeSymbols_fi"
  | DateTimeSymbols_fil -> Js.Unsafe.variable "goog.i18n.DateTimeSymbols_fil"
  | DateTimeSymbols_fr -> Js.Unsafe.variable "goog.i18n.DateTimeSymbols_fr"
  | DateTimeSymbols_fr_CA -> Js.Unsafe.variable "goog.i18n.DateTimeSymbols_fr_CA"
  | DateTimeSymbols_gl -> Js.Unsafe.variable "goog.i18n.DateTimeSymbols_gl"
  | DateTimeSymbols_gsw -> Js.Unsafe.variable "goog.i18n.DateTimeSymbols_gsw"
  | DateTimeSymbols_gu -> Js.Unsafe.variable "goog.i18n.DateTimeSymbols_gu"
  | DateTimeSymbols_he -> Js.Unsafe.variable "goog.i18n.DateTimeSymbols_he"
  | DateTimeSymbols_hi -> Js.Unsafe.variable "goog.i18n.DateTimeSymbols_hi"
  | DateTimeSymbols_hr -> Js.Unsafe.variable "goog.i18n.DateTimeSymbols_hr"
  | DateTimeSymbols_hu -> Js.Unsafe.variable "goog.i18n.DateTimeSymbols_hu"
  | DateTimeSymbols_id -> Js.Unsafe.variable "goog.i18n.DateTimeSymbols_id"
  | DateTimeSymbols_in -> Js.Unsafe.variable "goog.i18n.DateTimeSymbols_in"
  | DateTimeSymbols_is -> Js.Unsafe.variable "goog.i18n.DateTimeSymbols_is"
  | DateTimeSymbols_it -> Js.Unsafe.variable "goog.i18n.DateTimeSymbols_it"
  | DateTimeSymbols_iw -> Js.Unsafe.variable "goog.i18n.DateTimeSymbols_iw"
  | DateTimeSymbols_ja -> Js.Unsafe.variable "goog.i18n.DateTimeSymbols_ja"
  | DateTimeSymbols_kn -> Js.Unsafe.variable "goog.i18n.DateTimeSymbols_kn"
  | DateTimeSymbols_ko -> Js.Unsafe.variable "goog.i18n.DateTimeSymbols_ko"
  | DateTimeSymbols_ln -> Js.Unsafe.variable "goog.i18n.DateTimeSymbols_ln"
  | DateTimeSymbols_lt -> Js.Unsafe.variable "goog.i18n.DateTimeSymbols_lt"
  | DateTimeSymbols_lv -> Js.Unsafe.variable "goog.i18n.DateTimeSymbols_lv"
  | DateTimeSymbols_ml -> Js.Unsafe.variable "goog.i18n.DateTimeSymbols_ml"
  | DateTimeSymbols_mo -> Js.Unsafe.variable "goog.i18n.DateTimeSymbols_mo"
  | DateTimeSymbols_mr -> Js.Unsafe.variable "goog.i18n.DateTimeSymbols_mr"
  | DateTimeSymbols_ms -> Js.Unsafe.variable "goog.i18n.DateTimeSymbols_ms"
  | DateTimeSymbols_mt -> Js.Unsafe.variable "goog.i18n.DateTimeSymbols_mt"
  | DateTimeSymbols_nl -> Js.Unsafe.variable "goog.i18n.DateTimeSymbols_nl"
  | DateTimeSymbols_no -> Js.Unsafe.variable "goog.i18n.DateTimeSymbols_no"
  | DateTimeSymbols_or -> Js.Unsafe.variable "goog.i18n.DateTimeSymbols_or"
  | DateTimeSymbols_pl -> Js.Unsafe.variable "goog.i18n.DateTimeSymbols_pl"
  | DateTimeSymbols_pt -> Js.Unsafe.variable "goog.i18n.DateTimeSymbols_pt"
  | DateTimeSymbols_pt_BR -> Js.Unsafe.variable "goog.i18n.DateTimeSymbols_pt_BR"
  | DateTimeSymbols_pt_PT -> Js.Unsafe.variable "goog.i18n.DateTimeSymbols_pt_PT"
  | DateTimeSymbols_ro -> Js.Unsafe.variable "goog.i18n.DateTimeSymbols_ro"
  | DateTimeSymbols_ru -> Js.Unsafe.variable "goog.i18n.DateTimeSymbols_ru"
  | DateTimeSymbols_sk -> Js.Unsafe.variable "goog.i18n.DateTimeSymbols_sk"
  | DateTimeSymbols_sl -> Js.Unsafe.variable "goog.i18n.DateTimeSymbols_sl"
  | DateTimeSymbols_sq -> Js.Unsafe.variable "goog.i18n.DateTimeSymbols_sq"
  | DateTimeSymbols_sr -> Js.Unsafe.variable "goog.i18n.DateTimeSymbols_sr"
  | DateTimeSymbols_sv -> Js.Unsafe.variable "goog.i18n.DateTimeSymbols_sv"
  | DateTimeSymbols_sw -> Js.Unsafe.variable "goog.i18n.DateTimeSymbols_sw"
  | DateTimeSymbols_ta -> Js.Unsafe.variable "goog.i18n.DateTimeSymbols_ta"
  | DateTimeSymbols_te -> Js.Unsafe.variable "goog.i18n.DateTimeSymbols_te"
  | DateTimeSymbols_th -> Js.Unsafe.variable "goog.i18n.DateTimeSymbols_th"
  | DateTimeSymbols_tl -> Js.Unsafe.variable "goog.i18n.DateTimeSymbols_tl"
  | DateTimeSymbols_tr -> Js.Unsafe.variable "goog.i18n.DateTimeSymbols_tr"
  | DateTimeSymbols_uk -> Js.Unsafe.variable "goog.i18n.DateTimeSymbols_uk"
  | DateTimeSymbols_ur -> Js.Unsafe.variable "goog.i18n.DateTimeSymbols_ur"
  | DateTimeSymbols_vi -> Js.Unsafe.variable "goog.i18n.DateTimeSymbols_vi"
  | DateTimeSymbols_zh -> Js.Unsafe.variable "goog.i18n.DateTimeSymbols_zh"
  | DateTimeSymbols_zh_CN -> Js.Unsafe.variable "goog.i18n.DateTimeSymbols_zh_CN"
  | DateTimeSymbols_zh_HK -> Js.Unsafe.variable "goog.i18n.DateTimeSymbols_zh_HK"
  | DateTimeSymbols_zh_TW -> Js.Unsafe.variable "goog.i18n.DateTimeSymbols_zh_TW"
