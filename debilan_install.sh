curl https://get.acme.sh | sh
git clone https://github.com/yekm/acme.sh-systemd
ln -s $PWD/acme.sh-systemd/{acme.sh.service,acme.sh.timer} /etc/systemd/user/
systemctl daemon-reload
systemctl enable acme.sh.timer
systemctl start acme.sh.timer
