-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module ElmGithub.Interface.Actor exposing (AvatarUrlOptionalArguments, Fragments, avatarUrl, fragments, login, maybeFragments, resourcePath, url)

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
    { onUser : SelectionSet decodesTo ElmGithub.Object.User
    , onOrganization : SelectionSet decodesTo ElmGithub.Object.Organization
    , onBot : SelectionSet decodesTo ElmGithub.Object.Bot
    }


{-| Build an exhaustive selection of type-specific fragments.
-}
fragments :
    Fragments decodesTo
    -> SelectionSet decodesTo ElmGithub.Interface.Actor
fragments selections =
    Object.exhuastiveFragmentSelection
        [ Object.buildFragment "User" selections.onUser
        , Object.buildFragment "Organization" selections.onOrganization
        , Object.buildFragment "Bot" selections.onBot
        ]


{-| Can be used to create a non-exhuastive set of fragments by using the record
update syntax to add `SelectionSet`s for the types you want to handle.
-}
maybeFragments : Fragments (Maybe decodesTo)
maybeFragments =
    { onUser = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onOrganization = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    , onBot = Graphql.SelectionSet.empty |> Graphql.SelectionSet.map (\_ -> Nothing)
    }


type alias AvatarUrlOptionalArguments =
    { size : OptionalArgument Int }


{-| A URL pointing to the actor's public avatar.

  - size - The size of the resulting square image.

-}
avatarUrl : (AvatarUrlOptionalArguments -> AvatarUrlOptionalArguments) -> SelectionSet ElmGithub.ScalarCodecs.Uri ElmGithub.Interface.Actor
avatarUrl fillInOptionals =
    let
        filledInOptionals =
            fillInOptionals { size = Absent }

        optionalArgs =
            [ Argument.optional "size" filledInOptionals.size Encode.int ]
                |> List.filterMap identity
    in
    Object.selectionForField "ScalarCodecs.Uri" "avatarUrl" optionalArgs (ElmGithub.ScalarCodecs.codecs |> ElmGithub.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| The username of the actor.
-}
login : SelectionSet String ElmGithub.Interface.Actor
login =
    Object.selectionForField "String" "login" [] Decode.string


{-| The HTTP path for this actor.
-}
resourcePath : SelectionSet ElmGithub.ScalarCodecs.Uri ElmGithub.Interface.Actor
resourcePath =
    Object.selectionForField "ScalarCodecs.Uri" "resourcePath" [] (ElmGithub.ScalarCodecs.codecs |> ElmGithub.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| The HTTP URL for this actor.
-}
url : SelectionSet ElmGithub.ScalarCodecs.Uri ElmGithub.Interface.Actor
url =
    Object.selectionForField "ScalarCodecs.Uri" "url" [] (ElmGithub.ScalarCodecs.codecs |> ElmGithub.Scalar.unwrapCodecs |> .codecUri |> .decoder)
