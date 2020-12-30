sudo apt install git -y
cd "$(mktemp -d)" || exit
git clone https://github.com/Kozova1/Parsec-Integration-With-RetroPie.git ./
./setup.sh
