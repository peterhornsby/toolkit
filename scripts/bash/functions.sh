# Functions
edit_func () { 
	vi ~/Documents/scripts/bash/functions.sh
}

source_func () { 
	source ~/Documents/scripts/bash/functions.sh
}

# Xcode 
delete_xcode_data () { 
	rm -rf ~/Library/Developer/Xcode/DerivedData/* 
}

ssh_website () {
	ssh peterhp0@162.214.90.31
}


# Directories
saltmines () {

        if [ -z "${1}" ]
        then
                cd ~/Documents/Work
        else
                cd ~/Documents/Work/"${1}"
        fi

	return 0
}

_gatech () {

        if [ -z "${1}" ]
        then
                cd ~/Documents/Work/gatech
        else
                cd ~/Documents/Work/gatech/"${1}"
        fi

        return 0
}

_opencv4 () {

        if [ -z "${1}" ]
        then
                cd /usr/local/share/opencv4 
        else
                cd /usr/local/share/opencv4/"${1}"
        fi

        return 0
}

_assignment () {

        if [ -z "${1}" ]
        then
                cd /usr/local/share/opencv4/pjh/ 
        else
                cd /usr/local/share/opencv4/pjh/"${1}"
        fi

        return 0
}


#parameter
# $1: search item
searchh () {

	if [ -z "${1}" ]
	then
		echo 'search item is empty... bye'
		return 1
	else
		history | grep "${1}"
		return 0
	fi
}


#git 
gcommit () { 
	git commit -m "${1}" 
}

gamend () {

        if [ -z "${1}" ]
        then
                git --amend
        else
                git --amend -m "${1}"
        fi
	
	return 0
}

glast () {
	git log -1 HEAD
}

gpickaxe () {
        if [ -z "${1}" ]
        then
            	echo 'search item is empty... bye'
                return 1
        else
                git log -S "${1}"
        fi
        
        return 0
}

gstatus () {
	git status
}

gadd () {
	if [ -z "${1}" ]
        then
                echo 'Add what? ...bye'
                return 1
        else
                git add "${1}"
                return 0
        fi
}

# parameters
# $1: repo name
# $2: branch name
# $3: url
gclone () {
	# Check if we have a repo name
	if [ -z "${1}" ]
        then
                echo "missing repo name... bye"
                return 1
        fi

	if [ -z "${3}" ] && [ -z "${2}" ]
	then 
		git clone git@ghe.coxautoinc.com:ISS/"${1}".git
       	elif [ -z "${3}" ]
	then
		git clone -b "${2}" git@ghe.coxautoinc.com:ISS/"${1}".git
	else
		git clone -b "${2}" "${3}/${1}"
	fi

	return 0
}

