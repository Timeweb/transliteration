REBAR = ./rebar3

clean:
	$(REBAR) clean

compile: clean
	$(REBAR) compile

eunits: compile
	$(REBAR) eunit skip_deps=true