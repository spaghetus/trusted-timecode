# Trusted Timecode

A web service made with wwebs, that allows websites to embed a trustworthy timecode which can be used to verify that video hasn't been spliced or falsified.

## Dependencies

Requires qrencode, gpg, sed, wc, cut, chmod, date, xargs, and jq to be available in $PATH.

## Environment

TRUSTED_TIMECODE_KEYID is the id of the gpg key to use for signing.