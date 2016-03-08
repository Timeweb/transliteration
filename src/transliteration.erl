-module(transliteration).

-export([cyr_lat/1]).

cyr_lat(<<Symbol/utf8, Tail/binary>>) ->
  iolist_to_binary([convert(Symbol), cyr_lat(Tail)]);
cyr_lat(<<Symbol/utf8>>) ->
  convert(Symbol);
cyr_lat(_) ->
  <<>>.

convert($о) ->
  $o;
convert($а) ->
  $a;
convert($е) ->
  $e;
convert($и) ->
  $i;
convert($н) ->
  $n;
convert($т) ->
  $t;
convert($р) ->
  $r;
convert($с) ->
  $s;
convert($л) ->
  $l;
convert($в) ->
  $v;
convert($к) ->
  $k;
convert($п) ->
  $p;
convert($м) ->
  $m;
convert($у) ->
  $u;
convert($д) ->
  $d;
convert($я) ->
  <<$y, $a>>;
convert($ы) ->
  $y;
convert($ь) ->
  <<>>;
convert($з) ->
  $z;
convert($б) ->
  $b;
convert($г) ->
  $g;
convert($й) ->
  $y;
convert($ч) ->
  <<$c,$h>>;
convert($ю) ->
  <<$y,$u>>;
convert($х) ->
  <<$k,$h>>;
convert($ж) ->
  <<$z,$h>>;
convert($ш) ->
  <<$s,$h>>;
convert($ц) ->
  <<$t,$s>>;
convert($щ) ->
  <<$s,$h,$c,$h>>;
convert($ф) ->
  $f;
convert($э) ->
  $e;
convert($ъ) ->
  <<>>;
convert(AsIs) when AsIs < 128 ->
  AsIs;
convert(_) ->
  <<>>.