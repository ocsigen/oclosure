(*
 * Module goog.debug.Debug
 * Logging and debugging utilities
 * Bozman Cagdas - 2010
 *)

(** Fonction anonyme **)
type f

(** JSOO.obj **)
type element = JSOO.obj

(** JSOO.obj | String **)
type error = JSOO.obj (* TODO : Check this type*)

(** The array **)
type array = JSOO.obj (* TODO : Check this type*)

(** Number **)
type number = JSOO.obj (*TODO : Check this type *)

class external debug : 
  <
  (** Catches onerror events fired by windows and similar objects **)
  catchErrors: f -> bool -> element;
 
 (** Creates a string representing a given primitive or object, and for an
   * object, all its properties and nested objects.  WARNING: If an object is
   * given, it and all its nested objects will be modified.  To detect reference
   * cycles, this method identifies objects using goog.getHashCode(), so every
   * object it touches will gain a property whose name begins with
   * 'closure_hashCode_'.
   **)
 deepExpose: element -> bool -> string;

 (** Converts an object to an Error if it's a String,
   * adds a stacktrace if there isn't one,
   * and optionally adds an extra message.
   **)
 enhanceError: error -> string -> error;

 (** Creates a string representing an object and all its properties **)
 expose: JSOO.obj -> bool -> string;

 (** Recursively outputs a nested array as a string **)
 exposeArray: array -> string;

 (** Exposes an exception that has been caught by a 
   * try...catch and outputs the error with a stack trace.
   **)
 exposeException: JSOO.obj -> f -> string;

 (** Gets a function name **)
 getFunctionName: f -> string;

 (** Gets the current stack trace, either starting from the caller or starting
   * from a specified function that's currently on the call stack.
   **)
 getStacktrace: f -> string;

 (** Gets the current stack trace. Simple and iterative - doesn't worry about
   * catching circular references or getting the args.
   **)
 getStracktraceSimple: number -> string;

 (** Makes whitespace visible by replacing it with printable characters.
   * This is useful in finding diffrences between the expected and the actual
   * output strings of a testcase.
   **)
 makeWhitespaceVisible: string -> string;

 (** Exposes an exception that has been caught by a try...catch and outputs the
   * error with a stack trace. 
   **)
 normalizeErrorObject: JSOO.obj -> f -> JSOO.obj
  >
