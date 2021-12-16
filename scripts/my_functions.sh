# MY FUNCTIONS
#-- Source this file
#-- highlight color coding
hat()
{	
	highlight --out-format=xterm256 --force -l -sandes $1
}

#-- highlight color coding with formatting
hatf()
{
	highlight --out-format=xterm256 --force -l --reformat=gnu -sandes $1
}

#-- source python
sopy()
{
	source $1/bin/activate
}

#-- git tree print (-v for verbose)
gittree()
{
	if [[ $1 == '-v' ]]; then
		git log --graph --all
	else
		git log --graph --oneline --all
	fi
}

#-- bc 
cal()
{
	bc <<< "$*"
}
