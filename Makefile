REBAR = ./rebar3

compile:
	$(REBAR) compile

eunits: compile
	$(REBAR) eunit skip_deps=true