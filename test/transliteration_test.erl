-module(transliteration_test).

-include_lib("proper/include/proper.hrl").
-include_lib("eunit/include/eunit.hrl").
-include("test_helper.hrl").

prop_cyr_lat() ->
  ?FORALL(Str, <<>>, <<>> =:= transliteration:cyr_lat(Str)).