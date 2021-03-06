-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module ElmGithub.Enum.DeploymentOrderField exposing (DeploymentOrderField(..), decoder, list, toString)

import Json.Decode as Decode exposing (Decoder)


{-| Properties by which deployment connections can be ordered.

  - CreatedAt - Order collection by creation time

-}
type DeploymentOrderField
    = CreatedAt


list : List DeploymentOrderField
list =
    [ CreatedAt ]


decoder : Decoder DeploymentOrderField
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "CREATED_AT" ->
                        Decode.succeed CreatedAt

                    _ ->
                        Decode.fail ("Invalid DeploymentOrderField type, " ++ string ++ " try re-running the @dillonkearns/elm-graphql CLI ")
            )


{-| Convert from the union type representating the Enum to a string that the GraphQL server will recognize.
-}
toString : DeploymentOrderField -> String
toString enum =
    case enum of
        CreatedAt ->
            "CREATED_AT"
