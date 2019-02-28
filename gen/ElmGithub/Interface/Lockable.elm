-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module ElmGithub.Interface.Lockable exposing (Fragments, activeLockReason, fragments, locked, maybeFragments)

import ElmGithub.Enum.LockReason
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
    { onIssue : SelectionSet decodesTo ElmGithub.Object.Issue
    , onPullRequest : SelectionSet decodesTo ElmGithub.Object.PullRequest
    }


{-| Build an exhaustive selection of type-specific fragments.
-}
fragments :
    Fragments decodesTo
    -> SelectionSet decodesTo ElmGithub.Interface.Lockable
fragments selections =
    Object.exhuastiveFragmentSelection
        [ Object.buildFragment "Issue" selections.onIssue
        , Object.buildFragment "PullRequest" selections.onPullRequest
        ]


{-| Can be used to create a non-exhuastive set of fragments by using the record
update syntax to add `SelectionSet`s for the types you want to handle.
-}
maybeFragments : Fragments (Maybe decodesTo)
maybeFragments =
    { onIssue = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onPullRequest = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    }


{-| Reason that the conversation was locked.
-}
activeLockReason : SelectionSet (Maybe ElmGithub.Enum.LockReason.LockReason) ElmGithub.Interface.Lockable
activeLockReason =
    Object.selectionForField "(Maybe Enum.LockReason.LockReason)" "activeLockReason" [] (ElmGithub.Enum.LockReason.decoder |> Decode.nullable)


{-| `true` if the object is locked
-}
locked : SelectionSet Bool ElmGithub.Interface.Lockable
locked =
    Object.selectionForField "Bool" "locked" [] Decode.bool
