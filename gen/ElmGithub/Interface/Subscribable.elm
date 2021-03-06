-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module ElmGithub.Interface.Subscribable exposing (Fragments, fragments, id, maybeFragments, viewerCanSubscribe, viewerSubscription)

import ElmGithub.Enum.SubscriptionState
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
import Graphql.SelectionSet exposing (FragmentSelectionSet(..), SelectionSet(..))
import Json.Decode as Decode


type alias Fragments decodesTo =
    { onRepository : SelectionSet decodesTo ElmGithub.Object.Repository
    , onIssue : SelectionSet decodesTo ElmGithub.Object.Issue
    , onCommit : SelectionSet decodesTo ElmGithub.Object.Commit
    , onPullRequest : SelectionSet decodesTo ElmGithub.Object.PullRequest
    , onTeam : SelectionSet decodesTo ElmGithub.Object.Team
    }


{-| Build an exhaustive selection of type-specific fragments.
-}
fragments :
    Fragments decodesTo
    -> SelectionSet decodesTo ElmGithub.Interface.Subscribable
fragments selections =
    Object.exhuastiveFragmentSelection
        [ Object.buildFragment "Repository" selections.onRepository
        , Object.buildFragment "Issue" selections.onIssue
        , Object.buildFragment "Commit" selections.onCommit
        , Object.buildFragment "PullRequest" selections.onPullRequest
        , Object.buildFragment "Team" selections.onTeam
        ]


{-| Can be used to create a non-exhuastive set of fragments by using the record
update syntax to add `SelectionSet`s for the types you want to handle.
-}
maybeFragments : Fragments (Maybe decodesTo)
maybeFragments =
    { onRepository = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onIssue = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onCommit = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onPullRequest = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onTeam = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    }


{-| -}
id : SelectionSet ElmGithub.ScalarCodecs.Id ElmGithub.Interface.Subscribable
id =
    Object.selectionForField "ScalarCodecs.Id" "id" [] (ElmGithub.ScalarCodecs.codecs |> ElmGithub.Scalar.unwrapCodecs |> .codecId |> .decoder)


{-| Check if the viewer is able to change their subscription status for the repository.
-}
viewerCanSubscribe : SelectionSet Bool ElmGithub.Interface.Subscribable
viewerCanSubscribe =
    Object.selectionForField "Bool" "viewerCanSubscribe" [] Decode.bool


{-| Identifies if the viewer is watching, not watching, or ignoring the subscribable entity.
-}
viewerSubscription : SelectionSet (Maybe ElmGithub.Enum.SubscriptionState.SubscriptionState) ElmGithub.Interface.Subscribable
viewerSubscription =
    Object.selectionForField "(Maybe Enum.SubscriptionState.SubscriptionState)" "viewerSubscription" [] (ElmGithub.Enum.SubscriptionState.decoder |> Decode.nullable)
