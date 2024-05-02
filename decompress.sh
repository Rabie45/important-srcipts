decompress ()
{
 if [ -f "$1" ]; then
 case "$1" in
 *.tar.bz2)
 tar -xf "$1"
 ;;
 *.tar.gz)
 tar -xvzf "$1"
 ;;
 *.bz2)
 bzip2 -dk "$1"
 ;;
 *.rar)
unrar x "$1"
 ;;
 *.gz)
 gzip -d "$1"
 ;;
 *.tar)
 tar -xvf "$1"
 ;;
 *.tbz2)
 tar -xvjf "$1"
 ;;
  *.tgz)
 tar -xvjf "$1"
 ;;
 *.zip)
  unzip -d $(echo "$1" | sed 's/(.*\)\.zip/\1/') "$1"
 ;;
 *.7z)
 7z x "$1"
 ;;
 *)
 echo "What is that extension"
 ;;
 esac;
 
 echo "File Not valid";
 fi

}