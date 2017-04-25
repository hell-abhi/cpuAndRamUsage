crontab -l > mycron
echo "0 * * * * /home/hell_priya/bin/temp6.sh >/dev/null 2>&1" >> mycron
crontab mycron
rm mycron
