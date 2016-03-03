-module(transliteration_test).

-include_lib("proper/include/proper.hrl").
-include_lib("eunit/include/eunit.hrl").
-include("test_helper.hrl").

cyr_lat_test_() ->
  [
    ?_assertEqual($o, transliteration:cyr_lat(<<"о">>)),
    ?_assertEqual($a, transliteration:cyr_lat(<<"а">>)),
    ?_assertEqual($e, transliteration:cyr_lat(<<"е">>)),
    ?_assertEqual($i, transliteration:cyr_lat(<<"и">>)),
    ?_assertEqual($n, transliteration:cyr_lat(<<"н">>)),
    ?_assertEqual($t, transliteration:cyr_lat(<<"т">>)),
    ?_assertEqual($r, transliteration:cyr_lat(<<"р">>)),
    ?_assertEqual($s, transliteration:cyr_lat(<<"с">>)),
    ?_assertEqual($l, transliteration:cyr_lat(<<"л">>)),
    ?_assertEqual($v, transliteration:cyr_lat(<<"в">>)),
    ?_assertEqual($k, transliteration:cyr_lat(<<"к">>)),
    ?_assertEqual($p, transliteration:cyr_lat(<<"п">>)),
    ?_assertEqual($m, transliteration:cyr_lat(<<"м">>)),
    ?_assertEqual($u, transliteration:cyr_lat(<<"у">>)),
    ?_assertEqual($d, transliteration:cyr_lat(<<"д">>)),
    ?_assertEqual("ya", transliteration:cyr_lat(<<"я">>)),
    ?_assertEqual($y, transliteration:cyr_lat(<<"ы">>)),
    ?_assertEqual("", transliteration:cyr_lat(<<"ь">>)),
    ?_assertEqual($z, transliteration:cyr_lat(<<"з">>)),
    ?_assertEqual($b, transliteration:cyr_lat(<<"б">>)),
    ?_assertEqual($g, transliteration:cyr_lat(<<"г">>)),
    ?_assertEqual($y, transliteration:cyr_lat(<<"й">>)),
    ?_assertEqual("ch", transliteration:cyr_lat(<<"ч">>)),
    ?_assertEqual("yu", transliteration:cyr_lat(<<"ю">>)),
    ?_assertEqual("kh", transliteration:cyr_lat(<<"х">>)),
    ?_assertEqual("zh", transliteration:cyr_lat(<<"ж">>)),
    ?_assertEqual("sh", transliteration:cyr_lat(<<"ш">>)),
    ?_assertEqual("ts", transliteration:cyr_lat(<<"ц">>)),
    ?_assertEqual("shch", transliteration:cyr_lat(<<"щ">>)),
    ?_assertEqual($f, transliteration:cyr_lat(<<"ф">>)),
    ?_assertEqual($e, transliteration:cyr_lat(<<"э">>)),
    ?_assertEqual("", transliteration:cyr_lat(<<"ъ">>))
  ].

prop_cyr_lat() ->
  ?FORALL(Str, <<>>, [] =:= transliteration:cyr_lat(Str)).