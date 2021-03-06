-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module ElmGithub.Object.UserContentEdit exposing (createdAt, deletedAt, deletedBy, diff, editedAt, editor, id, updatedAt)

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


{-| Identifies the date and time when the object was created.
-}
createdAt : SelectionSet ElmGithub.ScalarCodecs.DateTime ElmGithub.Object.UserContentEdit
createdAt =
    Object.selectionForField "ScalarCodecs.DateTime" "createdAt" [] (ElmGithub.ScalarCodecs.codecs |> ElmGithub.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)


{-| Identifies the date and time when the object was deleted.
-}
deletedAt : SelectionSet (Maybe ElmGithub.ScalarCodecs.DateTime) ElmGithub.Object.UserContentEdit
deletedAt =
    Object.selectionForField "(Maybe ScalarCodecs.DateTime)" "deletedAt" [] (ElmGithub.ScalarCodecs.codecs |> ElmGithub.Scalar.unwrapCodecs |> .codecDateTime |> .decoder |> Decode.nullable)


{-| The actor who deleted this content
-}
deletedBy : SelectionSet decodesTo ElmGithub.Interface.Actor -> SelectionSet (Maybe decodesTo) ElmGithub.Object.UserContentEdit
deletedBy object_ =
    Object.selectionForCompositeField "deletedBy" [] object_ (identity >> Decode.nullable)


{-| A summary of the changes for this edit
-}
diff : SelectionSet (Maybe String) ElmGithub.Object.UserContentEdit
diff =
    Object.selectionForField "(Maybe String)" "diff" [] (Decode.string |> Decode.nullable)


{-| When this content was edited
-}
editedAt : SelectionSet ElmGithub.ScalarCodecs.DateTime ElmGithub.Object.UserContentEdit
editedAt =
    Object.selectionForField "ScalarCodecs.DateTime" "editedAt" [] (ElmGithub.ScalarCodecs.codecs |> ElmGithub.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)


{-| The actor who edited this content
-}
editor : SelectionSet decodesTo ElmGithub.Interface.Actor -> SelectionSet (Maybe decodesTo) ElmGithub.Object.UserContentEdit
editor object_ =
    Object.selectionForCompositeField "editor" [] object_ (identity >> Decode.nullable)


{-| -}
id : SelectionSet ElmGithub.ScalarCodecs.Id ElmGithub.Object.UserContentEdit
id =
    Object.selectionForField "ScalarCodecs.Id" "id" [] (ElmGithub.ScalarCodecs.codecs |> ElmGithub.Scalar.unwrapCodecs |> .codecId |> .decoder)


{-| Identifies the date and time when the object was last updated.
-}
updatedAt : SelectionSet ElmGithub.ScalarCodecs.DateTime ElmGithub.Object.UserContentEdit
updatedAt =
    Object.selectionForField "ScalarCodecs.DateTime" "updatedAt" [] (ElmGithub.ScalarCodecs.codecs |> ElmGithub.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)
