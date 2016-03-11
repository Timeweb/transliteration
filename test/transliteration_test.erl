-module(transliteration_test).

-include_lib("proper/include/proper.hrl").
-include_lib("eunit/include/eunit.hrl").
-include("test_helper.hrl").

cyr_lat_low_symbols_test_() ->
  [
    ?_assertEqual(<<>>, transliteration:cyr_lat(<<>>)),
    ?_assertEqual(<<$o>>, transliteration:cyr_lat(<<"о"/utf8>>)),
    ?_assertEqual(<<$a>>, transliteration:cyr_lat(<<"а"/utf8>>)),
    ?_assertEqual(<<$e>>, transliteration:cyr_lat(<<"е"/utf8>>)),
    ?_assertEqual(<<$e>>, transliteration:cyr_lat(<<"ё"/utf8>>)),
    ?_assertEqual(<<$i>>, transliteration:cyr_lat(<<"и"/utf8>>)),
    ?_assertEqual(<<$n>>, transliteration:cyr_lat(<<"н"/utf8>>)),
    ?_assertEqual(<<$t>>, transliteration:cyr_lat(<<"т"/utf8>>)),
    ?_assertEqual(<<$r>>, transliteration:cyr_lat(<<"р"/utf8>>)),
    ?_assertEqual(<<$s>>, transliteration:cyr_lat(<<"с"/utf8>>)),
    ?_assertEqual(<<$l>>, transliteration:cyr_lat(<<"л"/utf8>>)),
    ?_assertEqual(<<$v>>, transliteration:cyr_lat(<<"в"/utf8>>)),
    ?_assertEqual(<<$k>>, transliteration:cyr_lat(<<"к"/utf8>>)),
    ?_assertEqual(<<$p>>, transliteration:cyr_lat(<<"п"/utf8>>)),
    ?_assertEqual(<<$m>>, transliteration:cyr_lat(<<"м"/utf8>>)),
    ?_assertEqual(<<$u>>, transliteration:cyr_lat(<<"у"/utf8>>)),
    ?_assertEqual(<<$d>>, transliteration:cyr_lat(<<"д"/utf8>>)),
    ?_assertEqual(<<$i,$a>>, transliteration:cyr_lat(<<"я"/utf8>>)),
    ?_assertEqual(<<$y>>, transliteration:cyr_lat(<<"ы"/utf8>>)),
    ?_assertEqual(<<>>, transliteration:cyr_lat(<<"ь"/utf8>>)),
    ?_assertEqual(<<$z>>, transliteration:cyr_lat(<<"з"/utf8>>)),
    ?_assertEqual(<<$b>>, transliteration:cyr_lat(<<"б"/utf8>>)),
    ?_assertEqual(<<$g>>, transliteration:cyr_lat(<<"г"/utf8>>)),
    ?_assertEqual(<<$i>>, transliteration:cyr_lat(<<"й"/utf8>>)),
    ?_assertEqual(<<$c,$h>>, transliteration:cyr_lat(<<"ч"/utf8>>)),
    ?_assertEqual(<<$i,$u>>, transliteration:cyr_lat(<<"ю"/utf8>>)),
    ?_assertEqual(<<$k,$h>>, transliteration:cyr_lat(<<"х"/utf8>>)),
    ?_assertEqual(<<$z,$h>>, transliteration:cyr_lat(<<"ж"/utf8>>)),
    ?_assertEqual(<<$s,$h>>, transliteration:cyr_lat(<<"ш"/utf8>>)),
    ?_assertEqual(<<$t,$s>>, transliteration:cyr_lat(<<"ц"/utf8>>)),
    ?_assertEqual(<<$s,$h,$c,$h>>, transliteration:cyr_lat(<<"щ"/utf8>>)),
    ?_assertEqual(<<$f>>, transliteration:cyr_lat(<<"ф"/utf8>>)),
    ?_assertEqual(<<$e>>, transliteration:cyr_lat(<<"э"/utf8>>)),
    ?_assertEqual(<<$i,$e>>, transliteration:cyr_lat(<<"ъ"/utf8>>))
  ].

cyr_lat_up_symbols_test_() ->
  [
    ?_assertEqual(<<$O>>, transliteration:cyr_lat(<<"О"/utf8>>)),
    ?_assertEqual(<<$A>>, transliteration:cyr_lat(<<"А"/utf8>>)),
    ?_assertEqual(<<$E>>, transliteration:cyr_lat(<<"Е"/utf8>>)),
    ?_assertEqual(<<$E>>, transliteration:cyr_lat(<<"Ё"/utf8>>)),
    ?_assertEqual(<<$I>>, transliteration:cyr_lat(<<"И"/utf8>>)),
    ?_assertEqual(<<$N>>, transliteration:cyr_lat(<<"Н"/utf8>>)),
    ?_assertEqual(<<$T>>, transliteration:cyr_lat(<<"Т"/utf8>>)),
    ?_assertEqual(<<$R>>, transliteration:cyr_lat(<<"Р"/utf8>>)),
    ?_assertEqual(<<$S>>, transliteration:cyr_lat(<<"С"/utf8>>)),
    ?_assertEqual(<<$L>>, transliteration:cyr_lat(<<"Л"/utf8>>)),
    ?_assertEqual(<<$V>>, transliteration:cyr_lat(<<"В"/utf8>>)),
    ?_assertEqual(<<$K>>, transliteration:cyr_lat(<<"К"/utf8>>)),
    ?_assertEqual(<<$P>>, transliteration:cyr_lat(<<"П"/utf8>>)),
    ?_assertEqual(<<$M>>, transliteration:cyr_lat(<<"М"/utf8>>)),
    ?_assertEqual(<<$U>>, transliteration:cyr_lat(<<"У"/utf8>>)),
    ?_assertEqual(<<$D>>, transliteration:cyr_lat(<<"Д"/utf8>>)),
    ?_assertEqual(<<$I,$A>>, transliteration:cyr_lat(<<"Я"/utf8>>)),
    ?_assertEqual(<<$Z>>, transliteration:cyr_lat(<<"З"/utf8>>)),
    ?_assertEqual(<<$B>>, transliteration:cyr_lat(<<"Б"/utf8>>)),
    ?_assertEqual(<<$G>>, transliteration:cyr_lat(<<"Г"/utf8>>)),
    ?_assertEqual(<<$I>>, transliteration:cyr_lat(<<"Й"/utf8>>)),
    ?_assertEqual(<<$C,$H>>, transliteration:cyr_lat(<<"Ч"/utf8>>)),
    ?_assertEqual(<<$I,$U>>, transliteration:cyr_lat(<<"Ю"/utf8>>)),
    ?_assertEqual(<<$K,$H>>, transliteration:cyr_lat(<<"Х"/utf8>>)),
    ?_assertEqual(<<$Z,$H>>, transliteration:cyr_lat(<<"Ж"/utf8>>)),
    ?_assertEqual(<<$S,$H>>, transliteration:cyr_lat(<<"Ш"/utf8>>)),
    ?_assertEqual(<<$T,$S>>, transliteration:cyr_lat(<<"Ц"/utf8>>)),
    ?_assertEqual(<<$S,$H,$C,$H>>, transliteration:cyr_lat(<<"Щ"/utf8>>)),
    ?_assertEqual(<<$F>>, transliteration:cyr_lat(<<"Ф"/utf8>>)),
    ?_assertEqual(<<$E>>, transliteration:cyr_lat(<<"Э"/utf8>>))
  ].

cyr_lat_convert_test_() ->
  [
    ?_assertEqual(<<"m">>, transliteration:cyr_lat(<<"м"/utf8>>)),
    ?_assertEqual(<<"mama">>, transliteration:cyr_lat(<<"мама"/utf8>>)),
    ?_assertEqual(<<"timeweb">>, transliteration:cyr_lat(<<"timeweb"/utf8>>)),
    ?_assertEqual(<<"timeweb - bolshe chem khosting!">>, transliteration:cyr_lat(<<"timeweb - больше чем хостинг!"/utf8>>)),
    ?_assertEqual(<<"TiMeWeB - BoLSHe CHeM khOsTiNg?">>, transliteration:cyr_lat(<<"TiMeWeB - БоЛьШе ЧеМ хОсТиНг?"/utf8>>)),
    ?_assertEqual(
      <<"Sieesh eshche etikh miagkikh frantsuzskikh bulok, da vypei zhe chaiu.">>,
      transliteration:cyr_lat(<<"Съешь ещё этих мягких французских булок, да выпей же чаю."/utf8>>)
    )
  ].

prop_cyr_lat() ->
  ?FORALL(Str, binary(), is_binary(transliteration:cyr_lat(Str))).