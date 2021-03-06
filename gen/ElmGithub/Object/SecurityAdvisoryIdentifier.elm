-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module ElmGithub.Object.SecurityAdvisoryIdentifier exposing (type_, value)

import ElmGithub.InputObject
import ElmGithub.Interface
import ElmGithub.Object
import ElmGithub.Scalar
import ElmGithub.ScalarCodecs
import ElmGithub.Union
import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.Operation exposing (RootMutation, RootQuery, RootSubscription)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


{-| The identifier type, e.g. GHSA, CVE
-}
type_ : SelectionSet String ElmGithub.Object.SecurityAdvisoryIdentifier
type_ =
    Object.selectionForField "String" "type" [] Decode.string


{-| The identifier
-}
value : SelectionSet String ElmGithub.Object.SecurityAdvisoryIdentifier
value =
    Object.selectionForField "String" "value" [] Decode.string
