-module(transliteration_test).

-include_lib("proper/include/proper.hrl").
-include_lib("eunit/include/eunit.hrl").
-include("test_helper.hrl").

-define(RULES, [
  {$o, <<"о">>},
  {$a, <<"а">>},
  {$e, <<"е">>},
  {$i, <<"и">>},
  {$n, <<"н">>},
  {$t, <<"т">>},
  {$r, <<"р">>},
  {$s, <<"с">>},
  {$l, <<"л">>},
  {$v, <<"в">>},
  {$k, <<"к">>},
  {$p, <<"п">>},
  {$m, <<"м">>},
  {$u, <<"у">>},
  {$d, <<"д">>},
  {"ya", <<"я">>},
  {$y, <<"ы">>},
  {"", <<"ь">>},
  {$z, <<"з">>},
  {$b, <<"б">>},
  {$g, <<"г">>},
  {$y, <<"й">>},
  {"ch", <<"ч">>},
  {"yu", <<"ю">>},
  {"kh", <<"х">>},
  {"zh", <<"ж">>},
  {"sh", <<"ш">>},
  {"ts", <<"ц">>},
  {"shch", <<"щ">>},
  {$f, <<"ф">>},
  {$e, <<"э">>},
  {"", <<"ъ">>}
]).

cyr_lat_symbols_test() ->
  lists:foreach(fun({Lat, Cyr}) -> ?_assertEqual(Lat, transliteration:cyr_lat(Cyr)) end, ?RULES).

prop_cyr_lat() ->
  ?FORALL(Str, <<>>, [] =:= transliteration:cyr_lat(Str)).