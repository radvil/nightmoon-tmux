#!/bin/env bash

cd "$1" || return
BRANCH=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)
STATUS=$(git status --porcelain 2>/dev/null | egrep "^(M| M)" | wc -l)
if test "$BRANCH" != ""; then
	if test "$STATUS" = "0"; then
		echo "#[fg=#6DD390,bg=#24283B,nobold,noitalics,nounderscore]#[fg=black,bg=#6DD390,bold]  $BRANCH "
	else
		echo "#[fg=#ECBE7B,bg=#24283B,nobold,noitalics,nounderscore]#[fg=black,bg=#ECBE7B,bold]  $BRANCH "
	fi
fi
