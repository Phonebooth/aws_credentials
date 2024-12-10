-module(aws_credentials_json).

-export([decode/1]).

-spec decode(jsx:json_text()) -> jsx:json_term().
decode(X) ->
    % Keep return_maps explicit so that apps using an older version
    % of jsx are still compatible (e.g. jsx 2.x).
    jsx:decode(X, [return_maps]).
