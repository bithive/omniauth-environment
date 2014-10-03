### OmniAuth Environment Strategy

This strategy allows you to specify environment variable(s), `REMOTE_USER` by
default, which may contain an authenticated `uid`.

Arguments passed to the provider at initialization are used to look up `uid` in
`request.env`, the first non-nil result is used.
