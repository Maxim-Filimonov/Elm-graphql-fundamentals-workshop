-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module ElmGithub.Enum.TeamOrderField exposing (TeamOrderField(..), decoder, list, toString)

import Json.Decode as Decode exposing (Decoder)


{-| Properties by which team connections can be ordered.

  - Name - Allows ordering a list of teams by name.

-}
type TeamOrderField
    = Name


list : List TeamOrderField
list =
    [ Name ]


decoder : Decoder TeamOrderField
decoder =
    Decode.string
        |> Decode.andThen
            (\string ->
                case string of
                    "NAME" ->
                        Decode.succeed Name

                    _ ->
                        Decode.fail ("Invalid TeamOrderField type, " ++ string ++ " try re-running the @dillonkearns/elm-graphql CLI ")
            )


{-| Convert from the union type representating the Enum to a string that the GraphQL server will recognize.
-}
toString : TeamOrderField -> String
toString enum =
    case enum of
        Name ->
            "NAME"
