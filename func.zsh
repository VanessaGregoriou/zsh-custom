# Custom functions

class() {
    cd ~/Documents/Uni
    local course=$1
    if [ ! -z "$course" ]; then
        found=false
        for year in */; do
            if [ -d $year/$course ]; then
                cd $year/$course
                found=true
                break
            fi
        done
        if [ ! $found ]; then
            echo $course "not found"
        fi
    fi
}

wipe() {
    cd ~/Documents/Work/wipehero
    if [ "$@" ]; then
        cd "$@"
    fi
}

mkcd() { mkdir -p "$@" && cd "$@"; }