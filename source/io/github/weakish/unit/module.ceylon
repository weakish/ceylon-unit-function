"""This module provides the `Unit` function return type.

   Ceylon uses `void` keywords to mark functions with pure side effects.

   Unlike many functional languages, void functions in Ceylon does not
   returns `Unit`. In fact they return `Anything` (the root supertype
   of all Ceylon types).

   This allows to use other non-void functions where void functions are expected,
   and other non-void functions to accept void function as parameter.

   This `Anything` approach is flexible,
   but it may not fit in a more disciplined coding style.
   For example, if non-void functions are used where void functions are expected,
   then we are using side effects with non-void functions.
   So the non-void functions do not only return a value specified by its return type,
   but also exposing side effects to the outer environment. And Ceylon's type system
   does not provide a mechanism to distinguish `T function` just returning `T` and
   `T functions` also exposing side effects (a.k.a something like `T|SideEffect`).

   This may cause problems under certain conditions and sometimes we may want a more
   strict return type for pure side effect functions.

   Thus comes this module.

   To use this module, simply import `Unit` and `unit` in your module,
   and replace `void` with `Unit`, adding additional `return unit;` statement
   in function body.

   Example:

   ```ceylon
   Unit f() {
       print("Returns Unit.");
       return unit;
   }

   shared void run() {
       f();
   }
   ```
"""
module io.github.weakish.unit "0.0.0" {}
