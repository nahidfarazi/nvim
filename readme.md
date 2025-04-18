## Install neovim

#### 1.install wget
```sh
sudo apt install wget
```
#### 2.download neovim
```sh
wget "https://github.com/neovim/neovim/releases/download/v0.11.0/nvim-linux-x86_64.tar.gz"
```
#### 3.unzip
```sh
sudo tar -xf nvim-linux-x86_64.tar.gz
```
#### 4. rename and move /usr/local
```sh
sudo mv -r nvim-linux-x86_64.tar.gz /usr/local/nvim
```
#### 5.export variable path
```sh
echo "export PATH=$PATH:/usr/local/nvim/bin" >> ~/.bashrc
```
if you have zsh
```sh
echo "export PATH=$PATH:/usr/local/nvim/bin" >> ~/.zshrc
```
### if you want to config for golang follow next step

#### 6. clone nvim config
```sh
git clone https://github.com/nahidfarazi/nvim.git ~/.config
```
#### now in terminal type nvim then give command in vim :Lazy ->Shift+I
