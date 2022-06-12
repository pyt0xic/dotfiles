if status is-interactive
    # Commands to run in interactive sessions can go here
end
set -xg MOZ_USE_XINPUT2 1
set -xg MOZ_ENABLE_WAYLAND 1 
set -xg _JAVA_AWT_WM_NONREPARENTING 1
set -xg WORK /home/nic/work/
set -xg FUN /home/nic/personal/
set -xg CONF /home/nic/.config/
set -xg nvm_default_version v17.9.0
