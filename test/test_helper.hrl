-include_lib("eunit/include/eunit.hrl").

run_proper_test_() ->
  EunitLeader = erlang:group_leader(),
  erlang:group_leader(whereis(user), self()),
  Res = proper:module(?MODULE),
  erlang:group_leader(EunitLeader, self()),
  ?_assertEqual([], Res).