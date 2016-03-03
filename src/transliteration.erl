-module(transliteration).

-export([cyr_lat/1]).

cyr_lat(<<"о">>) ->
  $o;
cyr_lat(<<"а">>) ->
  $a;
cyr_lat(<<"е">>) ->
  $e;
cyr_lat(<<"и">>) ->
  $i;
cyr_lat(<<"н">>) ->
  $n;
cyr_lat(<<"т">>) ->
  $t;
cyr_lat(<<"р">>) ->
  $r;
cyr_lat(<<"с">>) ->
  $s;
cyr_lat(<<"л">>) ->
  $l;
cyr_lat(<<"в">>) ->
  $v;
cyr_lat(<<"к">>) ->
  $k;
cyr_lat(<<"п">>) ->
  $p;
cyr_lat(<<"м">>) ->
  $m;
cyr_lat(<<"у">>) ->
  $u;
cyr_lat(<<"д">>) ->
  $d;
cyr_lat(<<"я">>) ->
  [$y,$a];
cyr_lat(<<"ы">>) ->
  $y;
cyr_lat(<<"ь">>) ->
  [];
cyr_lat(<<"з">>) ->
  $z;
cyr_lat(<<"б">>) ->
  $b;
cyr_lat(<<"г">>) ->
  $g;
cyr_lat(<<"й">>) ->
  $y;
cyr_lat(<<"ч">>) ->
  [$c,$h];
cyr_lat(<<"ю">>) ->
  [$y,$u];
cyr_lat(<<"х">>) ->
  [$k,$h];
cyr_lat(<<"ж">>) ->
  [$z,$h];
cyr_lat(<<"ш">>) ->
  [$s,$h];
cyr_lat(<<"ц">>) ->
  [$t,$s];
cyr_lat(<<"щ">>) ->
  [$s,$h,$c,$h];
cyr_lat(<<"ф">>) ->
  $f;
cyr_lat(<<"э">>) ->
  $e;
cyr_lat(<<"ъ">>) ->
  [];
cyr_lat(_) ->
  [].