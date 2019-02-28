-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module ElmGithub.Object.SearchResultItemEdge exposing (cursor, node, textMatches)

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


{-| A cursor for use in pagination.
-}
cursor : SelectionSet String ElmGithub.Object.SearchResultItemEdge
cursor =
    Object.selectionForField "String" "cursor" [] Decode.string


{-| The item at the end of the edge.
-}
node : SelectionSet decodesTo ElmGithub.Union.SearchResultItem -> SelectionSet (Maybe decodesTo) ElmGithub.Object.SearchResultItemEdge
node object_ =
    Object.selectionForCompositeField "node" [] object_ (identity >> Decode.nullable)


{-| Text matches on the result found.
-}
textMatches : SelectionSet decodesTo ElmGithub.Object.TextMatch -> SelectionSet (Maybe (List (Maybe decodesTo))) ElmGithub.Object.SearchResultItemEdge
textMatches object_ =
    Object.selectionForCompositeField "textMatches" [] object_ (identity >> Decode.nullable >> Decode.list >> Decode.nullable)