-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Interface.Deletable exposing (Fragments, fragments, maybeFragments, viewerCanDelete)

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
import Graphql.SelectionSet exposing (FragmentSelectionSet(..), SelectionSet(..))
import Json.Decode as Decode


type alias Fragments decodesTo =
    { onCommitComment : SelectionSet decodesTo Github.Object.CommitComment
    , onGistComment : SelectionSet decodesTo Github.Object.GistComment
    , onIssueComment : SelectionSet decodesTo Github.Object.IssueComment
    , onPullRequestReview : SelectionSet decodesTo Github.Object.PullRequestReview
    , onPullRequestReviewComment : SelectionSet decodesTo Github.Object.PullRequestReviewComment
    }


{-| Build an exhaustive selection of type-specific fragments.
-}
fragments :
    Fragments decodesTo
    -> SelectionSet decodesTo Github.Interface.Deletable
fragments selections =
    Object.exhuastiveFragmentSelection
        [ Object.buildFragment "CommitComment" selections.onCommitComment
        , Object.buildFragment "GistComment" selections.onGistComment
        , Object.buildFragment "IssueComment" selections.onIssueComment
        , Object.buildFragment "PullRequestReview" selections.onPullRequestReview
        , Object.buildFragment "PullRequestReviewComment" selections.onPullRequestReviewComment
        ]


{-| Can be used to create a non-exhuastive set of fragments by using the record
update syntax to add `SelectionSet`s for the types you want to handle.
-}
maybeFragments : Fragments (Maybe decodesTo)
maybeFragments =
    { onCommitComment = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onGistComment = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onIssueComment = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onPullRequestReview = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onPullRequestReviewComment = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    }


{-| Check if the current viewer can delete this object.
-}
viewerCanDelete : SelectionSet Bool Github.Interface.Deletable
viewerCanDelete =
    Object.selectionForField "Bool" "viewerCanDelete" [] Decode.bool
