-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.SmimeSignature exposing (email, isValid, payload, signature, signer, state)

import Github.Enum.GitSignatureState
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


{-| Email used to sign this object.
-}
email : SelectionSet String Github.Object.SmimeSignature
email =
    Object.selectionForField "String" "email" [] Decode.string


{-| True if the signature is valid and verified by GitHub.
-}
isValid : SelectionSet Bool Github.Object.SmimeSignature
isValid =
    Object.selectionForField "Bool" "isValid" [] Decode.bool


{-| Payload for GPG signing object. Raw ODB object without the signature header.
-}
payload : SelectionSet String Github.Object.SmimeSignature
payload =
    Object.selectionForField "String" "payload" [] Decode.string


{-| ASCII-armored signature header from object.
-}
signature : SelectionSet String Github.Object.SmimeSignature
signature =
    Object.selectionForField "String" "signature" [] Decode.string


{-| GitHub user corresponding to the email signing this commit.
-}
signer : SelectionSet decodesTo Github.Object.User -> SelectionSet (Maybe decodesTo) Github.Object.SmimeSignature
signer object_ =
    Object.selectionForCompositeField "signer" [] object_ (identity >> Decode.nullable)


{-| The state of this signature. `VALID` if signature is valid and verified by GitHub, otherwise represents reason why signature is considered invalid.
-}
state : SelectionSet Github.Enum.GitSignatureState.GitSignatureState Github.Object.SmimeSignature
state =
    Object.selectionForField "Enum.GitSignatureState.GitSignatureState" "state" [] Github.Enum.GitSignatureState.decoder
