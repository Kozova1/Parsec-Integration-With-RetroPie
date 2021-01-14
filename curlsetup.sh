sudo apt install git -y
TMPDIR=$(mktemp -d)
cd "$TMPDIR" || exit
git clone https://github.com/Kozova1/Parsec-Integration-With-RetroPie.git ./
./setup.sh
rm -rf "$TMPDIR"
