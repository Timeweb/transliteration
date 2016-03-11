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
convert($ё) ->
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
  <<$i, $a>>;
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
  $i;
convert($ч) ->
  <<$c,$h>>;
convert($ю) ->
  <<$i,$u>>;
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
  <<$i,$e>>;

convert($О) ->
  $O;
convert($А) ->
  $A;
convert($Е) ->
  $E;
convert($Ё) ->
  $E;
convert($И) ->
  $I;
convert($Н) ->
  $N;
convert($Т) ->
  $T;
convert($Р) ->
  $R;
convert($С) ->
  $S;
convert($Л) ->
  $L;
convert($В) ->
  $V;
convert($К) ->
  $K;
convert($П) ->
  $P;
convert($М) ->
  $M;
convert($У) ->
  $U;
convert($Д) ->
  $D;
convert($Я) ->
  <<$I, $a>>;
convert($З) ->
  $Z;
convert($Б) ->
  $B;
convert($Г) ->
  $G;
convert($Й) ->
  $I;
convert($Ч) ->
  <<$C,$h>>;
convert($Ю) ->
  <<$I,$u>>;
convert($Х) ->
  <<$K,$h>>;
convert($Ж) ->
  <<$Z,$h>>;
convert($Ш) ->
  <<$S,$h>>;
convert($Ц) ->
  <<$T,$s>>;
convert($Щ) ->
  <<$S,$h,$c,$h>>;
convert($Ф) ->
  $F;
convert($Э) ->
  $E;

convert(AsIs) when AsIs < 128 ->
  AsIs;
convert(_) ->
  <<>>.