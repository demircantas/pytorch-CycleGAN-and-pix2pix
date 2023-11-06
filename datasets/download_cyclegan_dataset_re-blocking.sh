FILE=$1
# FILE = manhattan

if [[ $FILE != "ae_photos" && $FILE != "manhattan" ]]; then
    echo "Available datasets are: ae_photos, manhattan"
    exit 1
fi

# ---
# Demircan's modification
# From: https://dl.dropboxusercontent.com/scl/fi/rv4p9brw0ouq0a8kcdukh/manhattan.zip?rlkey=jknrhqrezfp7gj6sm78svnv6i&dl=0
# replace 'www.dropbox.com' with 'dl.dropboxusercontent.com'

echo "Specified [$FILE]"

URL=https://dl.dropboxusercontent.com/scl/fi/rv4p9brw0ouq0a8kcdukh/manhattan.zip?rlkey=jknrhqrezfp7gj6sm78svnv6i&dl=0
# if [[ $FILE == "manhattan" ]]; then
#     URL=https://dl.dropboxusercontent.com/scl/fi/rv4p9brw0ouq0a8kcdukh/manhattan.zip?rlkey=jknrhqrezfp7gj6sm78svnv6i&dl=0
# fi

ZIP_FILE=./datasets/$FILE.zip
TARGET_DIR=./datasets/$FILE/
wget -N $URL -O $ZIP_FILE
mkdir $TARGET_DIR
unzip $ZIP_FILE -d ./datasets/
rm $ZIP_FILE
