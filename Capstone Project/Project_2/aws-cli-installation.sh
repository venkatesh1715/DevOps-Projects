curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"

gpg --import public-key-file-name

curl -o awscliv2.sig https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip.sig

gpg --verify awscliv2.sig awscliv2.zip

unzip awscliv2.zip

sudo ./aws/install