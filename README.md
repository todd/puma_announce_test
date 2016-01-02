# puma_announce_test
Proof of Concept App for Performing Service Announcement with Puma

The meat of this demo app is in `config/puma.rb`. My initial test
used Celluloid for Thread abstraction, but it would always hang on
shutdown. My attempts to manually terminate the actors in
`on_worker_shutdown` didn't pan out either.

You can run the demo with `puma -C config/puma.rb`.
