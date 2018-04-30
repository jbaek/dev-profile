export PATH=/Library/PostgreSQL/9.5/bin/:$PATH

# added Scala
export PATH=/usr/local/scala/bin:$PATH
# to find new version of git
export PATH="/usr/local/bin:${PATH}"
export PS1='\w$ '

export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin

parse_git_branch() {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "
