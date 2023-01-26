for f in *.js; do
    ff="${f::-3}.jsx"
    test -e "$f" || continue        # possible when not using nullglob
    test "$f" != "$ff" || continue  # possible when using nocaseglob
    if test -e "$ff" &&
       ! test "$f" -ef "$ff"; then  # possible on a case sensitive filesystem
        echo "skipping <$f>: destination <$ff> exists and is distinct" 1>&2
        continue
    fi

    # "mv" with "git rm" and "git add"
    git mv "$f" "$ff" 
done
