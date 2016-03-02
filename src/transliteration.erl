-module(transliteration).

-export([cyr_lat/1]).

cyr_lat(<<>>) ->
  <<>>.