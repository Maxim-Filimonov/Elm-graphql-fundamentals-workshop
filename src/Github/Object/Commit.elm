-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.Commit exposing (BlameRequiredArguments, CommentsOptionalArguments, HistoryOptionalArguments, ParentsOptionalArguments, abbreviatedOid, additions, author, authoredByCommitter, authoredDate, blame, changedFiles, comments, commitResourcePath, commitUrl, committedDate, committedViaWeb, committer, deletions, history, id, message, messageBody, messageBodyHTML, messageHeadline, messageHeadlineHTML, oid, parents, pushedDate, repository, resourcePath, signature, status, tarballUrl, tree, treeResourcePath, treeUrl, url, viewerCanSubscribe, viewerSubscription, zipballUrl)

import Github.Enum.SubscriptionState
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


{-| An abbreviated version of the Git object ID
-}
abbreviatedOid : SelectionSet String Github.Object.Commit
abbreviatedOid =
    Object.selectionForField "String" "abbreviatedOid" [] Decode.string


{-| The number of additions in this commit.
-}
additions : SelectionSet Int Github.Object.Commit
additions =
    Object.selectionForField "Int" "additions" [] Decode.int


{-| Authorship details of the commit.
-}
author : SelectionSet decodesTo Github.Object.GitActor -> SelectionSet (Maybe decodesTo) Github.Object.Commit
author object_ =
    Object.selectionForCompositeField "author" [] object_ (identity >> Decode.nullable)


{-| Check if the committer and the author match.
-}
authoredByCommitter : SelectionSet Bool Github.Object.Commit
authoredByCommitter =
    Object.selectionForField "Bool" "authoredByCommitter" [] Decode.bool


{-| The datetime when this commit was authored.
-}
authoredDate : SelectionSet Github.ScalarDecoders.DateTime Github.Object.Commit
authoredDate =
    Object.selectionForField "ScalarDecoders.DateTime" "authoredDate" [] (Github.ScalarDecoders.decoders |> Github.Scalar.unwrapDecoders |> .decoderDateTime)


type alias BlameRequiredArguments =
    { path : String }


{-| Fetches `git blame` information.

  - path - The file whose Git blame information you want.

-}
blame : BlameRequiredArguments -> SelectionSet decodesTo Github.Object.Blame -> SelectionSet decodesTo Github.Object.Commit
blame requiredArgs object_ =
    Object.selectionForCompositeField "blame" [ Argument.required "path" requiredArgs.path Encode.string ] object_ identity


{-| The number of changed files in this commit.
-}
changedFiles : SelectionSet Int Github.Object.Commit
changedFiles =
    Object.selectionForField "Int" "changedFiles" [] Decode.int


type alias CommentsOptionalArguments =
    { first : OptionalArgument Int
    , after : OptionalArgument String
    , last : OptionalArgument Int
    , before : OptionalArgument String
    }


{-| Comments made on the commit.

  - first - Returns the first _n_ elements from the list.
  - after - Returns the elements in the list that come after the specified global ID.
  - last - Returns the last _n_ elements from the list.
  - before - Returns the elements in the list that come before the specified global ID.

-}
comments : (CommentsOptionalArguments -> CommentsOptionalArguments) -> SelectionSet decodesTo Github.Object.CommitCommentConnection -> SelectionSet decodesTo Github.Object.Commit
comments fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { first = Absent, after = Absent, last = Absent, before = Absent }

        optionalArgs =
            [ Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "last" filledInOptionals.last Encode.int, Argument.optional "before" filledInOptionals.before Encode.string ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "comments" optionalArgs object_ identity


{-| The HTTP path for this Git object
-}
commitResourcePath : SelectionSet Github.ScalarDecoders.Uri Github.Object.Commit
commitResourcePath =
    Object.selectionForField "ScalarDecoders.Uri" "commitResourcePath" [] (Github.ScalarDecoders.decoders |> Github.Scalar.unwrapDecoders |> .decoderUri)


{-| The HTTP URL for this Git object
-}
commitUrl : SelectionSet Github.ScalarDecoders.Uri Github.Object.Commit
commitUrl =
    Object.selectionForField "ScalarDecoders.Uri" "commitUrl" [] (Github.ScalarDecoders.decoders |> Github.Scalar.unwrapDecoders |> .decoderUri)


{-| The datetime when this commit was committed.
-}
committedDate : SelectionSet Github.ScalarDecoders.DateTime Github.Object.Commit
committedDate =
    Object.selectionForField "ScalarDecoders.DateTime" "committedDate" [] (Github.ScalarDecoders.decoders |> Github.Scalar.unwrapDecoders |> .decoderDateTime)


{-| Check if commited via GitHub web UI.
-}
committedViaWeb : SelectionSet Bool Github.Object.Commit
committedViaWeb =
    Object.selectionForField "Bool" "committedViaWeb" [] Decode.bool


{-| Committership details of the commit.
-}
committer : SelectionSet decodesTo Github.Object.GitActor -> SelectionSet (Maybe decodesTo) Github.Object.Commit
committer object_ =
    Object.selectionForCompositeField "committer" [] object_ (identity >> Decode.nullable)


{-| The number of deletions in this commit.
-}
deletions : SelectionSet Int Github.Object.Commit
deletions =
    Object.selectionForField "Int" "deletions" [] Decode.int


type alias HistoryOptionalArguments =
    { first : OptionalArgument Int
    , after : OptionalArgument String
    , last : OptionalArgument Int
    , before : OptionalArgument String
    , path : OptionalArgument String
    , author : OptionalArgument Github.InputObject.CommitAuthor
    , since : OptionalArgument Github.ScalarDecoders.GitTimestamp
    , until : OptionalArgument Github.ScalarDecoders.GitTimestamp
    }


{-| The linear commit history starting from (and including) this commit, in the same order as `git log`.

  - first - Returns the first _n_ elements from the list.
  - after - Returns the elements in the list that come after the specified global ID.
  - last - Returns the last _n_ elements from the list.
  - before - Returns the elements in the list that come before the specified global ID.
  - path - If non-null, filters history to only show commits touching files under this path.
  - author - If non-null, filters history to only show commits with matching authorship.
  - since - Allows specifying a beginning time or date for fetching commits.
  - until - Allows specifying an ending time or date for fetching commits.

-}
history : (HistoryOptionalArguments -> HistoryOptionalArguments) -> SelectionSet decodesTo Github.Object.CommitHistoryConnection -> SelectionSet decodesTo Github.Object.Commit
history fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { first = Absent, after = Absent, last = Absent, before = Absent, path = Absent, author = Absent, since = Absent, until = Absent }

        optionalArgs =
            [ Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "last" filledInOptionals.last Encode.int, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "path" filledInOptionals.path Encode.string, Argument.optional "author" filledInOptionals.author Github.InputObject.encodeCommitAuthor, Argument.optional "since" filledInOptionals.since (\(Github.Scalar.GitTimestamp raw) -> Encode.string raw), Argument.optional "until" filledInOptionals.until (\(Github.Scalar.GitTimestamp raw) -> Encode.string raw) ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "history" optionalArgs object_ identity


id : SelectionSet Github.ScalarDecoders.Id Github.Object.Commit
id =
    Object.selectionForField "ScalarDecoders.Id" "id" [] (Github.ScalarDecoders.decoders |> Github.Scalar.unwrapDecoders |> .decoderId)


{-| The Git commit message
-}
message : SelectionSet String Github.Object.Commit
message =
    Object.selectionForField "String" "message" [] Decode.string


{-| The Git commit message body
-}
messageBody : SelectionSet String Github.Object.Commit
messageBody =
    Object.selectionForField "String" "messageBody" [] Decode.string


{-| The commit message body rendered to HTML.
-}
messageBodyHTML : SelectionSet Github.ScalarDecoders.Html Github.Object.Commit
messageBodyHTML =
    Object.selectionForField "ScalarDecoders.Html" "messageBodyHTML" [] (Github.ScalarDecoders.decoders |> Github.Scalar.unwrapDecoders |> .decoderHtml)


{-| The Git commit message headline
-}
messageHeadline : SelectionSet String Github.Object.Commit
messageHeadline =
    Object.selectionForField "String" "messageHeadline" [] Decode.string


{-| The commit message headline rendered to HTML.
-}
messageHeadlineHTML : SelectionSet Github.ScalarDecoders.Html Github.Object.Commit
messageHeadlineHTML =
    Object.selectionForField "ScalarDecoders.Html" "messageHeadlineHTML" [] (Github.ScalarDecoders.decoders |> Github.Scalar.unwrapDecoders |> .decoderHtml)


{-| The Git object ID
-}
oid : SelectionSet Github.ScalarDecoders.GitObjectID Github.Object.Commit
oid =
    Object.selectionForField "ScalarDecoders.GitObjectID" "oid" [] (Github.ScalarDecoders.decoders |> Github.Scalar.unwrapDecoders |> .decoderGitObjectID)


type alias ParentsOptionalArguments =
    { first : OptionalArgument Int
    , after : OptionalArgument String
    , last : OptionalArgument Int
    , before : OptionalArgument String
    }


{-| The parents of a commit.

  - first - Returns the first _n_ elements from the list.
  - after - Returns the elements in the list that come after the specified global ID.
  - last - Returns the last _n_ elements from the list.
  - before - Returns the elements in the list that come before the specified global ID.

-}
parents : (ParentsOptionalArguments -> ParentsOptionalArguments) -> SelectionSet decodesTo Github.Object.CommitConnection -> SelectionSet decodesTo Github.Object.Commit
parents fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { first = Absent, after = Absent, last = Absent, before = Absent }

        optionalArgs =
            [ Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "last" filledInOptionals.last Encode.int, Argument.optional "before" filledInOptionals.before Encode.string ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "parents" optionalArgs object_ identity


{-| The datetime when this commit was pushed.
-}
pushedDate : SelectionSet (Maybe Github.ScalarDecoders.DateTime) Github.Object.Commit
pushedDate =
    Object.selectionForField "(Maybe ScalarDecoders.DateTime)" "pushedDate" [] (Github.ScalarDecoders.decoders |> Github.Scalar.unwrapDecoders |> .decoderDateTime |> Decode.nullable)


{-| The Repository this commit belongs to
-}
repository : SelectionSet decodesTo Github.Object.Repository -> SelectionSet decodesTo Github.Object.Commit
repository object_ =
    Object.selectionForCompositeField "repository" [] object_ identity


{-| The HTTP path for this commit
-}
resourcePath : SelectionSet Github.ScalarDecoders.Uri Github.Object.Commit
resourcePath =
    Object.selectionForField "ScalarDecoders.Uri" "resourcePath" [] (Github.ScalarDecoders.decoders |> Github.Scalar.unwrapDecoders |> .decoderUri)


{-| Commit signing information, if present.
-}
signature : SelectionSet decodesTo Github.Interface.GitSignature -> SelectionSet (Maybe decodesTo) Github.Object.Commit
signature object_ =
    Object.selectionForCompositeField "signature" [] object_ (identity >> Decode.nullable)


{-| Status information for this commit
-}
status : SelectionSet decodesTo Github.Object.Status -> SelectionSet (Maybe decodesTo) Github.Object.Commit
status object_ =
    Object.selectionForCompositeField "status" [] object_ (identity >> Decode.nullable)


{-| Returns a URL to download a tarball archive for a repository. Note: For private repositories, these links are temporary and expire after five minutes.
-}
tarballUrl : SelectionSet Github.ScalarDecoders.Uri Github.Object.Commit
tarballUrl =
    Object.selectionForField "ScalarDecoders.Uri" "tarballUrl" [] (Github.ScalarDecoders.decoders |> Github.Scalar.unwrapDecoders |> .decoderUri)


{-| Commit's root Tree
-}
tree : SelectionSet decodesTo Github.Object.Tree -> SelectionSet decodesTo Github.Object.Commit
tree object_ =
    Object.selectionForCompositeField "tree" [] object_ identity


{-| The HTTP path for the tree of this commit
-}
treeResourcePath : SelectionSet Github.ScalarDecoders.Uri Github.Object.Commit
treeResourcePath =
    Object.selectionForField "ScalarDecoders.Uri" "treeResourcePath" [] (Github.ScalarDecoders.decoders |> Github.Scalar.unwrapDecoders |> .decoderUri)


{-| The HTTP URL for the tree of this commit
-}
treeUrl : SelectionSet Github.ScalarDecoders.Uri Github.Object.Commit
treeUrl =
    Object.selectionForField "ScalarDecoders.Uri" "treeUrl" [] (Github.ScalarDecoders.decoders |> Github.Scalar.unwrapDecoders |> .decoderUri)


{-| The HTTP URL for this commit
-}
url : SelectionSet Github.ScalarDecoders.Uri Github.Object.Commit
url =
    Object.selectionForField "ScalarDecoders.Uri" "url" [] (Github.ScalarDecoders.decoders |> Github.Scalar.unwrapDecoders |> .decoderUri)


{-| Check if the viewer is able to change their subscription status for the repository.
-}
viewerCanSubscribe : SelectionSet Bool Github.Object.Commit
viewerCanSubscribe =
    Object.selectionForField "Bool" "viewerCanSubscribe" [] Decode.bool


{-| Identifies if the viewer is watching, not watching, or ignoring the subscribable entity.
-}
viewerSubscription : SelectionSet Github.Enum.SubscriptionState.SubscriptionState Github.Object.Commit
viewerSubscription =
    Object.selectionForField "Enum.SubscriptionState.SubscriptionState" "viewerSubscription" [] Github.Enum.SubscriptionState.decoder


{-| Returns a URL to download a zipball archive for a repository. Note: For private repositories, these links are temporary and expire after five minutes.
-}
zipballUrl : SelectionSet Github.ScalarDecoders.Uri Github.Object.Commit
zipballUrl =
    Object.selectionForField "ScalarDecoders.Uri" "zipballUrl" [] (Github.ScalarDecoders.decoders |> Github.Scalar.unwrapDecoders |> .decoderUri)
