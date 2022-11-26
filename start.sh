if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Localusersbot/Rashmika-The-Bot.git /Rashmika-The-Bot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Rashmika-The-Bot
fi
cd /Rashmika-The-Bot
pip3 install -U -r requirements.txt
echo "Starting Rashmika-The-Bot...."
python3 bot.py
