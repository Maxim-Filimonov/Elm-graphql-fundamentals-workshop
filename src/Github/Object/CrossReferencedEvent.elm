-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.CrossReferencedEvent exposing (actor, createdAt, id, isCrossRepository, referencedAt, resourcePath, source, target, url, willCloseTarget)

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


{-| Identifies the actor who performed the event.
-}
actor : SelectionSet decodesTo Github.Interface.Actor -> SelectionSet (Maybe decodesTo) Github.Object.CrossReferencedEvent
actor object_ =
    Object.selectionForCompositeField "actor" [] object_ (identity >> Decode.nullable)


{-| Identifies the date and time when the object was created.
-}
createdAt : SelectionSet Github.ScalarDecoders.DateTime Github.Object.CrossReferencedEvent
createdAt =
    Object.selectionForField "ScalarDecoders.DateTime" "createdAt" [] (Github.ScalarDecoders.decoders |> Github.Scalar.unwrapDecoders |> .decoderDateTime)


id : SelectionSet Github.ScalarDecoders.Id Github.Object.CrossReferencedEvent
id =
    Object.selectionForField "ScalarDecoders.Id" "id" [] (Github.ScalarDecoders.decoders |> Github.Scalar.unwrapDecoders |> .decoderId)


{-| Reference originated in a different repository.
-}
isCrossRepository : SelectionSet Bool Github.Object.CrossReferencedEvent
isCrossRepository =
    Object.selectionForField "Bool" "isCrossRepository" [] Decode.bool


{-| Identifies when the reference was made.
-}
referencedAt : SelectionSet Github.ScalarDecoders.DateTime Github.Object.CrossReferencedEvent
referencedAt =
    Object.selectionForField "ScalarDecoders.DateTime" "referencedAt" [] (Github.ScalarDecoders.decoders |> Github.Scalar.unwrapDecoders |> .decoderDateTime)


{-| The HTTP path for this pull request.
-}
resourcePath : SelectionSet Github.ScalarDecoders.Uri Github.Object.CrossReferencedEvent
resourcePath =
    Object.selectionForField "ScalarDecoders.Uri" "resourcePath" [] (Github.ScalarDecoders.decoders |> Github.Scalar.unwrapDecoders |> .decoderUri)


{-| Issue or pull request that made the reference.
-}
source : SelectionSet decodesTo Github.Union.ReferencedSubject -> SelectionSet decodesTo Github.Object.CrossReferencedEvent
source object_ =
    Object.selectionForCompositeField "source" [] object_ identity


{-| Issue or pull request to which the reference was made.
-}
target : SelectionSet decodesTo Github.Union.ReferencedSubject -> SelectionSet decodesTo Github.Object.CrossReferencedEvent
target object_ =
    Object.selectionForCompositeField "target" [] object_ identity


{-| The HTTP URL for this pull request.
-}
url : SelectionSet Github.ScalarDecoders.Uri Github.Object.CrossReferencedEvent
url =
    Object.selectionForField "ScalarDecoders.Uri" "url" [] (Github.ScalarDecoders.decoders |> Github.Scalar.unwrapDecoders |> .decoderUri)


{-| Checks if the target will be closed when the source is merged.
-}
willCloseTarget : SelectionSet Bool Github.Object.CrossReferencedEvent
willCloseTarget =
    Object.selectionForField "Bool" "willCloseTarget" [] Decode.bool