type token =
    | LInt of int
    | LString of string
    | LEmpty of unit
    | LVariable of string
    | LFunction of string * token list ;;
    
let display tok =
    match tok with
    | LInt (t) -> print_string ("( " ^ (string_of_int t) ^ " )")
    | LString (t) | LVariable (t) -> print_string t
    | LEmpty (_) -> print_string "()"
    | _ -> print_string "" ;;

display (LInt(5)) ;;