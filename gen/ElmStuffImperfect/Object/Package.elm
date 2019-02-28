-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module ElmStuffImperfect.Object.Package exposing (author, summary, title, url, versions)

import ElmStuffImperfect.InputObject
import ElmStuffImperfect.Interface
import ElmStuffImperfect.Object
import ElmStuffImperfect.Scalar
import ElmStuffImperfect.ScalarCodecs
import ElmStuffImperfect.Union
import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.Operation exposing (RootMutation, RootQuery, RootSubscription)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


{-| -}
author : SelectionSet decodesTo ElmStuffImperfect.Object.Author -> SelectionSet (Maybe decodesTo) ElmStuffImperfect.Object.Package
author object_ =
    Object.selectionForCompositeField "author" [] object_ (identity >> Decode.nullable)


{-| -}
title : SelectionSet (Maybe String) ElmStuffImperfect.Object.Package
title =
    Object.selectionForField "(Maybe String)" "title" [] (Decode.string |> Decode.nullable)


{-| -}
summary : SelectionSet (Maybe String) ElmStuffImperfect.Object.Package
summary =
    Object.selectionForField "(Maybe String)" "summary" [] (Decode.string |> Decode.nullable)


{-| -}
versions : SelectionSet (Maybe (List (Maybe String))) ElmStuffImperfect.Object.Package
versions =
    Object.selectionForField "(Maybe (List (Maybe String)))" "versions" [] (Decode.string |> Decode.nullable |> Decode.list |> Decode.nullable)


{-| -}
url : SelectionSet (Maybe String) ElmStuffImperfect.Object.Package
url =
    Object.selectionForField "(Maybe String)" "url" [] (Decode.string |> Decode.nullable)