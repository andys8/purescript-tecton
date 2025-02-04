{-

This example does not compile because pseudo-elements do not exist in the DOM
tree and therefore cannot have descendants.

See https://www.w3.org/TR/selectors-4/#pseudo-element-attachment for more
information.

-}

module TypeError.SelectorPseudoElementDescendant where

import Tecton (CSS, after, nil, universal, width, (&:), (:=), (?), (|*))
import Tecton.Rule as Rule

css :: CSS
css =
  universal &: after |* universal ? Rule.do
    width := nil
