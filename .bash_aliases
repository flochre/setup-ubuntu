alias bat="batcat --theme Coldark-Cold"
alias git_private="git config user.name 'Florent Chretien' && git config user.email 'flopubs@gmail.com'"

export WORKSPACE_ROOT=${HOME}/workspace
export GIT_ROOT=${HOME}/workspace/40_Git

# ruediger specific variables
export RUEDIGER_DEV=${GIT_ROOT}/ros2-docker
export RUEDIGER_DOCKER_ROS_DISTRO=humble
export RUEDIGER_ROOT=${HOME}/workspace/ruediger2_ws
alias ruediger-dev="${RUEDIGER_DEV}/ruediger-dev.bash"

if [[ $(hostname) == "ruediger-dev" ]]; then
    # This will be source only in a Docker with hostname ruediger-dev
    cd /workspace/robot_ws
fi

if [ -d "/opt/ros/galactic" ]; then
    source /opt/ros/humble/setup.bash
fi

if [ -d "/opt/ros/humble" ]; then
    source /opt/ros/humble/setup.bash
fi

if [ -d "/opt/ros/rolling" ]; then
    source /opt/ros/rolling/setup.bash
fi

# source /opt/ros/humble/setup.bash
# export ROS_DOMAIN_ID=33