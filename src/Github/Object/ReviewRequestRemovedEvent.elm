-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.ReviewRequestRemovedEvent exposing (actor, createdAt, id, pullRequest, requestedReviewer, subject)

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
actor : SelectionSet decodesTo Github.Interface.Actor -> SelectionSet (Maybe decodesTo) Github.Object.ReviewRequestRemovedEvent
actor object_ =
    Object.selectionForCompositeField "actor" [] object_ (identity >> Decode.nullable)


{-| Identifies the date and time when the object was created.
-}
createdAt : SelectionSet Github.ScalarDecoders.DateTime Github.Object.ReviewRequestRemovedEvent
createdAt =
    Object.selectionForField "ScalarDecoders.DateTime" "createdAt" [] (Github.ScalarDecoders.decoders |> Github.Scalar.unwrapDecoders |> .decoderDateTime)


id : SelectionSet Github.ScalarDecoders.Id Github.Object.ReviewRequestRemovedEvent
id =
    Object.selectionForField "ScalarDecoders.Id" "id" [] (Github.ScalarDecoders.decoders |> Github.Scalar.unwrapDecoders |> .decoderId)


{-| PullRequest referenced by event.
-}
pullRequest : SelectionSet decodesTo Github.Object.PullRequest -> SelectionSet decodesTo Github.Object.ReviewRequestRemovedEvent
pullRequest object_ =
    Object.selectionForCompositeField "pullRequest" [] object_ identity


{-| Identifies the reviewer whose review request was removed.
-}
requestedReviewer : SelectionSet decodesTo Github.Union.RequestedReviewer -> SelectionSet (Maybe decodesTo) Github.Object.ReviewRequestRemovedEvent
requestedReviewer object_ =
    Object.selectionForCompositeField "requestedReviewer" [] object_ (identity >> Decode.nullable)


{-| Identifies the user whose review request was removed.
-}
subject : SelectionSet decodesTo Github.Object.User -> SelectionSet (Maybe decodesTo) Github.Object.ReviewRequestRemovedEvent
subject object_ =
    Object.selectionForCompositeField "subject" [] object_ (identity >> Decode.nullable)