type content = (head list) * (field list)
and head =
    Require of utype
  | Provide of utype
and field = (info list) * utype
and info =
    Param of gtype
  | Type of gtype
  | Return of gtype
  | Enum of stype
  | Constructor
  | Extends of utype list
  | Private
  | Protected
and gtype = stype list
and stype = utype * (opt list)
and opt = Opt
and utype =
    Array of gtype
  | Star
  | Fun of gtype list
  | Other of string list

