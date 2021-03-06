-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module ElmGithub.Object.CodeOfConduct exposing (body, id, key, name, resourcePath, url)

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


{-| The body of the Code of Conduct
-}
body : SelectionSet (Maybe String) ElmGithub.Object.CodeOfConduct
body =
    Object.selectionForField "(Maybe String)" "body" [] (Decode.string |> Decode.nullable)


{-| -}
id : SelectionSet ElmGithub.ScalarCodecs.Id ElmGithub.Object.CodeOfConduct
id =
    Object.selectionForField "ScalarCodecs.Id" "id" [] (ElmGithub.ScalarCodecs.codecs |> ElmGithub.Scalar.unwrapCodecs |> .codecId |> .decoder)


{-| The key for the Code of Conduct
-}
key : SelectionSet String ElmGithub.Object.CodeOfConduct
key =
    Object.selectionForField "String" "key" [] Decode.string


{-| The formal name of the Code of Conduct
-}
name : SelectionSet String ElmGithub.Object.CodeOfConduct
name =
    Object.selectionForField "String" "name" [] Decode.string


{-| The HTTP path for this Code of Conduct
-}
resourcePath : SelectionSet (Maybe ElmGithub.ScalarCodecs.Uri) ElmGithub.Object.CodeOfConduct
resourcePath =
    Object.selectionForField "(Maybe ScalarCodecs.Uri)" "resourcePath" [] (ElmGithub.ScalarCodecs.codecs |> ElmGithub.Scalar.unwrapCodecs |> .codecUri |> .decoder |> Decode.nullable)


{-| The HTTP URL for this Code of Conduct
-}
url : SelectionSet (Maybe ElmGithub.ScalarCodecs.Uri) ElmGithub.Object.CodeOfConduct
url =
    Object.selectionForField "(Maybe ScalarCodecs.Uri)" "url" [] (ElmGithub.ScalarCodecs.codecs |> ElmGithub.Scalar.unwrapCodecs |> .codecUri |> .decoder |> Decode.nullable)
