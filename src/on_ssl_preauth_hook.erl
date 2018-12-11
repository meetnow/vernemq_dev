%% @hidden
-module(on_ssl_preauth_hook).
-include("vernemq_dev.hrl").

%% called as an all_till_ok hook
-callback on_ssl_preauth(Peer :: peer(), Cert :: binary()) ->
    ok |
    {ok, username()} |
    {error, any()} |
    next.
