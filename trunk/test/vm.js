var ie = (navigator.appName == "Microsoft Internet Explorer") ;
if (Array.map == null) {
    Array.map = function (a,f) {
 if (arguments.length == 1) {
     f = a;
     a = this;
 }
 var res = new Array ();
 for (i in a) {
     res[i] = f(a[i]);
 }
 return res;
    }
}
var instr_name = new Array (
    "ACC0", "ACC1", "ACC2", "ACC3", "ACC4", "ACC5", "ACC6", "ACC7", "ACC",
    "PUSH", "PUSHACC0", "PUSHACC1", "PUSHACC2", "PUSHACC3", "PUSHACC4",
    "PUSHACC5", "PUSHACC6", "PUSHACC7", "PUSHACC", "POP", "ASSIGN", "ENVACC1",
    "ENVACC2", "ENVACC3", "ENVACC4", "ENVACC", "PUSHENVACC1", "PUSHENVACC2",
    "PUSHENVACC3", "PUSHENVACC4", "PUSHENVACC", "PUSH_RETADDR", "APPLY",
    "APPLY1", "APPLY2", "APPLY3", "APPTERM", "APPTERM1", "APPTERM2", "APPTERM3",
    "RETURN", "RESTART", "GRAB", "CLOSURE", "CLOSUREREC", "OFFSETCLOSUREM2",
    "OFFSETCLOSURE0", "OFFSETCLOSURE2", "OFFSETCLOSURE", "PUSHOFFSETCLOSUREM2",
    "PUSHOFFSETCLOSURE0", "PUSHOFFSETCLOSURE2", "PUSHOFFSETCLOSURE",
    "GETGLOBAL", "PUSHGETGLOBAL", "GETGLOBALFIELD", "PUSHGETGLOBALFIELD",
    "SETGLOBAL", "ATOM0", "ATOM", "PUSHATOM0", "PUSHATOM", "MAKEBLOCK",
    "MAKEBLOCK1", "MAKEBLOCK2", "MAKEBLOCK3", "MAKEFLOATBLOCK", "GETFIELD0",
    "GETFIELD1", "GETFIELD2", "GETFIELD3", "GETFIELD", "GETFLOATFIELD",
    "SETFIELD0", "SETFIELD1", "SETFIELD2", "SETFIELD3", "SETFIELD",
    "SETFLOATFIELD", "VECTLENGTH", "GETVECTITEM", "SETVECTITEM",
    "GETSTRINGCHAR", "SETSTRINGCHAR", "BRANCH", "BRANCHIF", "BRANCHIFNOT",
    "SWITCH", "BOOLNOT", "PUSHTRAP", "POPTRAP", "RAISE", "CHECK_SIGNALS",
    "JS_CALL1", "JS_CALL2", "JS_CALL3", "JS_CALL4", "JS_CALL5", "JS_CALLN",
    "CONST0", "CONST1", "CONST2", "CONST3", "CONSTINT", "PUSHCONST0",
    "PUSHCONST1", "PUSHCONST2", "PUSHCONST3", "PUSHCONSTINT", "NEGINT",
    "ADDINT", "SUBINT", "MULINT", "DIVINT", "MODINT", "ANDINT", "ORINT",
    "XORINT", "LSLINT", "LSRINT", "ASRINT", "EQ", "NEQ", "LTINT", "LEINT",
    "GTINT", "GEINT", "OFFSETINT", "OFFSETREF", "ISINT", "GETMETHOD", "BEQ",
    "BNEQ", "BLTINT", "BLEINT", "BGTINT", "BGEINT", "ULTINT", "UGEINT",
    "BULTINT", "BUGEINT", "GETPUBMET", "GETDYNMET", "STOP", "EVENT", "BREAK"
);
function is_in (v, a) {
    for (var i in a) {
 if (v == a[i])
     return true;
    }
    return false;
}
function index_in (v, a) {
    for (var i in a) {
 if (v == a[i])
     return i;
    }
    return -1;
}
function sprintf () {
    if ((arguments.length >= 1) && (typeof arguments[0] == "string")) {
 var narg = 1;
 var format = arguments[0];
 var res = "";
 var i = 0;
 while (i < format.length) {
     if (format[i] == '%') {
  i++;
  if (i >= format.length) {
      throw new Error ("printf: bad format");
  } else {
      if (format[i] == '%') {
   res += "%";
   i++;
   break;
      } else {
   var pad = ' ';
   if (!is_in(format[i], ['d','f','x','X','r'])) {
       pad = format[i++];
       if (i >= format.length)
    throw new Error ("printf: bad format");
   }
   var len = 0;
   var nums = ['0','1','2','3','4','5','6','7','8','9'];
   while (is_in(format[i], nums)) {
       len = len * 10 + index_in (format[i++], nums);
       if (i >= format.length)
    throw new Error ("printf: bad format");
   }
   if (narg >= arguments.length)
       throw new Error ("printf: bad format");
   var fmt;
   switch (format[i++]) {
   case 'r': {
       var m = 10;
       if (i < format.length) {
    if (format[i] == '{')
        i++;
    if (i >= format.length)
        throw new Error ("printf: bad format");
    while (format[i] != '}') {
        m = m * 10 + index_in (format[i++], nums);
        if (i >= format.length)
     throw new Error ("printf: bad format");
    }
       }
       fmt = repr (arguments[narg++], m);
       break;
   }
   case 'd' :
   case 'f' :
       fmt =
    Number (arguments[narg++])
       .toString (10);
       break;
   case 'x':
       fmt =
    Number (arguments[narg++])
       .toString (16).toUpperCase ();
       break;
   case 'X':
       fmt=
    Number (arguments[narg++])
       .toString (16).toUpperCase ();
       break;
   default :
       throw new Error ("printf: bad format");
   }
   for (var j = 0;j < len - fmt.length;j++)
       res += pad;
   res += fmt;
      }
  }
     } else {
  res += format[i++];
     }
 }
    } else {
 throw new Error ("printf: bad format");
    }
    return res;
}
function char_from_event (e) {
    if (e.charCode)
 return e.charCode;
    var c = e.keyCode;
    if (e.shiftKey)
 return e.keyCode;
    if (e.keyCode >= e.DOM_VK_A && e.keyCode <= e.DOM_VK_Z)
 return e.keyCode + ("a".charCodeAt(0) - "A".charCodeAt(0));
}
function set_cookie ( name, value) {
    document.cookie = name + "=" + escape (value);
}
function get_cookie (name) {
    if (document.cookie) {
        var i = document.cookie.indexOf(name);
        if ( i != -1) {
            var s = (document.cookie.indexOf( "=", i) + 1);
            var e = document.cookie.indexOf( ";", i);
            if (e == -1) e = document.cookie.length;
            return unescape(document.cookie.slice(s, e));
        }
    }
    return null;
}
function http_get (url, error) {
    var xmlhttp=false;
    if (ie) {
        try {
     xmlhttp = new ActiveXObject("Msxml2.XMLHTTP");
        } catch (e) {
     try {
  xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
     } catch (E) {
  throw new Error ("Unsupported Internet Explorer");
     }
        }
    } else {
 if (typeof XMLHttpRequest != 'undefined')
     xmlhttp = new XMLHttpRequest();
 else
     throw new Error ("Unsupported Browser");
    }
    try {
 xmlhttp.open("GET", url, false);
 xmlhttp.send(null);
    } catch (e) {
 throw new Error ("unable to load file " + url + ": " + e.message);
    }
    return xmlhttp.responseText;
}
function uudecode (s) {
    var out = new Array ();
    var n = 0;
    var as = s.split ("\n");
    for (var i = 1;i < as.length;i++) {
 if (as[i].length > 1 && as[i] != "end") {
     var len = as[i].charCodeAt(0) - 0x20;
     var k = 0;
     for (var j = 0;j < len / 3;j++) {
  var b0 = as[i].charCodeAt(1 + j * 4 + 0),
      b1 = as[i].charCodeAt(1 + j * 4 + 1),
      b2 = as[i].charCodeAt(1 + j * 4 + 2),
      b3 = as[i].charCodeAt(1 + j * 4 + 3);
  if (k++ < len) out[n++] =
      (((b0 - 0x20) & 0x3F) << 2 & 0xFC)
      | (((b1 - 0x20) & 0x3F) >> 4 & 0x03);
  if (k++ < len) out[n++] =
      (((b1 - 0x20) & 0x3F) << 4 & 0xF0)
      | (((b2 - 0x20) & 0x3F) >> 2 & 0x0F);
  if (k++ < len) out[n++] =
      (((b2 - 0x20) & 0x3F) << 6 & 0xC0)
      | ((b3 - 0x20) & 0x3F);
     }
 }
    }
    return out;
}
function ult (a,b) {
    return ((a >= 0) ? ((b < 0) || (a < b)) : ((b < 0) && (a > b)));
}
function Block(size, tag) {
    this.size = size;
    this.tag = tag;
    this.content = [];
    this.offset = 0;
}
Block.prototype.get = function (i) {
    return this.content[this.offset + i];
}
Block.prototype.set = function (i, v) {
    this.content[this.offset + i] = v;
}
Block.prototype.shift = function (o) {
    var nsize = this.size - o >= 0 ? this.size - o : 0;
    var b = new Block (nsize, this.tag);
    b.content = this.content;
    b.offset = this.offset + o;
    return b;
}
var ATOM = (new Block (0, 0));
function pair (v0, v1) {
    var b = new Block (2, 0);
    b.set (0, v0);
    b.set (1, v1);
    return b;
}
function singleton (v0) {
    var b = new Block (1, 0);
    b.set (0, v0);
    return b;
}
function box_abstract (v0) {
    var b = new Block (1, 251);
    b.set (0, v0);
    return b;
}
var nil = 0;
var cons = pair;
function float_of_int (x) {
    var b = new Block (1, 253);
    b.set (0, Number (x));
    return b;
}
function box_float (x) {
    var b = new Block (1, 253);
    b.set (0, Number (x));
    return b;
}
function float_of_bytes (bytes) {
    var sign = ((bytes[0] >> 7) == 1);
    var exponent = (((bytes[0] & 0x7F) << 4) | (bytes[1] >> 4 )) - 1023;
    var ba = [];
    for (var b = 1;b < 8;b++)
 for (var d = 0;d < 8;d++)
     ba[(b - 1) * 8 + d - 4] = (((bytes[b] >> (7 - d)) & 1) == 1);
    var m = Number (1);
    for (var i = 0;i < 52;i++)
 if (ba[i])
     m += Math.pow (2, -(i + 1));
    return box_float ((sign ? (-1) : 1) * m * Math.pow (2, exponent));
}
function bytes_of_float (x) {
    var x = x.get (0);
    var e = Math.ceil (Math.log (Math.abs (x)) / Math.log (2));
    var m = Math.abs (x * Math.pow (2, -e)) * 2 - 1;
    e += 1022;
    var bits = [];
    bits[0] = (x > 0);
    for (var i = 0;i <= 52 ; i++) {
 bits [11 + i] = (m >= 1);
 m = (m - Math.floor (m)) * 2;
    }
    for (var i = 0;i <= 10 ; i++) {
 bits [11 - i] = (((e >>> i) & 1) == 1);
    }
    var bytes = [0,0,0,0,0,0,0,0];
    for (var i = 0;i < 8 ; i++) {
 for (var j = 0;j < 8 ; j++) {
     bytes[i] = (bytes[i] * 2) | (bits[8 * i + j] ? 1 : 0);
 }
    }
    return bytes;
}
function encode_utf8 (s) {
    var v = (new Block (0, 252));
    var vi = 0;
    for (var i = 0; i < s.length; i++) {
 var c = s.charCodeAt (i);
 if (c < 0x80) {
     v.size++;
     v.set (vi++, c);
 } else {
     if(c < 0x800) {
  v.size += 2;
  v.set (vi++, (c >> 0x06) | 0xC0);
  v.set (vi++, (c & 0x3F) | 0x80);
     } else {
  v.set (vi++, (c >> 12) | 0xE0);
  v.set (vi++, ((c >> 6) & 0x3F) | 0x80);
  v.set (vi++, (c & 0x3F) | 0x80);
     }
 }
    }
    v.size++;
    v.set (vi, 0);
    return v;
}
function decode_utf8 (v) {
    var s = "";
    for (var i = 0;i < v.size - 1;) {
 var c1 = v.get (i++);
 if (c1 < 0x80) {
     s += String.fromCharCode(c1);
 } else {
     if((c1 >= 0xC0) && (c1 < 0xE0)) {
  var c2 = v.get (i++);
  s += String.fromCharCode (((c1 & 0x1F) << 6) | (c2 & 0x3F));
     } else {
  var c2 = v.get (i++);
  var c3 = v.get (i++);
  s += String.fromCharCode(((c1 & 0xF) << 12) | ((c2 & 0x3F) << 6) | (c3 & 0x3F));
     }
 }
    }
    return s;
}
var utf8_enabled = 1;
caml_js_enable_utf8 = function (v) {
    utf8_enabled = v;
    return 0;
}
caml_js_utf8_enabled = function () {
    return utf8_enabled;
}
function value_from_string (s) {
    if (utf8_enabled == 0) {
 var b = (new Block (s.length + 1, 252));
 for (var i = 0;i < s.length;i++) {
     b.set(i,s.charCodeAt (i));
 }
 b.set(i, 0);
 return b;
    } else {
 return encode_utf8 (s);
    }
}
function string_from_value (v) {
    if (utf8_enabled == 0) {
 var s = "";
 for (var i = 0;i < v.size - 1;i++) {
     s += String.fromCharCode (v.get (i));
 }
 return s;
    } else {
 return decode_utf8 (v);
    }
}
function string_array (a) {
    var b = new Block (a.length);
    for (var i = 0;i < a.length;i++)
 b.set (i, value_from_string (a[i]));
    return b;
}
function mk_array_from_js (s) {
    var b = (new Block (s.length, 0));
    for (var i = 0;i < s.length;i++) {
 b.set(i,s[i]);
    }
    return b;
}
function repr (v, limit) {
    var s = "";
    function string_repr_rec (v) {
 if ((!(v instanceof Block))) {
     s += sprintf ("0x%X", v);
 } else {
     switch (v.tag) {
     case 252:
  s += "\"" + string_from_value (v) + "\"";
  break;
     case 253:
  s += v.get (0).toExponential ();
  break;
     default: {
  s += sprintf ("[(0x%02X) ", v.tag);
  for (var i = 0;i < v.size - 1 && i < limit;i++) {
      string_repr_rec (v.get (i));
      s += ", ";
  }
  if (i >= limit) {
      s += "...";
  } else {
      string_repr_rec (v.get (i));
  }
  s += "]";
     }
     }
 }
    }
    string_repr_rec (v);
    return s;
}
var customs = new Array ();
function register_custom (ops) {
    customs[ops.id] = ops;
}
function find_custom (id) {
    return customs[id];
}
function mk_custom (ops, val) {
    var b = new Block (2, 255);
    b.set (0, ops);
    b.set (1, val);
    return b;
}
int32_ops = {
    id : "_i",
    compare : function (a,b) {
 return (a - b);
    },
    hash : function (a) {
 return a;
    },
    serialize : function (writer) {
 throw new Error ("int32 not supported yet");
    },
    deserialize : function (reader) {
 return mk_custom (int32_ops, reader.read32u ());
    }
};
register_custom (int32_ops);
function caml_int32_neg (a) {
    var a = a.get (1);
    return mk_custom (int32_ops, -a);
}
function caml_int32_add (va,vb) {
    var a = va.get (1);
    var b = vb.get (1) ;
    return mk_custom (int32_ops, a + b);
}
function caml_int32_sub (a,b) {
    var a = a.get (1);
    var b = b.get (1) ;
    return mk_custom (int32_ops, a - b);
}
function caml_int32_mul (a,b) {
    var a = a.get (1);
    var b = b.get (1) ;
    return mk_custom (int32_ops, a * b);
}
function caml_int32_div (a,b) {
    var a = a.get (1);
    var b = b.get (1) ;
    return mk_custom (int32_ops, a / b);
}
function caml_int32_mod (a,b) {
    var a = a.get (1);
    var b = b.get (1) ;
    return mk_custom (int32_ops, a % b);
}
function caml_int32_and (a,b) {
    var a = a.get (1);
    var b = b.get (1) ;
    return mk_custom (int32_ops, a & b);
}
function caml_int32_or (a,b) {
    var a = a.get (1);
    var b = b.get (1) ;
    return mk_custom (int32_ops, a | b);
}
function caml_int32_xor (a,b) {
    var a = a.get (1);
    var b = b.get (1) ;
    return mk_custom (int32_ops, a ^ b);
}
function caml_int32_lsl (a,b) {
    var a = a.get (1);
    return mk_custom (int32_ops, a << b);
}
function caml_int32_asr (a,b) {
    var a = a.get (1);
    return mk_custom (int32_ops, a >> b);
}
function caml_int32_lsr (a,b) {
    var a = a.get (1);
    return mk_custom (int32_ops, a >>> b);
}
function caml_int32_of_int (a) {
    return mk_custom (int32_ops, a);
}
function caml_int32_to_int (a) {
    return a.get (1);
}
function caml_int32_format (f, v) {
    return caml_format_int.call (this, f, v.get (1));
}
function caml_int32_of_string (s) {
    return mk_custom (int32_ops, caml_int_of_string.call (this, s));
}
nativeint_ops = {
    id : "_n",
    compare : function (a,b) {
 return (a - b);
    },
    hash : function (a) {
 return a;
    },
    serialize : function (writer) {
 throw new Error ("nativeint not supported yet");
    },
    deserialize : function (reader) {
 var l = reader.read8u ();
 if (l == 1)
     return mk_custom (nativeint_ops, reader.read32u ());
 else
     throw new Error ("> 32 bits native int not supported yet");
    }
};
register_custom (nativeint_ops);
function caml_nativeint_shift_left (x, s) {
    return (x << s);
}
function caml_nativeint_sub (a,b) {
    return (a - b);
}
function Int64 () {}
function int64_compare (a, b) {
    var t = int64_sub (a, b).get (1).t;
    var is_zero = true;
    for (var i = 0;i < 8;i++)
 if (t[i] != 0) is_zero = false;
    if (is_zero)
 return 0;
    return (((t[0] >> 7) == 1) ? -1 : 1);
}
function int64_add (a, b) {
    a = a.get (1);
    b = b.get (1);
    var r = new Int64 ();
    r.t = [];
    var carry = 0;
    for (var i = 0;i < 8;i++) {
 r.t[i] = a.t[i] + b.t[i] + carry;
 carry = r.t[i] >> 8;
 r.t[i] &= 0xFF;
    }
    return mk_custom (int64_ops, r);
}
function int64_neg (a) {
    a = a.get (1);
    var r = new Int64 ();
    r.t = [];
    for (var i = 0;i < 8;i++)
 r.t[i] = a.t[i] ^ 0xFF;
    var carry = 1;
    for (var i = 0;i < 8;i++) {
 r.t[i] = a.t[i] +carry;
 carry = r.t[i] >> 8;
 r.t[i] &= 0xFF;
    }
    return mk_custom (int64_ops, r);
}
function int64_sub (a, b) {
    return int64_add (a, int64_neg (b));
}
function int64_of_int (x) {
    var r = new Int64 ();
    r.t = [];
    for (var i = 0;i < INTEGER_SIZE / 8;i++)
 r.t[7 - i] = (x >> (i * 8)) & 0xFF;
    if (x >> (INTEGER_SIZE - 1) == 1)
 for (var i = INTEGER_SIZE / 8 - 1;i < 8;i++)
     r.t[7 - i] = 0xFF;
    return mk_custom (int64_ops, r);
}
function int64_of_bytes (bytes) {
    var r = new Int64 ();
    r.t = [];
    for (var i = 0;i < 8;i++)
 r.t[i] = bytes[i];
    return mk_custom (int64_ops, r);
}
function int64_of_bytes_le (bytes) {
    var r = new Int64 ();
    r.t = [];
    for (var i = 0;i < 8;i++)
 r.t[i] = bytes[7 - i];
    return mk_custom (int64_ops, r);
}
function int64_to_bytes (a) {
    return a.get (1).t;
}
int64_ops = {
    id : "_j",
    compare : function (a,b) {
 int64_compare (a, b);
    },
    hash : function (a) {
 return 0;
    },
    serialize : function (v, writer) {
 var t = int64_to_bytes (v.get (1));
 for (var j = 0;j < 8;j++)
     writer.write (8, t[j]);
 writer.size_32 += 2 + ((8 + 3) >> 2);
 writer.size_64 += 2 + ((8 + 7) >> 3);
    },
    deserialize : function (reader) {
 var t = [];
 for (var j = 0;j < 8;j++)
     t[j] = reader.read8u();
 return int64_of_bytes (t);
    }
};
register_custom (int64_ops);
var INTEXT_MAGIC_NUMBER = 0x8495A6BE, PREFIX_SMALL_BLOCK = 0x80,
    PREFIX_SMALL_INT = 0x40, PREFIX_SMALL_STRING = 0x20;
var CODE_INT8 = 0x00, CODE_INT16 = 0x01,
    CODE_INT32 = 0x02, CODE_INT64 = 0x03,
    CODE_SHARED8 = 0x04, CODE_SHARED16 = 0x05,
    CODE_SHARED32 = 0x06, CODE_BLOCK32 = 0x08,
    CODE_BLOCK64 = 0x13, CODE_STRING8 = 0x09,
    CODE_STRING32 = 0x0A, CODE_DOUBLE_BIG = 0x0B,
    CODE_DOUBLE_LITTLE = 0x0C, CODE_DOUBLE_ARRAY8_BIG = 0x0D,
    CODE_DOUBLE_ARRAY8_LITTLE = 0x0E, CODE_DOUBLE_ARRAY32_BIG = 0x0F,
    CODE_DOUBLE_ARRAY32_LITTLE = 0x07, CODE_CODEPOINTER = 0x10,
    CODE_INFIXPOINTER = 0x11, CODE_CUSTOM = 0x12;
function Reader (chunk) {
    this.chunk = chunk;
    this.chunk_idx = 0;
}
Reader.prototype.read8u = function () {
    return this.chunk[this.chunk_idx++];
}
Reader.prototype.read8s = function () {
    var r = this.chunk[this.chunk_idx++];
    if (r & 0x80)
 return r - 256;
    else
 return r;
}
Reader.prototype.read16u = function () {
    var r = this.chunk[this.chunk_idx++];
    r = (r << 8) | this.chunk[this.chunk_idx++];
    return r;
}
Reader.prototype.read16s = function () {
    var r = this.chunk[this.chunk_idx++];
    r = (r << 8) | this.chunk[this.chunk_idx++];
    if (r & 0x8000)
 return r - 65536;
    else
 return r;
}
Reader.prototype.read32u = function () {
    var r = this.chunk[this.chunk_idx++];
    r = (r << 8) | this.chunk[this.chunk_idx++];
    r = (r << 8) | this.chunk[this.chunk_idx++];
    r = (r << 8) | this.chunk[this.chunk_idx++];
    return ((r) & (-1));
}
Reader.prototype.read32s = function () {
    var r = this.chunk[this.chunk_idx++];
    r = (r << 8) | this.chunk[this.chunk_idx++];
    r = (r << 8) | this.chunk[this.chunk_idx++];
    r = (r << 8) | this.chunk[this.chunk_idx++];
    return ((r) & (-1));
}
function input_size (chunk, error) {
    var reader = new Reader (chunk);
    if (reader.read8u () != 0x84
 || reader.read8u () != 0x95
 || reader.read8u () != 0xA6
 || reader.read8u () != 0xBE){
 error ("ill-formed message (bad magic)");
    }
    var block_len = reader.read32u ();
    return block_len;
}
function input_val (chunk, error) {
    var reader = new Reader (chunk);
    if (reader.read8u () != 0x84
 || reader.read8u () != 0x95
 || reader.read8u () != 0xA6
 || reader.read8u () != 0xBE){
 error ("ill-formed message (bad magic)");
    }
    var block_len = reader.read32u ();
    var num_objects = reader.read32u ();
    var size_32 = reader.read32u ();
    var size_64 = reader.read32u ();
    var intern_obj_table = [];
    var obj_counter = 0;
    function intern_rec () {
 var code = reader.read8u ();
 if (code >= PREFIX_SMALL_INT) {
     if (code >= PREFIX_SMALL_BLOCK) {
  var tag = code & 0xF;
  var size = (code >> 4) & 0x7;
  var v = (new Block (size, tag));
  intern_obj_table[obj_counter++] = v;
  for(var d = 0; d < size; d++)
      v.set (d, intern_rec ());
  return v;
     } else {
  return (code & 0x3F);
     }
 } else {
     if (code >= PREFIX_SMALL_STRING) {
  var len = (code & 0x1F);
  var v = (new Block (len + 1, 252));
  intern_obj_table[obj_counter++] = v;
  for (var d = 0;d < len;d++) {
      v.set (d, reader.read8u ());
  }
  v.set (len, 0);
  return v;
     } else {
  switch(code) {
  case CODE_INT8:
      return reader.read8s ();
  case CODE_INT16:
      return reader.read16s ();
  case CODE_INT32:
      return reader.read32s ();
  case CODE_INT64:
      var t = [];
      for (var j = 0;j < 8;j++)
   t[j] = reader.read8u();
      return int64_of_bytes (t);
  case CODE_SHARED8: {
      var ofs = reader.read8u ();
      return intern_obj_table[obj_counter - ofs];
  }
  case CODE_SHARED16: {
      var ofs = reader.read16u ();
      return intern_obj_table[obj_counter - ofs];
  }
  case CODE_SHARED32: {
      var ofs = reader.read32u ();
      return intern_obj_table[obj_counter - ofs];
  }
  case CODE_BLOCK32: {
      var header = reader.read32u ();
      var tag = header & 0xFF;
      var size = header >> 10;
      var v = (new Block (size, tag));
      intern_obj_table[obj_counter++] = v;
      for(var d = 0; d < size; d++)
   v.set (d, intern_rec ());
      return v;
  }
  case CODE_BLOCK64:
      error ("data block too large");
      break;
  case CODE_STRING8: {
      var len = reader.read8u();
      var v = (new Block (len + 1, 252));
      intern_obj_table[obj_counter++] = v;
      for (var d = 0;d < len;d++) {
   v.set (d, reader.read8u ());
      }
      v.set (len, 0);
      return v;
  }
  case CODE_STRING32: {
      var len = reader.read32u();
      var v = (new Block (len + 1, 252));
      intern_obj_table[obj_counter++] = v;
      for (var d = 0;d < len;d++) {
   v.set (d, reader.read8u ());
      }
      v.set (len, 0);
      return v;
  }
  case CODE_DOUBLE_LITTLE: {
      var t = [];
      for (var i = 0;i < 8;i++)
   t[7 - i] = reader.read8u();
      return float_of_bytes (t);
  }
  case CODE_DOUBLE_BIG: {
      var t = [];
      for (var i = 0;i < 8;i++)
   t[i] = reader.read8u();
      return float_of_bytes (t);
  }
  case CODE_DOUBLE_ARRAY8_LITTLE: {
      var len = reader.read8u();
      var v = (new Block (len, 254));
      for (var i = 0;i < len;i++) {
   var t = [];
   for (var j = 0;j < 8;j++)
       t[7 - j] = reader.read8u();
   v.set (i, float_of_bytes (t).get (0));
      }
      return v;
  }
  case CODE_DOUBLE_ARRAY8_BIG: {
      var len = reader.read8u();
      var v = (new Block (len, 254));
      for (var i = 0;i < len;i++) {
   var t = [];
   for (var j = 0;j < 8;j++)
       t[j] = reader.read8u();
   v.set (i, float_of_bytes (t).get (0));
      }
      return v;
  }
  case CODE_DOUBLE_ARRAY32_LITTLE: {
      var len = reader.read32u();
      var v = (new Block (len, 254));
      for (var i = 0;i < len;i++) {
   var t = [];
   for (var j = 0;j < 8;j++)
       t[7 - j] = reader.read8u();
   v.set (i, float_of_bytes (t).get (0));
      }
      return v;
  }
  case CODE_DOUBLE_ARRAY32_BIG: {
      var len = reader.read32u();
      var v = (new Block (len, 254));
      for (var i = 0;i < len;i++) {
   var t = [];
   for (var j = 0;j < 8;j++)
       t[j] = reader.read8u();
   v.set (i, float_of_bytes (t).get (0));
      }
      return v;
  }
  case CODE_CODEPOINTER:
      return reader.read32u ();
  case CODE_INFIXPOINTER: {
      var ofs = reader.read32u ();
      var clos = intern_rec ();
      return clos.shift (ofs);
  }
  case CODE_CUSTOM: {
      var s = "";
      var si = reader.read8u ();
      while (si != 0) {
   s += String.fromCharCode (si);
   si = reader.read8u ();
      }
      var c = find_custom (s);
      if (!c)
   error ("unknown custom identifier " + s);
      else
   return c.deserialize (reader);
  }
  default:
      error ("ill-formed message (" + code + ")");
  }
     }
 }
    }
    var v = intern_rec ();
    return v;
}
caml_input_value_from_string = function (s, ofs) {
    var vm = this;
    function caml_failwith (s) {vm.failwith (s);};
    return input_val (s.content.slice (s.offset + ofs, s.size),caml_failwith);
}
caml_marshal_data_size = function (s, ofs) {
    var vm = this;
    function caml_failwith (s) {vm.failwith (s);};
    return input_size (s.content.slice (s.offset + ofs, s.size),caml_failwith);
}
function Writer () {
    this.chunk = [];
    this.chunk_idx = 20;
    this.block_len = 0;
    this.obj_counter = 0;
    this.size_32 = 0;
    this.size_64 = 0;
}
Writer.prototype.write = function (size, value) {
    for (var i = size - 8;i >= 0;i -= 8)
 this.chunk[this.chunk_idx++] = (value >> i) & 0xFF;
}
Writer.prototype.write_code = function (size, code, value) {
    this.chunk[this.chunk_idx++] = code;
    for (var i = size - 8;i >= 0;i -= 8)
 this.chunk[this.chunk_idx++] = (value >> i) & 0xFF;
}
Writer.prototype.finalize = function () {
    this.block_len = this.chunk_idx - 20;
    this.chunk_idx = 0;
    this.write (32, 0x8495A6BE);
    this.write (32, this.block_len);
    this.write (32, this.obj_counter);
    this.write (32, this.size_32);
    this.write (32, this.size_64);
    return this.chunk;
}
function output_val (v, error) {
    var writer = new Writer ()
    function extern_rec (v) {
 if ((!(v instanceof Block))) {
     if (v >= 0 && v < 0x40) {
  writer.write (8, PREFIX_SMALL_INT + v);
     } else {
  if (v >= -(1 << 7) && v < (1 << 7)) {
      writer.write_code(8, CODE_INT8, v);
  } else {
      if (v >= -(1 << 15) && v < (1 << 15)) {
   writer.write_code(16, CODE_INT16, v);
      } else {
   writer.write_code(32, CODE_INT32, v);
      }
  }
     }
 } else {
     if (v.size == 0) {
  if (v.tag < 16)
      writer.write (8, PREFIX_SMALL_BLOCK + v.tag);
  else
      writer.write_code (32, CODE_BLOCK32, (((v).size << 10) | (v).tag));
  return;
     }
     if (v.dejavu) {
  var d = writer.obj_counter - v.dejavu_location;
  if (d < 0x100) {
      writer.write_code (8, CODE_SHARED8, d);
  } else {
      if (d < 0x10000) {
   writer.write_code (16, CODE_SHARED16, d);
      } else {
   writer.write_code (32, CODE_SHARED32, d);
      }
  }
  return;
     }
     switch(v.tag) {
     case 252: {
  var len = v.size - 1;
  if (len < 0x20) {
      writer.write (8, PREFIX_SMALL_STRING + len);
  } else if (len < 0x100) {
      writer.write_code (8, CODE_STRING8, len);
  } else {
      writer.write_code (32, CODE_STRING32, len);
  }
  for (var i = 0;i < len;i++)
      writer.write (8, v.get (i));
  writer.size_32 += 1 + (len + 4) / 4;
  writer.size_64 += 1 + (len + 8) / 8;
  v.dejavu = true;
  v.dejavu_location = writer.obj_counter++;
  break;
     }
     case 253: {
  writer.write (8, CODE_DOUBLE_BIG);
  var bytes = bytes_of_float (v);
  for (var i = 0;i < 8;i++)
      writer.write (8, bytes[i]);
  writer.size_32 += 1 + 2;
  writer.size_64 += 1 + 1;
  v.dejavu = true;
  v.dejavu_location = writer.obj_counter++;
  break;
     }
     case 254: {
  if (v.size < 0x100)
      writer.write_code (8, CODE_DOUBLE_ARRAY8_BIG, v.size);
  else
      writer.write_code (32, CODE_DOUBLE_ARRAY8_BIG, v.size);
  for (var j = 0;j < v.size;j++) {
      var bytes = bytes_of_float (v.get (j));
      for (var i = 0;i < 8;i++)
   writer.write (8, bytes[i]);
  }
  writer.size_32 += 1 + nfloats * 2;
  writer.size_64 += 1 + nfloats;
  v.dejavu = true;
  v.dejavu_location = writer.obj_counter++;
  break;
     }
     case 251:
  caml_invalid_arg("output_value: abstract value (Abstract)");
  break;
     case 249:
  writer.write_code (32, CODE_INFIXPOINTER, v.offset);
  extern_rec(v.shift (- v.offset));
  break;
     case 255: {
  var sz_32, sz_64;
  if (v.get (0).serialize == null)
      invalid_arg ("output_value: abstract value (Custom)");
  writer.write(8, CODE_CUSTOM);
  for (var i = 0;i < v.get (0).id.length;i++)
      writer.write(8, v.get (0).id.charCodeAt (i));
  writer.write(8, 0);
  v.get (0).serialize(v, writer);
  v.dejavu = true;
  v.dejavu_location = writer.obj_counter++;
  break;
     }
     default: {
  if (v.tag < 16 && v.size < 8) {
      writer.write (8, PREFIX_SMALL_BLOCK + v.tag + (v.size<<4));
  } else {
      writer.write_code(32, CODE_BLOCK32, (((v).size << 10) | (v).tag));
  }
  writer.size_32 += 1 + v.size ;
  writer.size_64 += 1 + v.size ;
  v.dejavu = true;
  v.dejavu_location = writer.obj_counter++;
  for (i = 0; i < v.size; i++) {
      extern_rec (v.get (i));
  }
     }
     }
 }
    }
    extern_rec (v);
    writer.finalize ();
    return writer.chunk;
}
function caml_output_value_to_string (v, fl) {
    var vm = this;
    function caml_failwith (s) {vm.failwith (s);};
    var t = output_val (v, caml_failwith);
    var b = (new Block (t.length + 1, 252));
    for (var i = 0;i < t.length;i++) {
 (b).set(i,t[i]);
    }
    (b).set(t.length,0);
    return b;
}
function caml_output_value_to_buffer (s, ofs, len, v, fl) {
    var vm = this;
    function caml_failwith (s) {vm.failwith (s);};
    var t = output_val (v, caml_failwith);
    for (var i = 0;i < t.length;i++) {
 s.set (ofs + i, t[i]);
    }
    return t.length;
}
function caml_is_printable (c) {
    return (c >= 0x20?1:0);
}
function caml_fill_string (s, st, len, c) {
    for (var i = 0;i < len;i++)
 s.set (st + i, c);
    return 0;
}
function caml_create_string (len) {
    var b = (new Block (len + 1, 252));
    for (var i = 0;i <= len;i++)
 b.set (i, 0);
    return b;
}
function caml_blit_string (s1, ofs1, s2, ofs2, n) {
    for (var i = 0;i < n;i++) {
 s2.set (ofs2 + i, s1.get (ofs1 + i));
    }
    return 0;
}
function caml_string_get (arr, idx) {
    if (idx >= 0 && idx < arr.size - 1) {
 return arr.get(idx);
    }
    this.array_bound_error ();
}
function caml_string_unsafe_get (arr, idx) {
    return arr.get(idx);
}
function caml_string_set (arr, idx, val) {
    if (idx >= 0 && idx < arr.size - 1) {
 arr.set(idx,val);
 return 0;
    }
    this.array_bound_error ();
}
function caml_string_unsafe_set (arr, idx, val) {
    arr.set(idx,val);
    return 0;
}
function caml_ml_string_length (s) {
    return (s.size - 1);
}
caml_array_get =
caml_array_get_addr =
caml_array_get_float = function (arr, idx) {
    if (idx >= 0 && idx < arr.size) {
 return arr.get(idx);
    }
    this.array_bound_error ();
}
caml_array_set =
caml_array_set_addr =
caml_array_set_float = function (arr, idx, val) {
    if (idx >= 0 && idx < arr.size) {
 arr.set(idx,val);
 return 0;
    }
    this.array_bound_error ();
}
caml_array_unsafe_get =
caml_array_unsafe_get_addr =
caml_array_unsafe_get_float = function (arr, idx) {
    return arr.get(idx);
}
caml_array_unsafe_set =
caml_array_unsafe_set_addr =
caml_array_unsafe_set_float = function (arr, idx, val) {
    arr.set(idx,val);
    return 0;
}
caml_make_vect = function (len, init) {
    var b = (new Block (len, 0));
    for (var i = 0;i < len;i++) {
 b.set(i,init);
    }
    return b;
}
caml_make_array = function (init) {
    var b = (new Block (init.size, 0));
    for (var i = 0;i < init.size;i++) {
 b.set(i,init.get (i));
    }
    return b;
}
caml_string_compare =
caml_compare = function (a,b) {
    if (a == b) return 0;
    if (!(a instanceof Block)) {
 if ((b instanceof Block)) {
     if (b.tag == 250)
  return caml_compare (a, b.get(0));
     return -1;
 }
 return a - b;
    }
    if (!(b instanceof Block)) {
 if (a.tag == 250)
     return caml_compare (a.get(0), b);
 return 1;
    }
    if (a.tag == 247 || a.tag == 249)
 this.raise_with_string (INVALID_EXN, "equal: functional value");
    if (a.tag != b.tag)
 return a.tag - b.tag;
    if (a.tag == 255)
 return a.get (0).compare (a, b);
    if (a.tag == 253) {
 a = a.get (0);
 b = b.get (0);
 if (a == b) return 0;
 return ((a < b) ? -1 : 1);
    }
    if (a.size != b.size)
 return a.size - b.size;
    for (var i = 0;i < a.size;i++) {
 t = caml_compare (a.get(i), b.get(i));
 if (t != 0) return t;
    }
    return 0;
}
function caml_equal (a, b) {
    return (caml_compare (a,b) == 0?1:0);
}
function caml_notequal (a, b) {
    return (caml_compare (a,b) != 0?1:0);
}
function caml_string_equal (a, b) {
    return (caml_compare (a,b) == 0?1:0);
}
function caml_string_notequal (a, b) {
    return (caml_compare (a,b) != 0?1:0);
}
caml_lessthan =
caml_lt_float = function (a, b) {
    return (caml_compare (a,b) < 0?1:0);
}
caml_lessequal =
caml_le_float = function (a, b) {
    return (caml_compare (a,b) <= 0?1:0);
}
caml_greaterthan =
caml_gt_float = function (a, b) {
    return (caml_compare (a,b) > 0?1:0);
}
caml_greaterequal =
caml_ge_float = function (a, b) {
    return (caml_compare (a,b) >= 0?1:0);
}
caml_eq_float = function (a, b) {
    return (caml_compare (a,b) == 0?1:0);
}
function caml_hash_univ_param (count, limit, obj) {
    hash_univ_limit = limit;
    hash_univ_count = count;
    hash_accu = 0;
    hash_aux (obj);
    return (hash_accu & 0x3FFFFFFF);
}
function hash_aux(obj){
    hash_univ_limit--;
    if (hash_univ_count < 0 || hash_univ_limit < 0) return;
    if ((!(obj instanceof Block))) {
 hash_univ_count--;
 (hash_accu = hash_accu * 65599 + (obj));
 return;
    }
    switch (obj.tag) {
    case 252: {
 hash_univ_count--;
 for (var p = 0;p < obj.size - 1; p++)
            (hash_accu = hash_accu * 19 + (obj.get (p)));
 break;
    }
    case 253: {
 hash_univ_count--;
 var bytes = bytes_of_float (obj.get (0));
 for (var p = 7; p >= 0; p--)
            (hash_accu = hash_accu * 19 + (bytes[p]));
 break;
    }
    case 254: {
 hash_univ_count--;
 for (var j = 0; j < obj.size; j++) {
     var bytes = bytes_of_float (obj.get (j).get (0));
 for (var p = 7; p >= 0; p--)
            (hash_accu = hash_accu * 19 + (bytes[p]));
 }
 break;
    }
    case 251:
      break;
    case 249:
 hash_aux(obj.shift (-obj.offset));
      break;
    case 250:
 hash_univ_limit++;
 hash_aux (obj.get (0));
 break;
    case 248:
 hash_univ_count--;
 (hash_accu = hash_accu * 65599 + (obj.get (1)));
 break;
    case 255:
 if (obj.get (0).hash != null) {
            hash_univ_count--;
            (hash_accu = hash_accu * 65599 + (obj.get (0).hash (obj)));
 }
 break;
    default: {
 hash_univ_count--;
 (hash_accu = hash_accu * 19 + (obj.tag));
 var i = obj.size;
 while (i != 0) {
            i--;
            hash_aux(obj.get (i));
 }
 break;
    }
    }
    return;
}
function caml_format_int (fmt, x) {
    var fmt = string_from_value (fmt);
    var t = fmt[fmt.length - 1];
    var n = Number (x).toString (t == 'd' ? 10 : (t == 'o' ? 8 : (t == 'x' ? 16 : 10 )));
    var l = 0, c = '0';
    if (fmt.length == 3) {
 l = fmt.charCodeAt (1) - "0".charCodeAt (0);
    } else {
 if (fmt.length >= 4) {
     c = fmt.charAt(1);
     for (var i = 2;i <= fmt.length - 2;i++)
  l = l * 10 + (fmt.charCodeAt (i) - "0".charCodeAt (0));
 }
    }
    var rem = l - n.length;
    for (var i = 0;i < rem;i++)
 n = c + n;
    return value_from_string (n);
}
function caml_format_float (fmt, x) {
    return value_from_string (x.get (0).toString (10));
}
function caml_int_of_string (s) {
    var res = parseInt (string_from_value (s));
    if (isNaN (res)) {
 this.failwith ("int_of_string");
    } else {
 return res ;
    }
}
function caml_float_of_string (s) {
    return box_float (parseFloat (string_from_value (s)));
}
function caml_int_of_float (x) {
    return Math.round (x.get (0));
}
function caml_float_of_int (x) {
    return float_of_int (x);
}
function caml_int64_float_of_bits (i) {
    return float_of_bytes (int64_to_bytes (i));
}
function caml_mul_float (a, b) {
    return box_float (a.get (0) * b.get (0));
}
function caml_div_float (a, b) {
    return box_float (a.get (0) / b.get (0));
}
function caml_neg_float (a) {
    return box_float (- b.get (0));
}
function caml_add_float (a, b) {
    return box_float (a.get (0) + b.get (0));
}
function caml_sub_float (a, b) {
    return box_float (a.get (0) - b.get (0));
}
caml_power_float =
pow = function (a, b) {
    return box_float (Math.pow (a.get (0), b.get (0)));
}
caml_exp_float =
exp = function (a, b) {
    return box_float (Math.exp (a.get (0), b.get (0)));
}
caml_acos_float =
acos = function (x) {
    return box_float (Math.acos (x.get (0)));
}
caml_asin_float =
asin = function (x) {
    return box_float (Math.asin (x.get (0)));
}
caml_atan_float =
atan = function (x) {
    return box_float (Math.atan (x.get (0)));
}
caml_atan2_float =
atan2 = function (a, b) {
    return box_float (Math.atan2 (a.get (0), b.get (0)));
}
caml_cos_float =
cos = function (x) {
    return box_float (Math.cos (x.get (0)));
}
caml_cosh_float =
cosh = function (x) {
    x = x.get (0);
    return box_float ((Math.exp (x) + Math.exp (-x)) / 2);
}
caml_log_float =
log = function (x) {
    return box_float (Math.log (x.get (0)));
}
caml_log10_float =
log10 = function () {
    return box_float (Math.log (x.get (0)) / Math.log (10));
}
caml_sin_float =
sin = function (x) {
    return box_float (Math.sin (x.get (0)));
}
caml_sinh_float =
sinh = function (x) {
    x = x.get (0);
    return box_float ((Math.exp (x) - Math.exp (-x)) / 2);
}
caml_sqrt_float =
sqrt = function (x) {
    return box_float (Math.sqrt (x.get (0)));
}
caml_tan_float =
tan = function (x) {
    return box_float (Math.tan (x.get (0)));
}
caml_tanh_float =
tanh = function (x) {
    return box_float (Math.tanh (x.get (0)));
}
caml_ceil_float =
ceil = function (x) {
    return box_float (Math.ceil (x.get (0)));
}
caml_floor_float =
floor = function (x) {
    return box_float (Math.floor (x.get (0)));
}
var named_values = [];
function caml_register_named_value (vname, val) {
    named_values[string_from_value (vname)] = val;
    return 0;
}
function caml_ensure_stack_capacity (required_space) {
    return 0;
}
function caml_obj_is_block (x) {
    return ((x instanceof Block)?1:0);
}
function caml_obj_is_int (x) {
    return ((!(x instanceof Block))?1:0);
}
function caml_obj_tag (x) {
    return x.tag;
}
function caml_obj_set_tag (x, tag) {
    x.tag = tag;
    return 0;
}
function caml_obj_size (x) {
    return x.size;
}
function caml_obj_field (x, i) {
    return x.get (i);
}
function caml_obj_set_field (x, i, v) {
    x.set (i, v);
    return 0;
}
function caml_obj_block (tag, size) {
    var b = (new Block (size, tag));
    return b;
}
function caml_obj_dup (v) {
    if ((!(v instanceof Block)))
 return v;
    var b = (new Block (v.size, v.tag));
    for (var i = 0;i < v.size;i++)
 b.set (i, v.get (i));
    return b;
}
function caml_obj_truncate (x, size) {
    x.size = size;
    return 0;
}
function caml_ldexp_float (m, e) {
    return box_float (m * Math.pow (2, e.get (0)));
}
function caml_frexp_float (v) {
    var x = v.get (0);
    var e = Math.ceil (Math.log (Math.abs (x)) / Math.log (2));
    return pair (box_float (x * Math.pow (2, -e)), e);
}
caml_alloc_dummy =
caml_alloc_dummy_float = function (size) {
    return (new Block (size, 0));
}
function caml_update_dummy (dummy, newval) {
    for (var i = 0;i < dummy.size;i++) {
 dummy.set (i, newval.get (i));
    }
    return 0;
}
caml_sys_get_argv = function (unit) {
    return pair (this.program_name, this.argv);
}
var init_time = (new Date ()).getTime () * 0.001;
caml_sys_time = function (unit) {
    return box_float ((new Date ()).getTime () * 0.001 - init_time);
}
caml_sys_get_config = function (unit) {
    var b = (new Block (2, 0));
    b.set (0, value_from_string ("Unix"));
    b.set (1, 32);
    return b;
}
caml_sys_getenv = function (v) {0
    caml_raise_constant (NOT_FOUND_EXN);
}
caml_sys_random_seed = function (unit) {
    return Math.floor(Math.random() * Math.pow(2, 31));
}
caml_sys_file_exists = function (name) {
    try {
 http_get ("exists/" + string_from_value (name),
    function (e) {throw e;});
 return 1;
    } catch (e) {
 return 0;
    }
}
caml_sys_is_directory = function () {
  this.failwith ("not implemented in obrowser");
}
caml_sys_remove = function () {
  this.failwith ("not implemented in obrowser");
}
caml_sys_rename = function () {
  this.failwith ("not implemented in obrowser");
}
caml_sys_system_command = function () {
  this.failwith ("not implemented in obrowser");
}
caml_sys_chdir = function () {
  this.failwith ("not implemented in obrowser");
}
caml_sys_getcwd = function () {
  this.failwith ("not implemented in obrowser");
}
caml_sys_read_directory = function () {
  this.failwith ("not implemented in obrowser");
}
caml_install_signal_handler = function () {
  this.failwith ("not implemented in obrowser");
}
function md5 (message) {
    var add = function(x, y) {
 var lsw = (x & 0xFFFF) + (y & 0xFFFF);
 var msw = (x >>> 16) + (y >>> 16) + (lsw >>> 16);
 return (msw << 16) | (lsw & 0xFFFF);
    }
    var rol = function(x, y){
 return (x << y) | (x >>> (32 - y));
    }
    var buffer = [];
    for(var i = 0; i < message.length;i++)
 buffer[i >> 2] |= message[i] << (8 * (i & 3));
    buffer[i >> 2] |= 0x80 << (8 * (i & 3));
    for (i = (i & ~0x3) + 4;(i & 0x3F) < 56 ;i += 4)
 buffer[i >> 2] = 0;
    buffer[i >> 2] = message.length << 3;
    i += 4;
    buffer[i >> 2] = (message.length >> 29) & 0x1FFFFFFF;
    var a = 0x67452301, b = 0xEFCDAB89, c = 0x98BADCFE, d = 0x10325476;
    for(i = 0; i < buffer.length; i += 16) {
 var temp_a = a;
 var temp_b = b;
 var temp_c = c;
 var temp_d = d;
 a = add(rol(add(add(a, (b & c) | ((~b) & d)), add(buffer[i+ 0], 0xD76AA478)), 7),b);
 d = add(rol(add(add(d, (a & b) | ((~a) & c)), add(buffer[i+ 1], 0xE8C7B756)), 12),a);
 c = add(rol(add(add(c, (d & a) | ((~d) & b)), add(buffer[i+ 2], 0x242070DB)), 17),d);
 b = add(rol(add(add(b, (c & d) | ((~c) & a)), add(buffer[i+ 3], 0xC1BDCEEE)), 22),c);
 a = add(rol(add(add(a, (b & c) | ((~b) & d)), add(buffer[i+ 4], 0xF57C0FAF)), 7),b);
 d = add(rol(add(add(d, (a & b) | ((~a) & c)), add(buffer[i+ 5], 0x4787C62A)), 12),a);
 c = add(rol(add(add(c, (d & a) | ((~d) & b)), add(buffer[i+ 6], 0xA8304613)), 17),d);
 b = add(rol(add(add(b, (c & d) | ((~c) & a)), add(buffer[i+ 7], 0xFD469501)), 22),c);
 a = add(rol(add(add(a, (b & c) | ((~b) & d)), add(buffer[i+ 8], 0x698098D8)), 7),b);
 d = add(rol(add(add(d, (a & b) | ((~a) & c)), add(buffer[i+ 9], 0x8B44F7AF)), 12),a);
 c = add(rol(add(add(c, (d & a) | ((~d) & b)), add(buffer[i+10], 0xFFFF5BB1)), 17),d);
 b = add(rol(add(add(b, (c & d) | ((~c) & a)), add(buffer[i+11], 0x895CD7BE)), 22),c);
 a = add(rol(add(add(a, (b & c) | ((~b) & d)), add(buffer[i+12], 0x6B901122)), 7),b);
 d = add(rol(add(add(d, (a & b) | ((~a) & c)), add(buffer[i+13], 0xFD987193)), 12),a);
 c = add(rol(add(add(c, (d & a) | ((~d) & b)), add(buffer[i+14], 0xA679438E)), 17),d);
 b = add(rol(add(add(b, (c & d) | ((~c) & a)), add(buffer[i+15], 0x49B40821)), 22),c);
 a = add(rol(add(add(a, (b & d) | (c & (~d))), add(buffer[i+ 1], 0xF61E2562)), 5),b);
 d = add(rol(add(add(d, (a & c) | (b & (~c))), add(buffer[i+ 6], 0xC040B340)), 9),a);
 c = add(rol(add(add(c, (d & b) | (a & (~b))), add(buffer[i+11], 0x265E5A51)), 14),d);
 b = add(rol(add(add(b, (c & a) | (d & (~a))), add(buffer[i+ 0], 0xE9B6C7AA)), 20),c);
 a = add(rol(add(add(a, (b & d) | (c & (~d))), add(buffer[i+ 5], 0xD62F105D)), 5),b);
 d = add(rol(add(add(d, (a & c) | (b & (~c))), add(buffer[i+10], 0x02441453)), 9),a);
 c = add(rol(add(add(c, (d & b) | (a & (~b))), add(buffer[i+15], 0xD8A1E681)), 14),d);
 b = add(rol(add(add(b, (c & a) | (d & (~a))), add(buffer[i+ 4], 0xE7D3FBC8)), 20),c);
 a = add(rol(add(add(a, (b & d) | (c & (~d))), add(buffer[i+ 9], 0x21E1CDE6)), 5),b);
 d = add(rol(add(add(d, (a & c) | (b & (~c))), add(buffer[i+14], 0xC33707D6)), 9),a);
 c = add(rol(add(add(c, (d & b) | (a & (~b))), add(buffer[i+ 3], 0xF4D50D87)), 14),d);
 b = add(rol(add(add(b, (c & a) | (d & (~a))), add(buffer[i+ 8], 0x455A14ED)), 20),c);
 a = add(rol(add(add(a, (b & d) | (c & (~d))), add(buffer[i+13], 0xA9E3E905)), 5),b);
 d = add(rol(add(add(d, (a & c) | (b & (~c))), add(buffer[i+ 2], 0xFCEFA3F8)), 9),a);
 c = add(rol(add(add(c, (d & b) | (a & (~b))), add(buffer[i+ 7], 0x676F02D9)), 14),d);
 b = add(rol(add(add(b, (c & a) | (d & (~a))), add(buffer[i+12], 0x8D2A4C8A)), 20),c);
 a = add(rol(add(add(a, b ^ c ^ d), add(buffer[i+ 5], 0xFFFA3942)), 4),b);
 d = add(rol(add(add(d, a ^ b ^ c), add(buffer[i+ 8], 0x8771F681)), 11),a);
 c = add(rol(add(add(c, d ^ a ^ b), add(buffer[i+11], 0x6D9D6122)), 16),d);
 b = add(rol(add(add(b, c ^ d ^ a), add(buffer[i+14], 0xFDE5380C)), 23),c);
 a = add(rol(add(add(a, b ^ c ^ d), add(buffer[i+ 1], 0xA4BEEA44)), 4),b);
 d = add(rol(add(add(d, a ^ b ^ c), add(buffer[i+ 4], 0x4BDECFA9)), 11),a);
 c = add(rol(add(add(c, d ^ a ^ b), add(buffer[i+ 7], 0xF6BB4B60)), 16),d);
 b = add(rol(add(add(b, c ^ d ^ a), add(buffer[i+10], 0xBEBFBC70)), 23),c);
 a = add(rol(add(add(a, b ^ c ^ d), add(buffer[i+13], 0x289B7EC6)), 4),b);
 d = add(rol(add(add(d, a ^ b ^ c), add(buffer[i+ 0], 0xEAA127FA)), 11),a);
 c = add(rol(add(add(c, d ^ a ^ b), add(buffer[i+ 3], 0xD4EF3085)), 16),d);
 b = add(rol(add(add(b, c ^ d ^ a), add(buffer[i+ 6], 0x04881D05)), 23),c);
 a = add(rol(add(add(a, b ^ c ^ d), add(buffer[i+ 9], 0xD9D4D039)), 4),b);
 d = add(rol(add(add(d, a ^ b ^ c), add(buffer[i+12], 0xE6DB99E5)), 11),a);
 c = add(rol(add(add(c, d ^ a ^ b), add(buffer[i+15], 0x1FA27CF8)), 16),d);
 b = add(rol(add(add(b, c ^ d ^ a), add(buffer[i+ 2], 0xC4AC5665)), 23),c);
 a = add(rol(add(add(a, c ^ (b | (~d))), add(buffer[i+ 0], 0xF4292244)), 6),b);
 d = add(rol(add(add(d, b ^ (a | (~c))), add(buffer[i+ 7], 0x432AFF97)), 10),a);
 c = add(rol(add(add(c, a ^ (d | (~b))), add(buffer[i+14], 0xAB9423A7)), 15),d);
 b = add(rol(add(add(b, d ^ (c | (~a))), add(buffer[i+ 5], 0xFC93A039)), 21),c);
 a = add(rol(add(add(a, c ^ (b | (~d))), add(buffer[i+12], 0x655B59C3)), 6),b);
 d = add(rol(add(add(d, b ^ (a | (~c))), add(buffer[i+ 3], 0x8F0CCC92)), 10),a);
 c = add(rol(add(add(c, a ^ (d | (~b))), add(buffer[i+10], 0xFFEFF47D)), 15),d);
 b = add(rol(add(add(b, d ^ (c | (~a))), add(buffer[i+ 1], 0x85845DD1)), 21),c);
 a = add(rol(add(add(a, c ^ (b | (~d))), add(buffer[i+ 8], 0x6FA87E4F)), 6),b);
 d = add(rol(add(add(d, b ^ (a | (~c))), add(buffer[i+15], 0xFE2CE6E0)), 10),a);
 c = add(rol(add(add(c, a ^ (d | (~b))), add(buffer[i+ 6], 0xA3014314)), 15),d);
 b = add(rol(add(add(b, d ^ (c | (~a))), add(buffer[i+13], 0x4E0811A1)), 21),c);
 a = add(rol(add(add(a, c ^ (b | (~d))), add(buffer[i+ 4], 0xF7537E82)), 6),b);
 d = add(rol(add(add(d, b ^ (a | (~c))), add(buffer[i+11], 0xBD3AF235)), 10),a);
 c = add(rol(add(add(c, a ^ (d | (~b))), add(buffer[i+ 2], 0x2AD7D2BB)), 15),d);
 b = add(rol(add(add(b, d ^ (c | (~a))), add(buffer[i+ 9], 0xEB86D391)), 21),c);
 a = add(a, temp_a);
 b = add(b, temp_b);
 c = add(c, temp_c);
 d = add(d, temp_d);
    }
    var w = [a, b, c, d];
    var t = [];
    for (var i = 0; i < 4; i++)
 for (var j = 0; j < 32; j += 8)
     t[i * 4 + j / 8] = (w[i] >> j) & 0xFF;
    return t;
}
caml_md5_string = function (v, ofs, len) {
    var s = [];
    for (var i = 0;i < len;i++)
 s[i] = v.get (ofs + i);
    return mk_array_from_js (md5 (s));
}
caml_md5_chan = function (v, ofs, len) {
    this.failwith ("not implemented in obrowser");
}
function thread_initialize () {
    return 0;
}
function thread_initialize_preemption () {
    return 0;
}
function thread_new (clos) {
    return this.thread_new (clos);
}
function thread_self (unit) {
    return this.ctx.pid;
}
function thread_kill (pid) {
    this.thread_kill (pid);
    return 0;
}
thread_request_reschedule =
thread_yield = function () {
    this.thread_yield ();
    return 0;
}
function thread_id (pid) {
    throw pid;
}
function thread_sleep () {
    this.ctx.status = 46;
    return 0;
}
function thread_wakeup (pid) {
    this.thread_wakeup (pid);
    return 0;
}
thread_wait_pid =
thread_join = function (pid) {
    this.ctx.status = 47;
    this.ctx.waiting_for = pid;
}
function thread_delay (s) {
    this.thread_delay (s.get (0) * 1000);
    return 0;
}
function thread_uncaught_exception (e) {
    basic_io_write ("Fatal error: " +
    string_from_value (e.get(0).get(0))
    + (this.ctx.accu.size == 2
       ?(" " + repr (e.get (1), 1000))
       :""));
    this.thread_kill (this.ctx.pid);
}
function caml_js_mutex_create (u) {
    var mutex = { locked: false, owner:0 };
    return box_abstract (mutex);
}
function caml_js_mutex_lock (m) {
    var mutex = m.get (0);
    if (mutex.locked) {
 var vm = this ;
 this.thread_wait (mutex, function () {
  caml_js_mutex_lock.call (vm, m);
     });
    } else {
 mutex.locked = true;
 mutex.owner = this.ctx.pid;
 return 0 ;
    }
}
function caml_js_mutex_try_lock (m) {
    var mutex = m.get (0);
    if (mutex.locked) {
 return (false?1:0) ;
    } else {
 mutex.locked = true;
 mutex.owner = this.ctx.pid;
 return (true?1:0) ;
    }
}
function caml_js_mutex_unlock (m) {
    var mutex = m.get (0);
    if (mutex.locked && mutex.owner == this.ctx.pid) {
 mutex.locked = false;
 this.thread_notify_one (mutex);
    }
    return 0;
}
function caml_js_external (vsym, nargs) {
    var sym = string_from_value (vsym);
    try {
 this.prims[sym] = eval (sym);
    } catch (e) {
 return 0 ;
    }
    var cl;
    switch (nargs) {
    case 1:
 cl = (new Block (1, 247));
 cl.set (0, (new Block (5, 0)));
 cl.get (0).set (0, 0);
 cl.get (0).set (1, 93);
 cl.get (0).set (2, sym);
 cl.get (0).set (3, 40);
 cl.get (0).set (4, 1);
 break;
    case 2:
 var cl = (new Block (1, 247));
 cl.set (0, (new Block (8, 0)));
 cl.get (0).set (0, 42);
 cl.get (0).set (1, 1);
 cl.get (0).set (2, 1);
 cl.get (0).set (3, 11);
 cl.get (0).set (4, 94);
 cl.get (0).set (5, sym);
 cl.get (0).set (6, 40);
 cl.get (0).set (7, 2);
 break;
    case 3:
 var cl = (new Block (1, 247));
 cl.set (0, (new Block (9, 0)));
 cl.get (0).set (0, 42);
 cl.get (0).set (1, 2);
 cl.get (0).set (2, 2);
 cl.get (0).set (3, 12);
 cl.get (0).set (4, 12);
 cl.get (0).set (5, 95);
 cl.get (0).set (6, sym);
 cl.get (0).set (7, 40);
 cl.get (0).set (8, 3);
 break;
    default:
 this.failwith ("unhandled number of arguments for dyn external");
    }
    var some_cl = (new Block (1, 0));
    some_cl.set (0, cl)
    return some_cl;
}
function caml_js_node_children (n) {
    var node = n;
    try {
 var res = nil;
 var cur = nil;
 var children = node.childNodes;
 for (c = 0;c < children.length;c++) {
     if (res == nil) {
  res = cons (children[c],nil);
  cur = res;
     } else {
  cur.set(1, cons (children[c],nil));
  cur = cur.get (1);
     }
 }
 return res;
    } catch (e) {
 this.failwith ("caml_js_node_children: " + e.message);
    }
}
function caml_js_node_n_children (n) {
    var node = n;
    try {
 return node.childNodes.length;
    } catch (e) {
 this.failwith ("caml_js_node_n_children: " + e.message);
    }
}
function caml_js_node_child (n, i) {
    var node = n;
    try {
 return node.childNodes[i];
    } catch (e) {
 this.failwith ("caml_js_node_n_children: " + e.message);
    }
}
function caml_js_fragment_create (v) {
    return document.createDocumentFragment ();
}
function caml_js_fragment_append (f, n) {
    var fragment = f;
    var node = n;
    try {
 fragment.appendChild (node);
    } catch (e) {
 this.failwith ("caml_js_fragment_append: " + e.message);
    }
    return 0;
}
function caml_js_fragment_flush (n,f) {
    var fragment = f;
    var node = n;
    try {
 node.appendChild (fragment);
    } catch (e) {
 this.failwith ("caml_js_fragment_flush: " + e.message);
    }
    return 0;
}
function caml_js_alert (msg) {
    window.alert (string_from_value (msg));
    return 0;
}
function caml_js_params (v) {
    return this.argv;
}
function caml_js_exec (url, args) {
    var argv = [];
    for (var i = 0;i < args.size;i++)
 argv[i] = string_from_value (args.get(i));
    new VM(string_from_value (url), argv).run ();
    return 0;
}
function caml_js_http_get_with_status (vurl) {
    var url = string_from_value (vurl);
    var xmlhttp = false;
    var vm = this;
    if (ie) {
        try {
     xmlhttp = new ActiveXObject("Msxml2.XMLHTTP");
        } catch (e) {
     try {
  xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
     } catch (E) {
  throw new Error ("Unsupported Internet Explorer");
     }
        }
    } else {
 xmlhttp = new XMLHttpRequest();
    }
    try {
 xmlhttp.onreadystatechange = function () {
     vm.thread_notify_all (xmlhttp);
 }
 xmlhttp.open("GET", url, true);
 xmlhttp.send(null);
 var cont = function () {
     if (xmlhttp.readyState != 4)
  vm.thread_wait (xmlhttp, cont);
     var b = (new Block (2, 0));
     b.set (0, xmlhttp.status);
     b.set (1, value_from_string (xmlhttp.responseText));
     return b;
 }
 vm.thread_wait (xmlhttp, cont);
    } catch (e) {
 if (((e) == 0xEE1515EE) || ((e) == 0xEE1664EE)) throw (e);
 this.failwith("unable to load url " + url + ": " + e.message);
    }
}
function caml_js_http_post (vurl, type, data) {
    var url = string_from_value (vurl);
    var xmlhttp = false;
    var vm = this;
    if (ie) {
        try {
     xmlhttp = new ActiveXObject("Msxml2.XMLHTTP");
        } catch (e) {
     try {
  xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
     } catch (E) {
  throw new Error ("Unsupported Internet Explorer");
     }
        }
    } else {
 xmlhttp = new XMLHttpRequest();
    }
    try {
 xmlhttp.onreadystatechange = function () {
     vm.thread_notify_all (xmlhttp);
 }
 xmlhttp.open("POST", url, true);
 xmlhttp.setRequestHeader("Content-Type", string_from_value (type));
 xmlhttp.send(string_from_value (data));
 var cont = function () {
     if (xmlhttp.readyState != 4)
  vm.thread_wait (xmlhttp, cont);
     var b = (new Block (2, 0));
     b.set (0, xmlhttp.status);
     b.set (1, value_from_string (xmlhttp.responseText));
     return b;
 }
 vm.thread_wait (xmlhttp, cont);
    } catch (e) {
 if (((e) == 0xEE1515EE) || ((e) == 0xEE1664EE)) throw (e);
 this.failwith ("unable to load url " + url + ": " + e.message);
    }
}
function caml_js_dom_of_xml (str)
{
    var sstr = string_from_value (str);
    try {
 try {
     xmlDoc = new ActiveXObject("Microsoft.XMLDOM");
     xmlDoc.async = "false";
     xmlDoc.loadXML(sstr);
     return xmlDoc;
 } catch(e) {
     parser = new DOMParser();
     xmlDoc = parser.parseFromString(sstr,"text/xml");
     return xmlDoc;
 }
    } catch(e) { this.failwith ("unable to parse : " + e.message) }
}
function caml_js_pretty_xml_of_dom (o)
{
  try {
    var serializer = new XMLSerializer();
    var prettyString = XML(serializer.serializeToString(o)).toXMLString();
    return (value_from_string (prettyString)) ;
  } catch(e) { this.failwith ("unable to pretty print : " + e.message) }
}
function caml_js_xml_of_dom (o)
{
  try {
    var serializer = new XMLSerializer();
    var xml = serializer.serializeToString(o);
    return (value_from_string (xml)) ;
  } catch (e) { this.failwith ("unable to print : " + e.message) }
}
function basic_io_write (s) {
    var div = document.getElementById ("caml_io_console");
    if (div == null) {
 div = document.createElement ("DIV");
 div.style.position = "absolute";
 div.style.left = "5px";
 div.style.bottom = "5px";
 div.style.padding = "5px";
 div.style.backgroundColor = "lightgrey";
 div.style.color = "black";
 div.style.whiteSpace = "pre";
 div.id = "caml_io_console";
 document.body.appendChild (div);
    }
    div.innerHTML += s;
    return 0;
}
function caml_basic_io_write (s) {
    basic_io_write (string_val (s));
    return 0;
}
function jsoo_new (o) {
    return [];
}
function jsoo_eval (s) {
    try {
 var code = string_from_value (s) ;
 return eval (code);
    } catch (e) {
 if (((e) == 0xEE1515EE) || ((e) == 0xEE1664EE)) throw (e);
 this.failwith("jsoo_call: " + e.message);
    }
}
function jsoo_get (f, o) {
    return o[string_from_value (f)];
}
 function jsoo_set (f, v, o) {
     o[string_from_value (f)] = v;
     return 0;
}
function jsoo_extract (o) {
    if (o == null)
 return 0;
    if (o instanceof Block) {
 var b = (new Block (1, 3));
 b.set (0, o);
 return b;
    }
    if (typeof o == 'string') {
 var b = (new Block (1, 2));
 b.set (0, value_from_string (o));
 return b;
    }
    if (typeof o == 'number') {
 var b = (new Block (1, 1));
 b.set (0, box_float (o));
 return b;
    }
    var b = (new Block (1, 0));
    b.set (0, o);
    return b;
}
function jsoo_extract_bool (o) {
    if (o)
 return 1;
    return 0;
}
function jsoo_inject (o) {
    if (!(o instanceof Block))
 return null;
    if (o.tag == 2)
 return string_from_value (o.get(0));
    if (o.tag == 1)
 return o.get(0).get (0);
    return o.get (0);
}
function jsoo_call (d, args, o) {
    try {
 return o.apply (d, args.content) ;
    } catch (e) {
 if (((e) == 0xEE1515EE) || ((e) == 0xEE1664EE)) throw (e);
 this.failwith("jsoo_call: " + e.message);
    }
}
function jsoo_wrap_event (clos, res) {
    var vm = this;
    return function (evt) {
 var pid = vm.thread_new (clos);
 var p = vm.ctx;
 do {
     if (p.pid == pid) {
  p.event_args = evt;
  break;
     }
     p = p.n_ctx;
 } while (p != vm.ctx);
 vm.run ();
 return null;
    }
}
function jsoo_get_event_args (unit) {
    return this.ctx.event_args;
}
function current_vm () {
    return this;
}
function caml_regexp_make (vs, vf) {
    var s = string_from_value (vs);
    var f = string_from_value (vf);
    try {
 return box_abstract (new RegExp (s, f));
    } catch (e) {
 this.failwith ("Regexp.make: " + e.message);
    }
}
function caml_regexp_last_index (vr) {
    var r = vr.get (0) ;
    return r.lastIndex;
}
function caml_regexp_test (vr, vs) {
    var r = vr.get (0) ;
    var s = string_from_value (vs) ;
    return (r.test (s)?1:0);
}
function caml_regexp_exec (vr, vs) {
    var r = vr.get (0) ;
    var s = string_from_value (vs) ;
    var res = r.exec (s);
    if (res == null) {
 this.raise_constant (NOT_FOUND_EXN);
    } else {
 var vres = (new Block (res.length, 0));
 for (var i = 0;i < res.length;i++) {
     vres.set (i, value_from_string (res[i]));
 }
 return vres;
    }
}
function caml_regexp_index (vr, vs) {
    var r = vr.get (0) ;
    var s = string_from_value (vs) ;
    var i = s.search (r);
    if (i == -1) {
 this.raise_constant (NOT_FOUND_EXN);
    } else {
 return i;
    }
}
function caml_regexp_replace (vr, vsub, vs) {
    var r = vr.get (0) ;
    var s = string_from_value (vs) ;
    var sub = string_from_value (vsub) ;
    return (value_from_string (s.replace (r, sub)));
}
function caml_regexp_replace_fun (vr, vf, vs) {
    var r = vr.get (0) ;
    var s = string_from_value (vs) ;
    var vm = this;
    var f = function () {
 var vargs = (new Block (arguments.length - 2, 0));
 for (var i = 0; i < arguments.length - 2;i++) {
     vargs.set (i, value_from_string (arguments[i]));
 }
 return string_from_value (vm.callback (vf, [arguments[arguments.length - 2], vargs]));
    }
    return (value_from_string (s.replace (r, f)));
}
function caml_regexp_split (vr, vs) {
    var r = vr.get (0) ;
    var s = string_from_value (vs) ;
    var res = s.split (r);
    var vres = (new Block (res.length, 0));
    for (var i = 0;i < res.length;i++) {
 vres.set (i, value_from_string (res[i]));
    }
    return vres;
}
var label_cache = [] ;
function jsstr(s) {
    if (s.jsstr != null)
 return s.jsstr;
    else {
 s.jsstr = string_from_value (s);
 return s.jsstr;
    }
}
function plabel_jsstr (s) {
    if (label_cache[s] != null)
 return label_cache[s] ;
    var accu = 0;
    for (var i = 0;i < s.length;i++) {
 accu = (223 * accu) | 0;
 accu = (accu + s.charCodeAt(i)) | 0;
    }
    accu &= 0x7FFFFFFF;
    if (accu > 0x3FFFFFFF)
 accu = -0x7FFFFFFF + accu - 1;
    label_cache[s] = accu ;
    return accu ;
}
function plabel (s) {
    s = jsstr (s);
    return plabel_jsstr (s);
}
var oo_table_count = 0;
function fit_size (n) {
    if (n <= 2) return n; else return (fit_size ((n + 1) / 2) * 2);
}
oo_new_table = function (pm) {
    oo_table_count++;
    var methods = (new Block (pm.size * 2 + 2, 0));
    methods.set (0, pm.size);
    methods.set (1, fit_size (pm.size) * 32 / 8 - 1);
    for (var i = 2;i < methods.size;i++) {
 methods.set (i, (new Block (0, 0)));
    }
    for (var i = 0;i < pm.size;i++) {
 var plab = plabel (pm.get(i));
 methods.set (i * 2 + 3, plab);
    }
    var refnil = (new Block (1, 0));
    refnil.set (0, 0);
    return {
 methods : methods,
 by_name : [],
 by_label : [],
 previous_states : null,
 hidden_meths : [],
 vars : [],
 initializers : refnil,
 size : 2
    };
}
oo_create_table = function (pm) {
    var table = oo_new_table (pm) ;
    for (var i = 0;i < pm.size;i++) {
 var lab = i * 2 + 2;
 table.by_label[lab] = true;
 table.by_name[jsstr(pm.get(i))] = lab;
    }
    return table;
}
function oo_resize (table, size) {
    if (table.methods.size < size)
 table.methods.size = size;
}
oo_put = function (table, label, element) {
    oo_resize (table, label + 1);
    table.methods.set (label, element);
    return 0;
}
var method_count = 0;
var inst_var_count = 0;
oo_new_method = function (table) {
    var index = table.methods.size;
    oo_resize (table, index + 1);
    return index;
}
oo_get_method_label = function (table, name) {
    name = jsstr (name);
    var m = table.by_name[name];
    if (m == null) {
 m = oo_new_method (table);
 table.by_name[name] = m;
 table.by_label[m] = true;
    }
    return m;
}
oo_set_method = function (table, label, element) {
    method_count++;
    if (table.by_label[label]) {
 oo_put (table, label, element);
    } else {
 table.hidden_meths[label] = element;
    }
}
oo_get_method = function (table, label) {
    var m = table.hidden_meths[label];
    if (m)
 return m;
    else
 return table.methods.get (label);
}
function bmap (b, f) {
    var bb = (new Block (b.size, b.tag));
    for (var i = 0;i < b.size;i++)
 bb.set (i, f (b.get (i)));
    return bb;
}
function dup (b) {
    var bb = []
    for (var i in b)
 bb[i] = b[i];
    return bb;
}
oo_narrow = function (table, vars, virt_meths, concr_meths) {
    var virt_meths_labs = bmap (virt_meths, function (m) {return oo_get_method_label (table, m)});
    var concr_meths_labs = bmap (concr_meths, function (m) {return oo_get_method_label (table, m)});
    table.previous_states = {
 by_name : dup (table.by_name),
 by_label : dup (table.by_label),
 hidden_meths : dup (table.hidden_meths),
 tvars : dup (table.vars),
 virt_meths_labs : virt_meths_labs,
 vars : vars,
 next : table.previous_states
    }
    var nvars = [];
    if (vars) {
 for (var i = 0;i < vars.size;i++) {
     var v = jsstr (vars.get (i));
     if (table.vars[v])
  nvars[v] = vars[v];
 }
    }
    table.vars = nvars;
    var by_label = [];
    var by_name = [];
    for (var i = 0;i < concr_meths.size;i++) {
 var met = jsstr (concr_meths.get (i));
 var label = concr_meths_labs.get (i);
 by_name[met] = label;
 by_label[label] = (table.by_label[label] != false);
    }
    for (var i = 0 ;i < virt_meths.size;i++) {
 var met = jsstr (virt_meths.get (i));
 var label = virt_meths_labs.get (i);
 by_name[met] = label;
 by_label[label] = false;
    }
    table.by_name = by_name;
    table.by_label = by_label;
    var hidden_meths = [];
    for (var i = 0;i < virt_meths_labs.size;i++) {
 var lab = virt_meths_labs.get (i);
 var m = table.hidden_meths[lab];
 if (m)
     hidden_meths[lab] = m;
    }
    table.hidden_meths = hidden_meths;
}
oo_widen = function (table) {
    var prev = table.previous_states ;
    table.previous_states = prev.next;
    var vars = dup (prev.tvars);
    for (var i = 0;i < prev.vars.size;i++) {
 var v = jsstr (prev.vars.get (i));
 vars[v] = table.vars[v];
    }
    table.vars = vars;
    table.by_name = prev.by_name;
    table.by_label = prev.by_label;
    table.hidden_meths = dup (prev.hidden_meths);
    for (var i = 0;i < prev.virt_meths_labs.size;i++) {
 var lab = prev.virt_meths_labs[i];
 var m = table.hidden_meths[lab];
 if (m)
     hidden_meths[lab] = m;
    }
}
oo_new_slot = function (table) {
    return table.size++;
}
oo_new_variable = function (table, name) {
    name = jsstr (name);
    var v = table.vars[name];
    if (v)
 return v;
    else {
 var index = oo_new_slot (table);
 if (name.length != 0)
     table.vars[name] = index;
 return index;
    }
}
oo_get_variable = function (table, name) {
    return table.vars[jsstr (name)];
}
oo_initializers = function (table) {
    return table.initializers;
}
oo_methods = function (table) {
    return table.methods;
}
oo_size = function (table) {
    return table.size;
}
oo_init_class_raw = function (table) {
    inst_var_count += table.size - 1;
    oo_resize (table, 3 + table.methods.get (1) * 16 / 32);
}
function GraphicsWin (vm, width, height) {
    this._color = 0;
    this._w = width;
    this._h = height;
    this._line_width = 1;
    this.vm = vm;
    this._canvas = document.createElement ("canvas");
    this._canvas.setAttribute ("width", width);
    this._canvas.setAttribute ("height", height);
    this._canvas.setAttribute ("style", "background-color:white; margin:5px; border:1px black solid; margin:2px;");
    this.st = { button: false, x: 0, y: 0,keypressed: false, key: 0 };
    var win = this;
    this._canvas.onmouseover = function (e) { win.grab_input (e) } ;
    this._canvas.onmouseout = function (e) { win.release_input (e) } ;
    this._canvas.onmousedown = function (e) { win.h_canvas_mousedown (e) } ;
    this._canvas.onmousemove = function (e) { win.h_canvas_mousemove (e) } ;
    this._canvas.onmouseup = function (e) { win.h_canvas_mouseup (e) } ;
}
GraphicsWin.prototype.grab_input = function () {
    var win = this;
    this._canvas.style.border = "3px red solid";
    this._canvas.style.margin = "0px";
    this._canvas.onkeydown = function () { win.h_canvas_keydown () } ;
    this._canvas.onkeyup = function () { win.h_canvas_keyup () } ;
}
GraphicsWin.prototype.release_input = function () {
    var win = this;
    this._canvas.style.border = "1px black solid";
    this._canvas.style.margin = "2px";
    this._canvas.onkeydown = null ;
    this._canvas.onkeyup = null ;
}
GraphicsWin.prototype.set_mask = function (mask) {
    this.mask = mask;
}
GraphicsWin.prototype.h_canvas_mouseup = function (e) {
    var can = this._canvas;
    this.st.x = e.layerX - can.offsetLeft;
    this.st.y = this._h - (e.layerY - can.offsetTop);
    this.st.button = false;
    if (this.mask & 2) {
 this.last_answer = {
     x : this.st.x,
     y : this.st.y,
     button : true,
     keypressed : this.st.keypressed,
     key : this.st.key
 };
 this.mask = 0;
 this.vm.thread_notify_all (this);
    }
}
GraphicsWin.prototype.h_canvas_mousedown = function (e) {
    var can = this._canvas;
    this.st.x = e.layerX - can.offsetLeft;
    this.st.y = this._h - (e.layerY - can.offsetTop);
    this.st.button = true;
    if (this.mask & 1) {
 this.last_answer = {
     x : this.st.x,
     y : this.st.y,
     button : true,
     keypressed : this.st.keypressed,
     key : this.st.key
 };
 this.mask = 0;
 this.vm.thread_notify_all (this);
    }
}
GraphicsWin.prototype.h_canvas_keydown = function (e) {
    var can = this._canvas;
    this.st.keypressed = true;
    this.st.key = char_from_event (e);
}
GraphicsWin.prototype.h_canvas_keyup = function (e) {
    var can = this._canvas;
    this.st.keypressed = false;
    if (this.mask & 4) {
 this.last_answer = {
     x : this.st.x,
     y : this.st.y,
     button : this.st.button,
     keypressed : true,
     key : this.st.key
 };
 this.mask = 0;
 this.vm.thread_notify_all (this);
    }
}
GraphicsWin.prototype.h_canvas_mousemove = function (e) {
    var can = this._canvas;
    this.st.x = e.layerX - can.offsetLeft;
    this.st.y = this._h - (e.layerY - can.offsetTop);
    if (this.mask & 8) {
 this.last_answer = {
     x : this.st.x,
     y : this.st.y,
     button : this.st.button,
     keypressed : this.st.keypressed,
     key : this.st.key
 };
 this.mask = 0;
 this.vm.thread_notify_all (this);
    }
}
GraphicsWin.prototype.resize = function (w, h) {
    this._w = w;
    this._h = h;
    this._canvas.width = w;
    this._canvas.height = h;
}
GraphicsWin.prototype.get_context = function () {
    if (this.ctx == null) {
 var canvas = this._canvas;
 var ctx = canvas.getContext ("2d");
  this.font_size = 12;
  this.font = "Sans";
 ctx.font = this.font_size + "px " + this.font;
 ctx.strokeStyle = ctx.fillStyle = "rgb(" +
     ((this._color >> 16) & 0xFF) + "," +
     ((this._color >> 8) & 0xFF) + "," +
     (this._color & 0xFF) + ")";
 ctx.lineWidth = 1;
 ctx.lineCap = "round";
 ctx.lineJoin = "round";
 ctx.save ();
 ctx.translate (0, this._h);
 ctx.scale (1, -1);
 ctx.translate (0.5, 0.5);
 this.ctx = ctx;
    }
    return this.ctx;
}
GraphicsWin.prototype.get_canvas = function () {
    return this._canvas;
}
function caml_gr_open_graph (width, height) {
    this.graphics_win = new GraphicsWin (this, width, height);
    return this.graphics_win.get_canvas ();
}
function caml_gr_close_graph (unit) {
    if (this.graphics_win)
 this.graphics_win.close ();
    return 0;
}
function caml_gr_set_window_title (t) {
    if (this.graphics_win)
 this.graphics_win.set_title (s);
    return 0;
}
function caml_gr_resize_window (w, h) {
    if (this.graphics_win)
 this.graphics_win.resize (w, h);
    return 0;
}
function caml_gr_clear_graph (unit) {
    if (this.graphics_win) {
 var ctx = this.graphics_win.get_context ();
 ctx.fillRect (0, 0, this.graphics_win._w, this.graphics_win._h)
    }
    return 0;
}
function caml_gr_size_x (unit) {
    if (this.graphics_win)
 return this.graphics_win._w;
    else
 return 0;
}
function caml_gr_size_y (unit) {
    if (this.graphics_win)
 return this.graphics_win._h;
    else
 return 0;
}
function caml_gr_display_mode (bool) {
    return 0;
}
function caml_gr_remember_mode (bool) {
    return 0;
}
function caml_gr_synchronize (unit) {
    return 0;
}
function caml_gr_set_color (color) {
    if (this.graphics_win) {
 var ctx = this.graphics_win.get_context ();
 this.graphics_win._color = color;
 ctx.strokeStyle = ctx.fillStyle = "rgb(" +
     ((color >> 16) & 0xFF) + "," +
     ((color >> 8) & 0xFF) + "," +
     (color & 0xFF) + ")";
    }
    return 0;
}
function caml_gr_plot (x, y) {
    if (this.graphics_win) {
 var ctx = this.graphics_win.get_context ();
 ctx.fillRect (x, y, 1, 1);
 this.graphics_win._x = x;
 this.graphics_win._y = y;
    }
    return 0;
}
function caml_gr_point_color (x, y) {
    if (this.graphics_win) {
 var ctx = this.graphics_win.get_context ();
 var tmp = ctx.getImageData (x,this.graphics_win._h - y - 1,1,1);
 return (tmp.data[0] << 16) | (tmp.data[1] << 8) | tmp.data[2];
    }
    return 0;
}
function caml_gr_moveto (x, y) {
    if (this.graphics_win) {
 this.graphics_win._x = x;
 this.graphics_win._y = y;
    }
    return 0;
}
function caml_gr_current_x (unit) {
    if (this.graphics_win)
 return this.graphics_win._x;
    else
 return 0;
}
function caml_gr_current_y (unit) {
    if (this.graphics_win)
 return this.graphics_win._y;
    else
 return 0;
}
function caml_gr_lineto (x, y) {
    if (this.graphics_win) {
 var ctx = this.graphics_win.get_context ();
 ctx.beginPath ();
 ctx.moveTo (this.graphics_win._x, this.graphics_win._y);
 ctx.lineTo (x, y);
 ctx.stroke ();
 this.graphics_win._x = x;
 this.graphics_win._y = y;
    }
    return 0;
}
function caml_gr_draw_rect (x, y, w, h) {
    if (this.graphics_win) {
 var ctx = this.graphics_win.get_context ();
 ctx.beginPath ();
 ctx.moveTo (x,y);
 ctx.lineTo (x + w,y);
 ctx.lineTo (x + w,y + h);
 ctx.lineTo (x,y + h);
 ctx.lineTo (x,y);
 ctx.stroke ();
    }
    return 0;
}
function caml_gr_draw_arc (a) {
    return caml_gr_draw_arc_nat.call (this,a[0],a[1],a[2],a[3],a[4],a[5]);
}
function caml_gr_draw_arc_nat (x,y,rx,ry,a1,a2) {
    if (this.graphics_win) {
 var ctx = this.graphics_win.get_context ();
 ctx.beginPath ();
 ctx.arc (x, y, rx, a1 * Math.PI / 180, a2 * Math.PI / 180, false);
 ctx.stroke ();
    }
    return 0;
}
function caml_gr_set_line_width (lw) {
    if (this.graphics_win) {
 var ctx = this.graphics_win.get_context ();
 this.graphics_win._line_width = lw;
 ctx.lineWidth = lw;
    }
    return 0;
}
function caml_gr_fill_rect (x, y, w, h) {
    if (this.graphics_win) {
 var ctx = this.graphics_win.get_context ();
 ctx.fillRect (x, y, w, h);
    }
    return 0;
}
function caml_gr_fill_poly (p) {
    if (this.graphics_win) {
 var ctx = this.graphics_win.get_context ();
 ctx.beginPath ();
 if (p.size > 0)
     ctx.moveTo (p.get (p.size - 1).get (0),
   p.get (p.size - 1).get (1));
 for (var i = 0;i < p.size;i++) {
     ctx.lineTo (p.get (i).get (0),
   p.get (i).get (1));
 }
 ctx.fill ();
    }
    return 0;
}
function caml_gr_fill_arc (a) {
    return caml_gr_fill_arc_nat.call (this,a[0],a[1],a[2],a[3],a[4],a[5]);
}
function caml_gr_fill_arc_nat (x,y,rx,ry,a1,a2) {
    if (this.graphics_win) {
 var ctx = this.graphics_win.get_context ();
 ctx.beginPath ();
 ctx.arc (x, y, rx, a1 * Math.PI / 180, a2 * Math.PI / 180, false);
 ctx.fill ();
 ctx.stroke ();
    }
    return 0;
}
function caml_gr_draw_char (c) {
    if (this.graphics_win) {
 var ctx = this.graphics_win.get_context ();
 ctx.save ();
 ctx.scale (1, -1);
 ctx.translate (0, -this.graphics_win._h);
 ctx.textBaseline = "bottom";
 var m = ctx.measureText (c);
 ctx.fillText (c, this.graphics_win._x, this.graphics_win._y);
 this.graphics_win._x += Math.round (m.width);
 this.graphics_win._y += Math.round (this.graphics_win.font_size);
 ctx.restore ();
    }
    return 0;
}
function caml_gr_draw_string (s) {
    s = string_from_value (s);
    if (this.graphics_win) {
 var ctx = this.graphics_win.get_context ();
 ctx.save ();
 ctx.scale (1, -1);
 ctx.translate (0, -this.graphics_win._h);
 ctx.textBaseline = "bottom";
 var m = ctx.measureText (s);
 ctx.fillText (s, this.graphics_win._x, this.graphics_win._h - this.graphics_win._y);
 this.graphics_win._x += Math.round (m.width);
 this.graphics_win._y += Math.round (this.graphics_win.font_size);
 ctx.restore ();
    }
    return 0;
}
function caml_gr_set_font (s) {
    if (this.graphics_win) {
 this.graphics_win.font = string_from_value (s);
 var ctx = this.graphics_win.get_context ();
 ctx.font = this.graphics_win.font_size + "px " + this.graphics_win.font;
    }
    return 0;
}
function caml_gr_set_text_size (sz) {
    if (this.graphics_win) {
  this.graphics_win.font_size = sz;
 var ctx = this.graphics_win.get_context ();
 ctx.font = this.graphics_win.font_size + "px " + this.graphics_win.font;
    }
    return 0;
}
function caml_gr_text_size (s) {
    s = string_from_value (s);
    if (this.graphics_win) {
 var ctx = this.graphics_win.get_context ();
 var m = ctx.measureText (s);
 var b = (new Block (2, 0));
 b.set (0, Math.round (m.width));
 b.set (1, Math.round (this.graphics_win.font_size));
 return b;
    }
    this.failwith ("caml_gr_text_size");
}
function caml_gr_make_image (caa) {
    var imgdata = new Object ();
    imgdata.height = caa.size;
    imgdata.width = (imgdata.height > 0) ? caa.get (0).size : 0;
    for (var y = 0;y < caa.size;y++) {
 for (var x = 0;x < caa.get (y).size;x++) {
     imgdata.data[(y * imgdata.width + x) * 4 + 0] =
  (caa.get (y).get (x) >> 16) & 0xFF;
     imgdata.data[(y * imgdata.width + x) * 4 + 0] =
  (caa.get (y).get (x) >> 8) & 0xFF;
     imgdata.data[(y * imgdata.width + x) * 4 + 0] =
  caa.get (y).get (x) & 0xFF;
     imgdata.data[(y * imgdata.width + x) * 4 + 0] = 0;
 }
    }
    var img = (new Block (1, 0));
    img.set (0, imgdata);
    return img;
}
function caml_gr_dump_image (img) {
    var caa = (new Block (img.height, 0));
    for (var y = 0;y < img.height;y++) {
 caa.set (y, (new Block (img.width, 0)));
 for (var x = 0;x < img.width;x++) {
     caa.get (y).get (x) =
  (img.data[(y * imgdata.width + x) * 4 + 0] << 16)
  | (img.data[(y * imgdata.width + x) * 4 + 1] << 8)
  | img.data[(y * imgdata.width + x) * 4 + 1];
 }
    }
    return caa;
}
function caml_gr_draw_image (bimg, x, y) {
    var ctx = this.graphics_win.get_context ();
    var img = bimg.get (0);
    ctx.putImageData (img, x, this.graphics_win._h - y - img.height);
    return 0;
}
function caml_gr_create_image (w, h) {
    var img = new Object ();
    img.width = w;
    img.height = h;
    img.data = new Array ();
    for (var y = 0;y < h;y++)
 for (var x = 0;x < w;x++) {
     img.data[(y * w + x) * 4 + 0] = 0;
     img.data[(y * w + x) * 4 + 1] = 0;
     img.data[(y * w + x) * 4 + 2] = 0;
     img.data[(y * w + x) * 4 + 3] = 255;
 }
    var bimg = (new Block (1, 255));
    bimg.set (0, img);
    return bimg;
}
function caml_gr_blit_image (bimg, x, y) {
    var ctx = this.graphics_win.get_context ();
    var img = bimg.get (0);
    img.data = ctx.getImageData (x, this.graphics_win._h - y - img.height,
     img.width, img.height).data;
    return 0;
}
function caml_gr_wait_event (evl) {
    var mask = 0;
    while ((evl instanceof Block)) {
 mask |= 1 << evl.get (0);
 evl = evl.get (1);
    }
    if (mask & 16) {
 var st = (new Block (5, 0));
 st.set(0,this.graphics_win.st.x);
 st.set(1,this.graphics_win.st.y);
 st.set(2,this.graphics_win.st.button);
 st.set(3,this.graphics_win.st.keypressed);
 st.set(4, this.graphics_win.st.key);
 return st;
    } else {
 var vm = this;
 function gr_wait_cont () {
     if (vm.graphics_win.last_answer == null)
  vm.thread_wait (vm.graphics_win, gr_wait_cont);
     var st = (new Block (5, 0));
     st.set(0,vm.graphics_win.last_answer.x);
     st.set(1,vm.graphics_win.last_answer.y);
     st.set(2,vm.graphics_win.last_answer.button);
     st.set(3,vm.graphics_win.last_answer.keypressed);
     st.set(4,vm.graphics_win.last_answer.key);
     vm.graphics_win.last_answer = null;
     return st;
 }
 this.graphics_win.set_mask (mask);
 this.thread_wait (this.graphics_win, gr_wait_cont);
    }
}
function caml_gr_sound (f, d) {
    return 0;
}
function R2BLE(tbl,n) {
    var v1 = tbl.get ((n) * 2 + 1) & 0xFF ;
    var v2 = tbl.get ((n) * 2) & 0xFF ;
    var v = ((v1 << 8) | (v2)) ;
    if (v & 0x8000) {
 v = v - 0xFFFF - 1 ;
    }
    return v;
}
function run_mem (pc, mem, curr_pos) {
    var pcp = 0;
    for (;;) {
 var dst, src ;
 dst = pc.get (pcp++) ;
 if (dst == 0xff)
     return ;
 src = pc.get (pcp++) ;
 if (src == 0xff) {
     mem.set (dst, curr_pos) ;
 } else {
     mem.set (dst, mem.get (src)) ;
 }
    }
}
function run_tag (pc, mem) {
    var pcp = 0;
    for (;;) {
 var dst, src ;
 dst = pc.get (pcp++) ;
 if (dst == 0xff)
     return ;
 src = pc.get (pcp++) ;
 if (src == 0xff) {
     mem.set (dst, -1) ;
 } else {
     mem.set (dst, mem.get (src)) ;
 }
    }
}
function caml_lex_engine(tbl, start_state, lexbuf) {
    var state, base, backtrk, c ;
    state = start_state;
    if (state >= 0) {
 lexbuf.set (6, (lexbuf.get (5)));
 lexbuf.set (4, (lexbuf.get (5)));
 lexbuf.set (7, -1);
    } else {
 state = -state - 1;
    }
    while (true) {
 base = R2BLE(tbl.get (0), state);
 if (base < 0) {
     return (-base-1);
 }
 backtrk = R2BLE(tbl.get (1), state);
 if (backtrk >= 0) {
     lexbuf.set (6, lexbuf.get (5));
     lexbuf.set (7, backtrk);
 }
 if (lexbuf.get (5) >= lexbuf.get (2)){
     if (lexbuf.get (8) == (false?1:0)){
  return (-state - 1);
     } else {
  c = 256;
     }
 } else {
     c = lexbuf.get (1).get (lexbuf.get (5));
     lexbuf.set (5, lexbuf.get (5) + 1);
 }
 if (R2BLE(tbl.get (4), base + c) == state)
     state = R2BLE(tbl.get (3), base + c);
 else
     state = R2BLE(tbl.get (2), state);
 if (state < 0) {
     lexbuf.set (5, lexbuf.get (6));
     if (lexbuf.get (7) == -1) {
  this.failwith("lexing: empty token");
     } else {
  return lexbuf.get (7);
     }
 } else {
     if (c == 256) lexbuf.set (8, (false?1:0));
 }
    }
}
function caml_new_lex_engine(tbl, start_state, lexbuf) {
    var state, base, backtrk, c, pstate ;
    state = start_state;
    if (state >= 0) {
 lexbuf.set (6, (lexbuf.get (5)));
 lexbuf.set (4, (lexbuf.get (5)));
 lexbuf.set (7, -1);
    } else {
 state = -state - 1;
    }
    while (true) {
 base = R2BLE(tbl.get (0), state);
 if (base < 0) {
     var pc_off = R2BLE(tbl.get (5), state) ;
     run_tag(tbl.get (10).shift (pc_off), lexbuf.get (9));
     return (-base-1);
 }
 backtrk = R2BLE(tbl.get (1), state);
 if (backtrk >= 0) {
     var pc_off = R2BLE(tbl.get (6), state);
     run_tag(tbl.get (10).shift (pc_off), lexbuf.get (9));
     lexbuf.set (6, lexbuf.get (5));
     lexbuf.set (7, backtrk);
 }
 if (lexbuf.get (5) >= lexbuf.get (2)){
     if (lexbuf.get (8) == (false?1:0)){
  return (-state - 1);
     } else {
  c = 256;
     }
 } else {
     c = lexbuf.get (1).get (lexbuf.get (5));
     lexbuf.set (5, lexbuf.get (5) + 1);
 }
 pstate=state ;
 if (R2BLE(tbl.get (4), base + c) == state)
     state = R2BLE(tbl.get (3), base + c);
 else
     state = R2BLE(tbl.get (2), state);
 if (state < 0) {
     lexbuf.set (5, lexbuf.get (6));
     if (lexbuf.get (7) == -1) {
  this.failwith("lexing: empty token");
     } else {
  return lexbuf.get (7);
     }
 } else {
     var base_code = R2BLE(tbl.get (5), pstate) ;
     var pc_off ;
     if (R2BLE(tbl.get (9), base_code + c) == pstate)
  pc_off = R2BLE(tbl.get (8), base_code + c) ;
     else
  pc_off = R2BLE(tbl.get (7), pstate) ;
     if (pc_off > 0)
  run_mem(tbl.get (10).shift (pc_off),
   lexbuf.get (9), lexbuf.get (5)) ;
     if (c == 256) lexbuf.set (8, (false?1:0));
 }
    }
}
function as_string (arr) {
    var s = "";
    for (var i = 0;i < arr.length;i++) {
 s += String.fromCharCode (arr[i]);
    }
    return s;
}
function load_program (url) {
    function error (s) {
 throw new Error (s);
    }
    function Buffer (url) {
 this.text = uudecode (http_get (url, function (e) {throw e;}));
 this.pos = 0;
 this.seek_end (-(4 + 12));
 var trail = this.read ((4 + 12));
 if (as_string (trail.slice (4,4 + 12)) != "Caml1999X008")
     error ("bad bytecode file (bad magic)");
 this.nsections = ((trail[0]<<24)|(trail[(0)+1]<<16)|(trail[(0)+2]<<8)|trail[(0)+3]);
 this.sections = [];
 this.seek_end (- ((4 + 12) + this.nsections * 8));
 for (var i = 0;i < this.nsections;i++) {
     var t = this.read (8);
     this.sections[i] = {
  name : as_string (t.slice (0,4)),
  len : ((t[4]<<24)|(t[(4)+1]<<16)|(t[(4)+2]<<8)|t[(4)+3])
     };
 }
    }
    Buffer.prototype.seek_start = function (i) {
 this.pos = i;
    }
    Buffer.prototype.seek = function (i) {
 this.pos += i;
    }
    Buffer.prototype.seek_end = function (i) {
 this.pos = this.text.length + i;
    }
    Buffer.prototype.read = function (len) {
 var r = this.text.slice (this.pos, this.pos + len);
 this.pos += len;
 return r;
    }
    Buffer.prototype.seek_section = function (name) {
 var ofs = (4 + 12) + this.nsections * 8;
 for (var i = this.nsections - 1;i >= 0;i--) {
     ofs += this.sections[i].len;
     if (this.sections[i].name == name) {
  this.seek_end (-ofs);
  return this.sections[i].len;
     }
 }
 return -1;
    }
    Buffer.prototype.read_section = function (name) {
 var len = this.seek_section (name);
 if (len == -1) {
     return null;
 }
 return this.read (len);
    }
    var buf = new Buffer (url);
    var code_text = buf.read_section ("CODE");
    var code = (new Block (code_text.length / 4, 0));
    for (i = 0;i < code_text.length / 4;i++)
 code.set (i, ((code_text[(i * 4)+3]<<24)|(code_text[(i * 4)+2]<<16)|(code_text[(i * 4)+1]<<8)|code_text[i * 4]));
    var symbols_text = buf.read_section("PRIM");
    var symbols = [];
    for (var i = 0, s = 0;i < symbols_text.length != 0;i++,s++) {
 symbols[s]= "";
 while (symbols_text[i] != 0)
     symbols[s] += String.fromCharCode(symbols_text[i++]);
    }
    var data = input_val (buf.read_section ("DATA"), error);
    return {
 code : code,
 symbols : symbols,
 data : data
    };
}
function VM(url, argv) {
    this.program_name = value_from_string (url);
    this.argv = mk_array_from_js (Array.map (argv, value_from_string));
    this.argv = this.argv.shift(-1);
    this.argv.set (0,this.program_name);
    var program = load_program (url);
    this.syms = program.symbols;
    this.prims = [];
    function undefined_primitive (name){
 return function () {
     throw (new Error("undefined primitive " + name))
 }
    }
    for (n in this.syms) {
 try {
     this.prims[n] = eval (this.syms[n]);
 } catch (e) {
     this.prims[n] = undefined_primitive (this.syms[n]);
 }
    }
    this.data = program.data ;
    this.status = 668;
    this.max_pid = 1;
    this.ctx = {
 cur_code : program.code,
 pc : 0,
 sp : 0,
 caml_trap_sp : -1,
 accu : 0,
 stack : [],
 env : ATOM,
 extra_args : 0,
 status : 44,
 pid : this.max_pid++
    };
    this.ctx.n_ctx = this.ctx ;
    this.ctx.p_ctx = this.ctx ;
}
var i_tbl = {
    0: function (vm, c) {
 c.accu = c.stack[c.sp];
 return true;
    },
    1: function (vm, c) {
 c.accu = c.stack[c.sp + 1];
 return true;
    },
    2: function (vm, c) {
 c.accu = c.stack[c.sp + 2];
 return true;
    },
    3: function (vm, c) {
 c.accu = c.stack[c.sp + 3];
 return true;
    },
    4: function (vm, c) {
 c.accu = c.stack[c.sp + 4];
 return true;
    },
    5: function (vm, c) {
 c.accu = c.stack[c.sp + 5];
 return true;
    },
    6: function (vm, c) {
 c.accu = c.stack[c.sp + 6];
 return true;
    },
    7: function (vm, c) {
 c.accu = c.stack[c.sp + 7];
 return true;
    },
    8: function (vm, c) {
 c.accu = c.stack[c.sp + c.cur_code.get(c.pc++)];
 return true;
    },
    9: function (vm, c) {
 c.stack[--c.sp] = c.accu;
 return true;
    },
    10: function (vm, c) {
 c.stack[--c.sp] = c.accu;
 return true;
    },
    11: function (vm, c) {
 c.stack[--c.sp] = c.accu; c.accu = c.stack[c.sp + 1];
 return true;
    },
    12: function (vm, c) {
 c.stack[--c.sp] = c.accu; c.accu = c.stack[c.sp + 2];
 return true;
    },
    13: function (vm, c) {
 c.stack[--c.sp] = c.accu; c.accu = c.stack[c.sp + 3];
 return true;
    },
    14: function (vm, c) {
 c.stack[--c.sp] = c.accu; c.accu = c.stack[c.sp + 4];
 return true;
    },
    15: function (vm, c) {
 c.stack[--c.sp] = c.accu; c.accu = c.stack[c.sp + 5];
 return true;
    },
    16: function (vm, c) {
 c.stack[--c.sp] = c.accu; c.accu = c.stack[c.sp + 6];
 return true;
    },
    17: function (vm, c) {
 c.stack[--c.sp] = c.accu; c.accu = c.stack[c.sp + 7];
 return true;
    },
    18: function (vm, c) {
 c.stack[--c.sp] = c.accu;
 c.accu = c.stack[c.sp + c.cur_code.get(c.pc++)];
 return true;
    },
    19: function (vm, c) {
 c.sp += c.cur_code.get(c.pc++);
 return true;
    },
    20: function (vm, c) {
 c.stack[c.sp + c.cur_code.get(c.pc++)] = c.accu;
 c.accu = 0;
 return true;
    },
    21: function (vm, c) {
 c.accu = c.env.get(1);
 return true;
    },
    22: function (vm, c) {
 c.accu = c.env.get(2);
 return true;
    },
    23: function (vm, c) {
 c.accu = c.env.get(3);
 return true;
    },
    24: function (vm, c) {
 c.accu = c.env.get(4);
 return true;
    },
    25: function (vm, c) {
 c.accu = c.env.get(c.cur_code.get(c.pc++));
 return true;
    },
    26: function (vm, c) {
 c.stack[--c.sp] = c.accu;
 c.accu = c.env.get(1);
 return true;
    },
    27: function (vm, c) {
 c.stack[--c.sp] = c.accu;
 c.accu = c.env.get(2);
 return true;
    },
    28: function (vm, c) {
 c.stack[--c.sp] = c.accu;
 c.accu = c.env.get(3);
 return true;
    },
    29: function (vm, c) {
 c.stack[--c.sp] = c.accu;
 c.accu = c.env.get(4);
 return true;
    },
    30: function (vm, c) {
 c.stack[--c.sp] = c.accu;
 c.accu = c.env.get(c.cur_code.get(c.pc++));
 return true;
    },
    31: function (vm, c) {
 c.sp -= 3;
 c.stack[c.sp] = c.cur_code.shift (c.pc + c.cur_code.get(c.pc));
 c.stack[c.sp + 1] = c.env;
 c.stack[c.sp + 2] = c.extra_args;
 c.pc++;
 return true;
    },
    32: function (vm, c) {
 c.extra_args = c.cur_code.get(c.pc) - 1;
 c.cur_code = (c.accu.tag == 247 ? c.accu.get (0):c.accu);
 c.pc = 0;
 c.env = c.accu;
 return true;
    },
    33: function (vm, c) {
 var arg1 = c.stack[c.sp];
 c.sp -= 3;
 c.stack[c.sp] = arg1;
 c.stack[c.sp + 1] = c.cur_code.shift (c.pc);
 c.stack[c.sp + 2] = c.env;
 c.stack[c.sp + 3] = c.extra_args;
 c.cur_code = (c.accu.tag == 247 ? c.accu.get (0):c.accu);
 c.pc = 0;
 c.env = c.accu;
 c.extra_args = 0;
 return true;
    },
    34: function (vm, c) {
 var arg1 = c.stack[c.sp];
 var arg2 = c.stack[c.sp + 1];
 c.sp -= 3;
 c.stack[c.sp] = arg1;
 c.stack[c.sp + 1] = arg2;
 c.stack[c.sp + 2] = c.cur_code.shift (c.pc);
 c.stack[c.sp + 3] = c.env;
 c.stack[c.sp + 4] = c.extra_args;
 c.cur_code = (c.accu.tag == 247 ? c.accu.get (0):c.accu);
 c.pc = 0;
 c.env = c.accu;
 c.extra_args = 1;
 return true;
    },
    35: function (vm, c) {
 var arg1 = c.stack[c.sp];
 var arg2 = c.stack[c.sp + 1];
 var arg3 = c.stack[c.sp + 2];
 c.sp -= 3;
 c.stack[c.sp] = arg1;
 c.stack[c.sp + 1] = arg2;
 c.stack[c.sp + 2] = arg3;
 c.stack[c.sp + 3] = c.cur_code.shift (c.pc);
 c.stack[c.sp + 4] = c.env;
 c.stack[c.sp + 5] = c.extra_args;
 c.cur_code = (c.accu.tag == 247 ? c.accu.get (0):c.accu);
 c.pc = 0;
 c.env = c.accu;
 c.extra_args = 2;
 return true;
    },
    36: function (vm, c) {
 var nargs = c.cur_code.get(c.pc++);
 var slotsize = c.cur_code.get(c.pc);
 var newsp = c.sp + slotsize - nargs;
 for (i = nargs - 1; i >= 0; i--)
     c.stack[newsp + i] = c.stack[c.sp + i];
 c.sp = newsp;
 c.cur_code = (c.accu.tag == 247 ? c.accu.get (0):c.accu);
 c.pc = 0;
 c.env = c.accu;
 c.extra_args += nargs - 1;
 return true;
    },
    37: function (vm, c) {
 var arg1 = c.stack[c.sp];
 c.sp += c.cur_code.get (c.pc) - 1;
 c.stack[c.sp] = arg1;
 c.cur_code = (c.accu.tag == 247 ? c.accu.get (0):c.accu);
 c.pc = 0;
 c.env = c.accu;
 return true;
    },
    38: function (vm, c) {
 var arg1 = c.stack[c.sp];
 var arg2 = c.stack[c.sp + 1];
 c.sp += c.cur_code.get (c.pc) - 2;
 c.stack[c.sp] = arg1;
 c.stack[c.sp + 1] = arg2;
 c.cur_code = (c.accu.tag == 247 ? c.accu.get (0):c.accu);
 c.pc = 0;
 c.env = c.accu;
 c.extra_args += 1;
 return true;
    },
    39: function (vm, c) {
 var arg1 = c.stack[c.sp];
 var arg2 = c.stack[c.sp + 1];
 var arg3 = c.stack[c.sp + 2];
 c.sp += c.cur_code.get (c.pc) - 3;
 c.stack[c.sp] = arg1;
 c.stack[c.sp + 1] = arg2;
 c.stack[c.sp + 2] = arg3;
 c.cur_code = (c.accu.tag == 247 ? c.accu.get (0):c.accu);
 c.pc = 0;
 c.env = c.accu;
 c.extra_args += 2;
 return true;
    },
    40: function (vm, c) {
 c.sp += c.cur_code.get (c.pc++);
 if (c.extra_args > 0) {
     c.extra_args--;
     c.cur_code = (c.accu.tag == 247 ? c.accu.get (0):c.accu);
     c.pc = 0;
     c.env = c.accu;
 } else {
     c.cur_code = (c.stack[c.sp].tag == 247 ? c.stack[c.sp].get (0):c.stack[c.sp]);
     c.pc = 0;
     c.env = c.stack[c.sp + 1];
     c.extra_args = c.stack[c.sp + 2];
     c.sp += 3;
 }
 return true;
    },
    41: function (vm, c) {
 var num_args = c.env.size - 2;
 c.sp -= num_args;
 for (var i = 0; i < num_args; i++)
     c.stack[c.sp + i] = c.env.get(i + 2);
 c.env = c.env.get (1);
 c.extra_args += num_args;
 return true;
    },
    42: function (vm, c) {
 var required = c.cur_code.get (c.pc++);
 if (c.extra_args >= required) {
     c.extra_args -= required;
 } else {
     var num_args;
     num_args = 1 + c.extra_args;
     c.accu = (new Block (num_args + 2, 247));
     c.accu.set (0, c.cur_code.shift (c.pc - 3));
     c.accu.set (1, c.env);
     for (var i = 0; i < num_args; i++)
  c.accu.set(i + 2, c.stack[c.sp + i]);
     c.sp += num_args;
     c.cur_code = (c.stack[c.sp].tag == 247 ? c.stack[c.sp].get (0):c.stack[c.sp]);
     c.pc = 0;
     c.env = c.stack[c.sp + 1];
     c.extra_args = c.stack[c.sp + 2];
     c.sp += 3;
 }
 return true;
    },
    43: function (vm, c) {
 var nvars = c.cur_code.get (c.pc++);
 if (nvars > 0)
     c.stack[--c.sp] = c.accu;
 c.accu = (new Block (nvars + 1, 247));
 c.accu.set(0, c.cur_code.shift (c.pc + c.cur_code.get(c.pc)));
 c.pc++;
 for (var i = 0; i < nvars; i++)
     c.accu.set(i + 1,c.stack[c.sp + i]);
 c.sp += nvars;
 return true;
    },
    44: function (vm, c) {
 var nfuncs = c.cur_code.get (c.pc++);
 var nvars = c.cur_code.get (c.pc++);
 if (nvars > 0) c.stack[--c.sp] = c.accu;
 c.accu = (new Block (nfuncs * 2 - 1 + nvars, 247));
 for (var i = 0;i < nvars;i++)
     c.accu.set (nfuncs * 2 - 1 + i, c.stack[c.sp++]);
 c.accu.set(0,c.cur_code.shift (c.pc + c.cur_code.get (c.pc)));
 c.stack[--c.sp] = c.accu;
 for (var i = 1; i < nfuncs; i++) {
     var ofs = c.pc + c.cur_code.get (c.pc + i);
     c.accu.set (i * 2 - 1, ((i * 2) << 10) | 249);
     c.accu.set (i * 2, c.cur_code.shift (ofs));
 }
 var cl = c.accu;
 for (var i = 0;i < nfuncs-1;i++) {
     cl.next = cl.shift (2);
     cl.next.prev = cl;
     c.stack[--c.sp] = cl.next;
     cl = cl.next;
 }
 c.pc += nfuncs;
 return true;
    },
    45: function (vm, c) {
 c.accu = c.env.prev;
 return true;
    },
    46: function (vm, c) {
 c.accu = c.env;
 return true;
    },
    47: function (vm, c) {
 c.accu = c.env.next;
 return true;
    },
    48: function (vm, c) {
 var ofs = c.cur_code.get (c.pc++);
 c.accu = c.env;
 while (ofs > 0) {
     c.accu = c.accu.next;
     ofs -= 2;
 }
 while (ofs < 0) {
     c.accu = c.accu.prev;
     ofs += 2;
 }
 return true;
    },
    49: function (vm, c) {
 c.stack[--c.sp] = c.accu;
 c.accu = c.env.prev;
 return true;
    },
    50: function (vm, c) {
 c.stack[--c.sp] = c.accu;
 c.accu = c.env;
 return true;
    },
    51: function (vm, c) {
 c.stack[--c.sp] = c.accu;
 c.accu = c.env.next;
 return true;
    },
    52: function (vm, c) {
 c.stack[--c.sp] = c.accu;
 var ofs = c.cur_code.get (c.pc++);
 c.accu = c.env;
 while (ofs > 0) {
     c.accu = c.accu.next;
     ofs -= 2;
 }
 while (ofs < 0) {
     c.accu = c.accu.prev;
     ofs += 2;
 }
 return true;
    },
    53: function (vm, c) {
 c.accu = vm.data.get(c.cur_code.get (c.pc++));
 return true;
    },
    54: function (vm, c) {
 c.stack[--c.sp] = c.accu;
 c.accu = vm.data.get(c.cur_code.get (c.pc++));
 return true;
    },
    55: function (vm, c) {
 c.accu = vm.data.get(c.cur_code.get (c.pc++));
 c.accu = c.accu.get(c.cur_code.get (c.pc++));
 return true;
    },
    56: function (vm, c) {
 c.stack[--c.sp] = c.accu;
 c.accu = vm.data.get(c.cur_code.get (c.pc++));
 c.accu = c.accu.get(c.cur_code.get (c.pc++));
 return true;
    },
    57: function (vm, c) {
 vm.data.set(c.cur_code.get (c.pc++), c.accu);
 c.accu = 0;
 return true;
    },
    58: function (vm, c) {
 c.accu = ATOM;
 return true;
    },
    59: function (vm, c) {
 c.accu = (new Block (0, c.cur_code.get (c.pc++)));
 return true;
    },
    60: function (vm, c) {
 c.stack[--c.sp] = c.accu;
 c.accu = ATOM;
 return true;
    },
    61: function (vm, c) {
 c.stack[--c.sp] = c.accu;
 c.accu = (new Block (0, c.cur_code.get (c.pc++)));
 return true;
    },
    62: function (vm, c) {
 var size = c.cur_code.get (c.pc++);
 var tag = c.cur_code.get (c.pc++);
 var block = (new Block (size, tag));
 block.set(0, c.accu);
 for (var i = 1;i < size;i++) {
     block.set(i, c.stack[c.sp++]);
 }
 c.accu = block;
 return true;
    },
    63: function (vm, c) {
 var tag = c.cur_code.get (c.pc++);
 var block = (new Block (1, tag));
 block.set(0,c.accu);
 c.accu = block;
 return true;
    },
    64: function (vm, c) {
 var tag = c.cur_code.get (c.pc++);
 var block = (new Block (2, tag));
 block.set(0,c.accu);
 block.set(1,c.stack[c.sp]);
 c.sp += 1;
 c.accu = block;
 return true;
    },
    65: function (vm, c) {
 var tag = c.cur_code.get (c.pc++);
 var block = (new Block (3, tag));
 block.set(0,c.accu);
 block.set(1,c.stack[c.sp]);
 block.set(2,c.stack[c.sp + 1]);
 c.sp += 2;
 c.accu = block;
 return true;
    },
    66: function (vm, c) {
 var size = c.cur_code.get (c.pc++);
 var block = (new Block (size, 254));
 block.set(0, c.accu.get (0));
 for (var i = 1;i < size;i++)
     block.set(i, c.stack[c.sp++].get (0));
 c.accu = block;
 return true;
    },
    67: function (vm, c) {
 c.accu = c.accu.get(0);
 return true;
    },
    68: function (vm, c) {
 c.accu = c.accu.get(1);
 return true;
    },
    69: function (vm, c) {
 c.accu = c.accu.get(2);
 return true;
    },
    70: function (vm, c) {
 c.accu = c.accu.get(3);
 return true;
    },
    71: function (vm, c) {
 c.accu = c.accu.get(c.cur_code.get (c.pc++));
 return true;
    },
    72: function (vm, c) {
 c.accu = box_float(c.accu.get(c.cur_code.get (c.pc++)));
 return true;
    },
    73: function (vm, c) {
 c.accu.set(0,c.stack[c.sp++]); c.accu = 0;
 return true;
    },
    74: function (vm, c) {
 c.accu.set(1,c.stack[c.sp++]); c.accu = 0;
 return true;
    },
    75: function (vm, c) {
 c.accu.set(2,c.stack[c.sp++]); c.accu = 0;
 return true;
    },
    76: function (vm, c) {
 c.accu.set(3,c.stack[c.sp++]); c.accu = 0;
 return true;
    },
    77: function (vm, c) {
 c.accu.set(c.cur_code.get (c.pc++),c.stack[c.sp++]);
 c.accu = 0;
 return true;
    },
    78: function (vm, c) {
 c.accu.set(c.cur_code.get (c.pc++),c.stack[c.sp++].get (0));
 c.accu = 0;
 return true;
    },
    79: function (vm, c) {
 c.accu = c.accu.size;
 return true;
    },
    80: function (vm, c) {
 c.accu = c.accu.get(c.stack[c.sp++]);
 return true;
    },
    81: function (vm, c) {
 c.accu.set(c.stack[c.sp], c.stack[c.sp + 1]);
 c.sp += 2;
 return true;
    },
    82: function (vm, c) {
 c.accu = c.accu.get(c.stack[c.sp++]);
 return true;
    },
    83: function (vm, c) {
 c.accu.set(c.stack[c.sp], c.stack[c.sp + 1]);
 c.sp += 2;
 return true;
    },
    84: function (vm, c) {
 c.pc += c.cur_code.get (c.pc);
 return true;
    },
    85: function (vm, c) {
 if (c.accu != 0)
     c.pc += c.cur_code.get (c.pc);
 else
     c.pc++;
 return true;
    },
    86: function (vm, c) {
 if (c.accu == 0)
     c.pc += c.cur_code.get (c.pc);
 else
     c.pc++;
 return true;
    },
    87: function (vm, c) {
 var sizes = c.cur_code.get (c.pc++);
 if ((c.accu instanceof Block)) {
     var index = c.accu.tag;
     c.pc += c.cur_code.get (c.pc + (sizes & 0xFFFF) + index);
 } else {
     var index = c.accu;
     c.pc += c.cur_code.get (c.pc + index);
 }
 return true;
    },
    88: function (vm, c) {
 c.accu = (c.accu == 0?1:0);
 return true;
    },
    89: function (vm, c) {
 c.sp -= 4;
 c.stack[c.sp] = c.cur_code.shift (c.pc + c.cur_code.get (c.pc));
 c.stack[c.sp + 1] = c.caml_trap_sp;
 c.stack[c.sp + 2] = c.env;
 c.stack[c.sp + 3] = c.extra_args;
 c.caml_trap_sp = c.sp;
 c.pc++;
 return true;
    },
    90: function (vm, c) {
 c.caml_trap_sp = c.stack[c.sp + 1];
 c.sp += 4;
 return true;
    },
    91: function (vm, c) {
 if (c.caml_trap_sp == -1) {
     basic_io_write ('Fatal error: ' +
        string_from_value (c.accu.get (0).get (0))
        + (c.accu.size == 2
    ?(' ' + repr (c.accu.get (1), 1000))
    :''));
     vm.thread_kill (c.pid);
     return false;
 } else {
     c.sp = c.caml_trap_sp;
     c.cur_code = (c.stack[c.sp].tag == 247 ? c.stack[c.sp].get (0):c.stack[c.sp]);
     c.pc = 0;
     c.caml_trap_sp = c.stack[c.sp + 1];
     c.env = c.stack[c.sp + 2];
     c.extra_args = c.stack[c.sp + 3];
     c.sp += 4;
     return true;
 }
    },
    92: function (vm, c) {
 return true;
    },
    93: function (vm, c) {
 try {
     var r = vm.prims [c.cur_code.get (c.pc)].call (vm, c.accu);
     c.accu = r;
     c.pc++;
 } catch (e) {
     if (e == 0xEE1515EE) { c.pc++ ; return false; }
     if (e != 0xEE1664EE) throw e;
 }
 return true;
    },
    94: function (vm, c) {
 try {
     var a0 = c.accu;
     var a1 = c.stack[c.sp];
     var r = vm.prims [c.cur_code.get (c.pc)].call (vm, a0, a1);
     c.accu = r;
     c.sp += 1;
     c.pc++;
 } catch (e) {
     if (e == 0xEE1515EE) { c.pc++ ; c.sp += 1 ; return false; }
     if (e != 0xEE1664EE) throw e;
 }
 return true;
    },
    95: function (vm, c) {
 try {
     var a0 = c.accu;
     var a1 = c.stack[c.sp];
     var a2 = c.stack[c.sp + 1];
     var r =
     vm.prims [c.cur_code.get (c.pc)].call (vm, a0, a1, a2);
     c.accu = r;
     c.sp += 2;
     c.pc++;
 } catch (e) {
     if (e == 0xEE1515EE) { c.pc++ ; c.sp += 2 ; return false; }
     if (e != 0xEE1664EE) throw e;
 }
 return true;
    },
    96: function (vm, c) {
 try {
     var a0 = c.accu;
     var a1 = c.stack[c.sp];
     var a2 = c.stack[c.sp + 1];
     var a3 = c.stack[c.sp + 2];
     var r =
     vm.prims [c.cur_code.get (c.pc)].call (vm, a0, a1, a2, a3);
     c.accu = r;
     c.sp += 3;
     c.pc++;
 } catch (e) {
     if (e == 0xEE1515EE) { c.pc++ ; c.sp += 3 ; return false; }
     if (e != 0xEE1664EE) throw e;
 }
 return true;
    },
    97: function (vm, c) {
 try {
     var a0 = c.accu;
     var a1 = c.stack[c.sp];
     var a2 = c.stack[c.sp + 1];
     var a3 = c.stack[c.sp + 2];
     var a4 = c.stack[c.sp + 3];
     var r =
     vm.prims [c.cur_code.get (c.pc)].call (vm,a0,a1,a2,a3,a4);
     c.accu = r;
     c.sp += 4;
     c.pc++;
 } catch (e) {
     if (e == 0xEE1515EE) { c.pc++ ; c.sp += 4 ; return false; }
     if (e != 0xEE1664EE) throw e;
 }
 return true;
    },
    98: function (vm, c) {
 try {
     var nargs = c.cur_code.get (c.pc++);
     c.stack[--c.sp] = c.accu;
     var args = new Array ();
     for (var i = 0;i < nargs;i++) {
  args[i] = c.stack[c.sp + i];
     }
     var r =
     vm.prims [c.cur_code.get (c.pc)].call (vm, args, nargs);
     c.accu = r;
     c.sp += nargs;
     c.pc++;
 } catch (e) {
     if (e == 0xEE1515EE) { c.pc++ ; c.sp += nargs ; return false; }
     if (e != 0xEE1664EE) throw e;
 }
 return true;
    },
    99: function (vm, c) {
 c.accu = 0;
 return true;
    },
    100: function (vm, c) {
 c.accu = 1;
 return true;
    },
    101: function (vm, c) {
 c.accu = 2;
 return true;
    },
    102: function (vm, c) {
 c.accu = 3;
 return true;
    },
    103: function (vm, c) {
 c.accu = c.cur_code.get (c.pc);
 c.pc++;
 return true;
    },
    104: function (vm, c) {
 c.stack[--c.sp] = c.accu;
 c.accu = 0;
 return true;
    },
    105: function (vm, c) {
 c.stack[--c.sp] = c.accu;
 c.accu = 1;
 return true;
    },
    106: function (vm, c) {
 c.stack[--c.sp] = c.accu;
 c.accu = 2;
 return true;
    },
    107: function (vm, c) {
 c.stack[--c.sp] = c.accu;
 c.accu = 3;
 return true;
    },
    108: function (vm, c) {
 c.stack[--c.sp] = c.accu;
 c.accu = c.cur_code.get (c.pc);
        c.pc++;
 return true;
    },
    109: function (vm, c) {
 c.accu = ((-c.accu) & (-1));
 return true;
    },
    110: function (vm, c) {
 c.accu = ((c.accu + c.stack[c.sp++]) & (-1));
 return true;
    },
    111: function (vm, c) {
 c.accu = ((c.accu - c.stack[c.sp++]) & (-1));
 return true;
    },
    112: function (vm, c) {
 c.accu = ((c.accu * c.stack[c.sp++]) & (-1));
 return true;
    },
    113: function (vm, c) {
 c.accu = ((c.accu / c.stack[c.sp++]) & (-1));
 return true;
    },
    114: function (vm, c) {
 c.accu = ((c.accu % c.stack[c.sp++]) & (-1));
 return true;
    },
    115: function (vm, c) {
 c.accu = c.accu & c.stack[c.sp++];
 return true;
    },
    116: function (vm, c) {
 c.accu = c.accu | c.stack[c.sp++];
 return true;
    },
    117: function (vm, c) {
 c.accu = c.accu ^ c.stack[c.sp++];
 return true;
    },
    118: function (vm, c) {
 c.accu = ((c.accu << c.stack[c.sp++]) & (-1));
 return true;
    },
    119: function (vm, c) {
 c.accu = ((c.accu >>> c.stack[c.sp++]) & (-1));
 return true;
    },
    120: function (vm, c) {
 c.accu = ((c.accu >> c.stack[c.sp++]) & (-1));
 return true;
    },
    121: function (vm, c) {
 c.accu = (c.accu == c.stack[c.sp++]?1:0);
 return true;
    },
    122: function (vm, c) {
 c.accu = (c.accu != c.stack[c.sp++]?1:0);
 return true;
    },
    123: function (vm, c) {
 c.accu = (c.accu < c.stack[c.sp++]?1:0);
 return true;
    },
    124: function (vm, c) {
 c.accu = (c.accu <= c.stack[c.sp++]?1:0);
 return true;
    },
    125: function (vm, c) {
 c.accu = (c.accu > c.stack[c.sp++]?1:0);
 return true;
    },
    126: function (vm, c) {
 c.accu = (c.accu >= c.stack[c.sp++]?1:0);
 return true;
    },
    127: function (vm, c) {
 c.accu = ((c.accu + c.cur_code.get (c.pc)) & (-1));
 c.pc++;
 return true;
    },
    128: function (vm, c) {
 c.accu.set (0, ((c.accu.get (0) + c.cur_code.get (c.pc)) & (-1)));
 c.accu = 0;
 c.pc++;
 return true;
    },
    129: function (vm, c) {
 c.accu = (!(c.accu instanceof Block));
 return true;
    },
    130: function (vm, c) {
 c.accu = c.stack[c.sp].get (0).get (c.accu);
 return true;
    },
    131: function (vm, c) {
 if (c.cur_code.get (c.pc++) == c.accu) {
     c.pc += c.cur_code.get (c.pc);
 } else {
     c.pc++;
 }
 return true;
    },
    132: function (vm, c) {
 if (c.cur_code.get (c.pc++) != c.accu) {
     c.pc += c.cur_code.get (c.pc);
 } else {
     c.pc++;
 }
 return true;
    },
    133: function (vm, c) {
 if (c.cur_code.get (c.pc++) < c.accu) {
     c.pc += c.cur_code.get (c.pc);
 } else {
     c.pc++;
 }
 return true;
    },
    134: function (vm, c) {
 if (c.cur_code.get (c.pc++) <= c.accu) {
     c.pc += c.cur_code.get (c.pc);
 } else {
     c.pc++;
 }
 return true;
    },
    135: function (vm, c) {
 if (c.cur_code.get (c.pc++) > c.accu) {
     c.pc += c.cur_code.get (c.pc);
 } else {
     c.pc++;
 }
 return true;
    },
    136: function (vm, c) {
 if (c.cur_code.get (c.pc++) >= c.accu) {
     c.pc += c.cur_code.get (c.pc);
 } else {
     c.pc++;
 }
 return true;
    },
    137: function (vm, c) {
 c.accu = (ult (c.accu, c.stack[c.sp++])?1:0);
 return true;
    },
    138: function (vm, c) {
 c.accu = (!ult (c.accu, c.stack[c.sp++])?1:0);
 return true;
    },
    139: function (vm, c) {
 if (ult(c.cur_code.get (c.pc++), c.accu)) {
     c.pc += c.cur_code.get (c.pc);
 } else {
     c.pc++;
 }
 return true;
    },
    140: function (vm, c) {
 if (!ult(c.cur_code.get (c.pc++), c.accu)) {
     c.pc += c.cur_code.get (c.pc);
 } else {
     c.pc++;
 }
 return true;
    },
    141: function (vm, c) {
 c.stack[--c.sp] = c.accu;
 c.accu = c.cur_code.get (c.pc);
 c.pc += 2;
 var meths = c.stack[c.sp].get (0);
 var li = 3;
 var hi = meths.get (0) * 2 + 1;
 while (li < hi) {
     var mi = ((li + hi) >> 1) | 1;
     if (c.accu < meths.get (mi))
   hi = mi - 2;
     else
   li = mi;
 }
 c.accu = meths.get (li - 1);
 return true;
    },
    142: function (vm, c) {
 var meths = c.stack[c.sp].get (0);
 var li = 3;
 var hi = meths.get (0) * 2 + 1;
 while (li < hi) {
     var mi = ((li + hi) >> 1) | 1;
     if (c.accu < meths.get (mi))
   hi = mi - 2;
     else
   li = mi;
 }
 c.accu = meths.get (li - 1);
 return true;
    },
    143: function (vm, c) {
 vm.thread_kill (c.pid);
 return false;
    },
    144: function (vm, c) {
 vm.thread_kill (c.pid);
 return false;
    },
    145: function (vm, c) {
 vm.thread_kill (c.pid);
 return false;
    }
};
VM.prototype.raise = function (e) {
    with (this.ctx) {
 accu = e;
 if (caml_trap_sp == -1) {
     basic_io_write ("Fatal error: " +
        string_from_value (accu.get(0).get(0))
        + (accu.size == 2
    ?(" " + repr (accu.get (1), 1000))
    :""));
     throw new Error ("Fatal");
     this.thread_kill (pid);
 } else {
     sp = caml_trap_sp;
     cur_code = (stack[sp].tag == 247 ? stack[sp].get (0):stack[sp]);
     pc = 0;
     caml_trap_sp = stack[sp + 1];
     env = stack[sp + 2];
     extra_args = stack[sp + 3];
     sp += 4;
     throw 0xEE1664EE;
 }
    }
}
VM.prototype.run = function () {
    if (this.status != 667) {
 this.status = 667;
 var vm = this;
 function sched_run () {
     var t1 = (new Date ()).getTime ();
     for (var i = 0;i < 50;i++) {
  for (var j = 0;j < 800000;j++) {
      if (vm.ctx == null) break;
      var c = vm.ctx;
      if (c.status == 43) {
   try {
       c.accu = c.iocontinuation ();
       c.status = 44;
       continue;
   } catch (e) {
       if (e == 0xEE1515EE) break;
       if (e != 0xEE1664EE) throw e;
       break;
   }
      } else {
   if (c.status != 44)
       break;
      }
      if (! i_tbl [c.cur_code.get (c.pc++)] (vm, c)) break;
  }
  var t2 = (new Date ()).getTime ();
  if (!vm.thread_yield ()) {
      vm.status = 668;
      break;
  }
  if (t2 - t1 > 2000) {
      t1 = t2;
      break;
  }
     }
     if (vm.status != 668)
  window.setTimeout (sched_run, 0);
 }
 sched_run ();
    }
}
VM.prototype.thread_notify_all = function (res) {
    var p = this.ctx;
    do {
 if (p.status == 45 && p.waiting_for == res) {
     p.status = 43;
     break;
 }
 p = p.n_ctx;
    } while (p != this.ctx);
    if (this.status == 668)
 this.run ();
}
VM.prototype.thread_notify_one = function (res) {
    var p = this.ctx;
    do {
 if (p.status == 45 && p.waiting_for == res) {
     p.status = 43;
     break;
 }
 p = p.n_ctx;
    } while (p != this.ctx);
    if (this.status == 668)
 this.run ();
}
VM.prototype.thread_wait = function (res, cont) {
    this.ctx.waiting_for = res;
    this.ctx.status = 45;
    this.ctx.iocontinuation = cont;
    throw 0xEE1515EE;
}
VM.prototype.thread_yield = function () {
    if (this.ctx == null)
 return false;
    var p = this.ctx.n_ctx;
    do {
 if (p.status <= 44) {
     this.ctx = p;
     return true;
 }
 p = p.n_ctx;
    } while (p != this.ctx);
    return false;
}
VM.prototype.thread_new = function (clos, arg1) {
    var t = {
 cur_code : clos.get (0),
 pc : 0,
 sp : 0,
 caml_trap_sp : -1,
 accu : ((arg1 == null) ? 0 : arg1),
 stack : new Array (),
  env : clos,
 extra_args : 0,
 status : 44,
 pid : this.max_pid
    };
    if (this.ctx == null) {
 t.n_ctx = t;
 t.p_ctx = t;
 this.ctx = t;
    } else {
 t.n_ctx = this.ctx.n_ctx;
 t.p_ctx = this.ctx;
 this.ctx.n_ctx.p_ctx = t;
 this.ctx.n_ctx = t;
    }
    return this.max_pid++;
}
VM.prototype.thread_kill = function (pid) {
    var p = this.ctx;
    do {
 if (p.pid == pid) {
     p.p_ctx.n_ctx = p.n_ctx;
     p.n_ctx.p_ctx = p.p_ctx;
     if (this.ctx == p) {
  if (p == p.n_ctx) {
      this.ctx = null;
  } else {
      this.ctx = p.n_ctx;
  }
     }
     return;
 }
 p = p.n_ctx;
    } while (p != this.ctx);
}
VM.prototype.thread_delay = function (millis) {
    function resume (vm, t) {
 return function () {
     t.status = 44;
     if (vm.status == 668)
  vm.run ();
 }
    }
    this.ctx.status = 46;
    window.setTimeout (resume (this, this.ctx), millis);
}
VM.prototype.thread_wakeup = function (pid) {
    var p = this.ctx;
    do {
 if (p.pid == pid) {
     p.status = 44;
     if (this.status == 668)
  this.run ();
 }
 p = p.n_ctx;
    } while (p != this.ctx);
}
var OUT_OF_MEMORY_EXN = 0;
var SYS_ERROR_EXN = 1;
var FAILURE_EXN = 2;
var INVALID_EXN = 3;
var END_OF_FILE_EXN = 4;
var ZERO_DIVIDE_EXN = 5;
var NOT_FOUND_EXN = 6;
var MATCH_FAILURE_EXN = 7;
var STACK_OVERFLOW_EXN = 8;
var SYS_BLOCKED_IO = 9;
var ASSERT_FAILURE_EXN = 10;
var UNDEFINED_RECURSIVE_MODULE_EXN = 11;
VM.prototype.raise_constant = function(tag) {
    var b = (new Block (1, 0));
    b.set(0, this.data.get (tag));
    this.raise (b);
}
VM.prototype.raise_with_arg = function (tag,val) {
    var b = (new Block (2, 0));
    b.set(0,this.data.get (tag));
    b.set(1,val);
    this.raise (b);
}
VM.prototype.raise_with_string = function (tag, msg) {
    var b = (new Block (2, 0));
    b.set(0,this.data.get (tag));
    b.set(1,value_from_string (msg));
    this.raise (b);
}
VM.prototype.invalid_arg = function (msg) {
    this.raise_with_string (INVALID_EXN, msg);
}
VM.prototype.failwith = function (msg) {
    this.raise_with_string (FAILURE_EXN, msg);
}
VM.prototype.array_bound_error = function () {
    this.invalid_arg ("index out of bounds");
}
VM.prototype.raise_end_of_file = function () {
    this.raise_constant (END_OF_FILE_EXN);
}
var MAGIC_CAML_CALLBACK = 987654321
var i_tbl_cb = []
for (i = 0;i <= 255; i++) {
    i_tbl_cb[i] = i_tbl[i];
}
i_tbl_cb[91] = function (vm, c) {
    if (c.caml_trap_sp == -1) {
 throw ([ 987654321 , c.accu ]);
    } else {
 c.sp = c.caml_trap_sp;
 c.cur_code = (c.stack[c.sp].tag == 247 ? c.stack[c.sp].get (0):c.stack[c.sp]);
 c.pc = 0;
 c.caml_trap_sp = c.stack[c.sp + 1];
 c.env = c.stack[c.sp + 2];
 c.extra_args = c.stack[c.sp + 3];
 c.sp += 4;
 return true;
    }
}
VM.prototype.callback = function (clos, args) {
    var code = (new Block (7, 0));
    var ctx = {
 cur_code : code,
 pc : 0,
 sp : 0,
 caml_trap_sp : -1,
 accu : 0,
 stack : new Array (),
  env : (new Block (0, 0)),
 extra_args : 0,
 status : 44,
 pid : 0
    } ;
    var narg = args.length;
    var octx = this.ctx ;
    this.ctx = ctx;
    ctx.sp -= narg + 4;
    for (i = 0; i < narg; i++)
 ctx.stack[ctx.sp + i] = args[i];
    ctx.stack[ctx.sp + narg] = code.shift (4);
    ctx.stack[ctx.sp + narg + 1] = 0;
    ctx.stack[ctx.sp + narg + 2] = 0;
    ctx.stack[ctx.sp + narg + 3] = clos;
    code.set (0, 8);
    code.set (1, narg + 3);
    code.set (2, 32);
    code.set (3, narg);
    code.set (4, 19);
    code.set (5, 1);
    code.set (6, 143);
    try {
 while (ctx.cur_code.get (ctx.pc) != 143) {
     if (! i_tbl_cb [ctx.cur_code.get (ctx.pc++)] (this, ctx)) {
  this.ctx = octx;
  this.failwith ("blocking functions in callbacks not supported");
     }
 }
    } catch (e) {
 this.ctx = octx;
 if (e[0] == 987654321) {
     this.raise (e[1]);
 } else {
     throw e;
 }
    }
    var r = ctx.accu;
    this.ctx = octx;
    return r;
}
VM.prototype.callback_method = function (obj, name, oargs) {
    var lab = plabel_jsstr (name);
    var meths = obj.get (0);
    var li = 3;
    var hi = meths.get (0) * 2 + 1;
    while (li < hi) {
 var mi = ((li + hi) >> 1) | 1;
 if (lab < meths.get (mi))
     hi = mi - 2;
 else
 li = mi;
    }
    var clos = meths.get (li - 1);
    var args = [obj];
    for (i = 0;i < oargs.length;i++) {
 args[i + 1] = oargs[i];
    }
    return this.callback(clos, args);
}
function exec_caml (url) {
    var argv = [];
    for (var i = 0;i < arguments.length - 1;i++)
 argv[i] = arguments[i+1].toString();
    var vm = new VM(url, argv) ;
    vm.run ();
    return vm ;
}
/***********************************************************************/
/*                              O'Browser                              */
/*                                                                     */
/*  Copyright 2008 Benjamin Canou. This file is distributed under the  */
/*  terms of the GNU Library General Public License described in file  */
/*  ../LICENSE.                                                        */
/*                                                                     */
/***********************************************************************/

// tags

var NO_SCAN_TAG = 251
var FORWARD_TAG = 250
var INFIX_TAG = 249
var OBJECT_TAG = 248
var CLOSURE_TAG = 247
var LAZY_TAG = 246
var ABSTRACT_TAG = 251
var STRING_TAG = 252
var DOUBLE_TAG = 253
var DOUBLE_ARRAY_TAG = 254
var CUSTOM_TAG = 255

// blocks

function is_block (b) { return (b instanceof Block); }
function block_tag (b) { return b.tag; }
function block_size (b) { return b.size; }
function mk_block(size, tag) { return (new Block (size, tag)); }
function field (b, n) { return b.get (n); }
function store_field (b, n, v) { return b.set(n, v); }

// immediates

var UNIT = 0
var FALSE = 0
var TRUE = 1
function mk_bool (v) { return (v?TRUE:FALSE); }
function mk_int (v) { return v; }
function is_long (b) { return (!(b instanceof Block)); }
function val_int (i) { return i; }
function int_val (v) { return v; }

// floats

function val_float (x)  { return box_float(x); }
function float_val (x)  { return x.get(0); }
function int_of_float (x) { return Math.round (x.get (0)); }

// strings

function val_string (s) { return value_from_string(s); }
function string_val (v) { return string_from_value(v); }

// exceptions

var MAGIC_CAML_EX = 0xEE1664EE
var MAGIC_CAML_CONT = 0xEE1515EE
function caml_catch (e) { if ((e == MAGIC_CAML_CONT) || (e == MAGIC_CAML_EX)) throw (e); }
