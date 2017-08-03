# For the latest GPG KEYS 

curl -fsSL 'https://www.apache.org/dist/tomcat/tomcat-7/KEYS' | gpg --import
gpg --fingerprint | grep 'Key fingerprint =' | cut -d= -f2 | sed -r 's/ +//g' | sort

