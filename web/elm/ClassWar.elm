module ClassWar where

import Html exposing (..)
import Html.Attributes exposing (class)
import Html.Events exposing (onClick)
import StartApp
import Effects exposing (Effects, Never)
import Task exposing (Task)

app =
  StartApp.start
    { init = init
    , update = update
    , view = view
    , inputs = []
    }


main : Signal Html
main =
  app.html

type alias Model = {}


init : (Model, Effects Action)
init =
  ({}, Effects.none)


type Action = NoOp

update : Action -> Model -> (Model, Effects Action)
update action model =
  case action of
    NoOp ->
      (model, Effects.none)


view : Signal.Address Action -> Model -> Html
view address model =
  ul [ class "seats" ] [ li [] [ text "hello" ] ]
