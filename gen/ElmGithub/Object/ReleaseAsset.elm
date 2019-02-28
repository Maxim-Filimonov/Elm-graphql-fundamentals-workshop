-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module ElmGithub.Object.ReleaseAsset exposing (contentType, createdAt, downloadCount, downloadUrl, id, name, release, size, updatedAt, uploadedBy, url)

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
import Graphql.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


{-| The asset's content-type
-}
contentType : SelectionSet String ElmGithub.Object.ReleaseAsset
contentType =
    Object.selectionForField "String" "contentType" [] Decode.string


{-| Identifies the date and time when the object was created.
-}
createdAt : SelectionSet ElmGithub.ScalarCodecs.DateTime ElmGithub.Object.ReleaseAsset
createdAt =
    Object.selectionForField "ScalarCodecs.DateTime" "createdAt" [] (ElmGithub.ScalarCodecs.codecs |> ElmGithub.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)


{-| The number of times this asset was downloaded
-}
downloadCount : SelectionSet Int ElmGithub.Object.ReleaseAsset
downloadCount =
    Object.selectionForField "Int" "downloadCount" [] Decode.int


{-| Identifies the URL where you can download the release asset via the browser.
-}
downloadUrl : SelectionSet ElmGithub.ScalarCodecs.Uri ElmGithub.Object.ReleaseAsset
downloadUrl =
    Object.selectionForField "ScalarCodecs.Uri" "downloadUrl" [] (ElmGithub.ScalarCodecs.codecs |> ElmGithub.Scalar.unwrapCodecs |> .codecUri |> .decoder)


{-| -}
id : SelectionSet ElmGithub.ScalarCodecs.Id ElmGithub.Object.ReleaseAsset
id =
    Object.selectionForField "ScalarCodecs.Id" "id" [] (ElmGithub.ScalarCodecs.codecs |> ElmGithub.Scalar.unwrapCodecs |> .codecId |> .decoder)


{-| Identifies the title of the release asset.
-}
name : SelectionSet String ElmGithub.Object.ReleaseAsset
name =
    Object.selectionForField "String" "name" [] Decode.string


{-| Release that the asset is associated with
-}
release : SelectionSet decodesTo ElmGithub.Object.Release -> SelectionSet (Maybe decodesTo) ElmGithub.Object.ReleaseAsset
release object_ =
    Object.selectionForCompositeField "release" [] object_ (identity >> Decode.nullable)


{-| The size (in bytes) of the asset
-}
size : SelectionSet Int ElmGithub.Object.ReleaseAsset
size =
    Object.selectionForField "Int" "size" [] Decode.int


{-| Identifies the date and time when the object was last updated.
-}
updatedAt : SelectionSet ElmGithub.ScalarCodecs.DateTime ElmGithub.Object.ReleaseAsset
updatedAt =
    Object.selectionForField "ScalarCodecs.DateTime" "updatedAt" [] (ElmGithub.ScalarCodecs.codecs |> ElmGithub.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)


{-| The user that performed the upload
-}
uploadedBy : SelectionSet decodesTo ElmGithub.Object.User -> SelectionSet decodesTo ElmGithub.Object.ReleaseAsset
uploadedBy object_ =
    Object.selectionForCompositeField "uploadedBy" [] object_ identity


{-| Identifies the URL of the release asset.
-}
url : SelectionSet ElmGithub.ScalarCodecs.Uri ElmGithub.Object.ReleaseAsset
url =
    Object.selectionForField "ScalarCodecs.Uri" "url" [] (ElmGithub.ScalarCodecs.codecs |> ElmGithub.Scalar.unwrapCodecs |> .codecUri |> .decoder)
