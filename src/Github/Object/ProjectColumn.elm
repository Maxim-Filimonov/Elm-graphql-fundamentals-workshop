-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.ProjectColumn exposing (CardsOptionalArguments, cards, createdAt, databaseId, id, name, project, resourcePath, updatedAt, url)

import Github.InputObject
import Github.Interface
import Github.Object
import Github.Scalar
import Github.ScalarDecoders
import Github.Union
import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.Operation exposing (RootMutation, RootQuery, RootSubscription)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


type alias CardsOptionalArguments =
    { first : OptionalArgument Int
    , after : OptionalArgument String
    , last : OptionalArgument Int
    , before : OptionalArgument String
    }


{-| List of cards in the column

  - first - Returns the first _n_ elements from the list.
  - after - Returns the elements in the list that come after the specified global ID.
  - last - Returns the last _n_ elements from the list.
  - before - Returns the elements in the list that come before the specified global ID.

-}
cards : (CardsOptionalArguments -> CardsOptionalArguments) -> SelectionSet decodesTo Github.Object.ProjectCardConnection -> SelectionSet decodesTo Github.Object.ProjectColumn
cards fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { first = Absent, after = Absent, last = Absent, before = Absent }

        optionalArgs =
            [ Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "last" filledInOptionals.last Encode.int, Argument.optional "before" filledInOptionals.before Encode.string ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "cards" optionalArgs object_ identity


{-| Identifies the date and time when the object was created.
-}
createdAt : SelectionSet Github.ScalarDecoders.DateTime Github.Object.ProjectColumn
createdAt =
    Object.selectionForField "ScalarDecoders.DateTime" "createdAt" [] (Github.ScalarDecoders.decoders |> Github.Scalar.unwrapDecoders |> .decoderDateTime)


{-| Identifies the primary key from the database.
-}
databaseId : SelectionSet (Maybe Int) Github.Object.ProjectColumn
databaseId =
    Object.selectionForField "(Maybe Int)" "databaseId" [] (Decode.int |> Decode.nullable)


id : SelectionSet Github.ScalarDecoders.Id Github.Object.ProjectColumn
id =
    Object.selectionForField "ScalarDecoders.Id" "id" [] (Github.ScalarDecoders.decoders |> Github.Scalar.unwrapDecoders |> .decoderId)


{-| The project column's name.
-}
name : SelectionSet String Github.Object.ProjectColumn
name =
    Object.selectionForField "String" "name" [] Decode.string


{-| The project that contains this column.
-}
project : SelectionSet decodesTo Github.Object.Project -> SelectionSet decodesTo Github.Object.ProjectColumn
project object_ =
    Object.selectionForCompositeField "project" [] object_ identity


{-| The HTTP path for this project column
-}
resourcePath : SelectionSet Github.ScalarDecoders.Uri Github.Object.ProjectColumn
resourcePath =
    Object.selectionForField "ScalarDecoders.Uri" "resourcePath" [] (Github.ScalarDecoders.decoders |> Github.Scalar.unwrapDecoders |> .decoderUri)


{-| Identifies the date and time when the object was last updated.
-}
updatedAt : SelectionSet Github.ScalarDecoders.DateTime Github.Object.ProjectColumn
updatedAt =
    Object.selectionForField "ScalarDecoders.DateTime" "updatedAt" [] (Github.ScalarDecoders.decoders |> Github.Scalar.unwrapDecoders |> .decoderDateTime)


{-| The HTTP URL for this project column
-}
url : SelectionSet Github.ScalarDecoders.Uri Github.Object.ProjectColumn
url =
    Object.selectionForField "ScalarDecoders.Uri" "url" [] (Github.ScalarDecoders.decoders |> Github.Scalar.unwrapDecoders |> .decoderUri)
