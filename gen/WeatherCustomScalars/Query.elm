-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module WeatherCustomScalars.Query exposing (CurrentWeatherRequiredArguments, currentWeather)

import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.Operation exposing (RootMutation, RootQuery, RootSubscription)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode exposing (Decoder)
import WeatherCustomScalars.InputObject
import WeatherCustomScalars.Interface
import WeatherCustomScalars.Object
import WeatherCustomScalars.Scalar
import WeatherCustomScalars.ScalarCodecs
import WeatherCustomScalars.Union


type alias CurrentWeatherRequiredArguments =
    { city : String }


{-|

  - city -

-}
currentWeather : CurrentWeatherRequiredArguments -> SelectionSet decodesTo WeatherCustomScalars.Object.CurrentWeather -> SelectionSet decodesTo RootQuery
currentWeather requiredArgs object_ =
    Object.selectionForCompositeField "currentWeather" [ Argument.required "city" requiredArgs.city Encode.string ] object_ identity