#!/bin/sh
# Helper script which will tag github repos for ports / distfiles

# Only run as regular user with ssh keys
if [ "$(id -u)" = "0" ]; then
  echo "This script must be run by release engineer" 1>&2
  exit 1
fi

# Ask for authentication once
killall ssh-agent
eval $(ssh-agent)
ssh-add

repodir="/tmp/furybsd-tag"

rm -rf ${repodir}
mkdir -p ${repodir}

if [ ! -f "/usr/local/arisblu/version" ] ; then
  echo "Arisblu must be built first"
  exit 1
fi

version=`cat /usr/local/arisblu/version`

git clone git@github.com:furybsd/furybsd-livecd.git ${repodir}/furybsd-livecd

cd ${repodir}/furybsd-livecd
git tag -a $version -m "{$version}"
git push origin --tags
rm -rf ${repodir}
