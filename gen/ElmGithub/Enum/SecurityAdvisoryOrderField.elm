-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module ElmGithub.Enum.SecurityAdvisoryOrderField exposing (SecurityAdvisoryOrderField(..), decoder, list, toString)

import Json.Decode as Decode exposing (Decoder)


{-| Properties by which security advisory connections can be ordered.

  - PublishedAt - Order advisories by publication time
  - UpdatedAt - Order advisories by update time

-}
type SecurityAdvisoryOrderField
    = PublishedAt
    | UpdatedAt


list : List SecurityAdvisoryOrderField
list =
    [ PublishedAt, UpdatedAt ]


decoder : Decoder SecurityAdvisoryOrderField
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "PUBLISHED_AT" ->
                        Decode.succeed PublishedAt

                    "UPDATED_AT" ->
                        Decode.succeed UpdatedAt

                    _ ->
                        Decode.fail ("Invalid SecurityAdvisoryOrderField type, " ++ string ++ " try re-running the @dillonkearns/elm-graphql CLI ")
            )


{-| Convert from the union type representating the Enum to a string that the GraphQL server will recognize.
-}
toString : SecurityAdvisoryOrderField -> String
toString enum =
    case enum of
        PublishedAt ->
            "PUBLISHED_AT"

        UpdatedAt ->
            "UPDATED_AT"
