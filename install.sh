# THIS SHOULD BE EXTRACTED IN THE YOUR HOME DIRECTORY

echo NVIDIA Proprietary drivers are not supported so use Nouveau
echo Installing Required Packages...
sudo pacman -Syu --needed --noconfirm sway swayidle swaylock wofi waybar xfce4-screenshooter bluez bluez-utils blueman xdg-desktop-portal xdg-desktop-portal-wlr alacritty pipewire pipewire-alsa pipewire-audio pipewire-docs pipewire-ffado pipewire-jack pipewire-libcamera pipewire-roc pipewire-session-manager pipewire-v4l2 pipewire-x11-bell pipewire-zeroconf realtime-privileges pipewire-pulse pavucontrol power-profiles-daemon lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings nerd-fonts ttf-font-awesome xorg wayland xorg-xwayland
echo Installing Optional Packages...
sudo pacman -Syu --needed thunar firefox elisa vlc gwenview networkmanager nm-connection-editor gvfs
cd ~/sway-glitt-dotfiles/
cp -r sway ~/.config/
cp -r waybar ~/.config/
cp .alacritty.toml ~/
cp .bashrc ~/
cp .alias ~/
sudo cp bash.bashrc /etc/
sudo systemctl enable lightdm
sudo systemctl enable power-profiles-daemon
sudo systemctl enable bluetooth
sudo modprobe btusb
echo Reboot your PC if everything is done or type sudo systemctl start lightdm
echo Config file is located in "~/.config/sway/config"
echo Waybar Config is located in "~/.config/waybar/config" "~/.config/waybar/style.css"
echo Alacritty Config is located in "~/.alacritty.toml"
