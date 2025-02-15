#/!/bin/bash
cat << "EOF" | awk -v brown="$(tput setaf 52)" -v green="$(tput setaf 34)" -v reset="$(tput sgr0)" -v yellow="$(tput setaf 214)" -v yellower="$(tput setaf 220)" -v red="$(tput setaf 1)" -v reder="$(tput setaf 160)" -v blue="$(tput setaf 27)" -v gold="$(tput setaf 208)"  -v blink=$(tput blink) -v bold=$(tput bold) '
{ if (NR <= 5 && NR) {
gsub(/ \. /, blink bold yellower " \. " reset, $0);
#gsub(/~/, bold gold "\~" reset, $0);
#gsub(/'\'' i \`/, bold gold "'\'' i \`" reset, $0);
gsub(/\_\.\|\,\_/, bold yellower "_.|,_" reset, $0);
gsub(/'\''\|\`/, bold yellower "'\''|\`" reset, $0);
#gsub(/.!,/, bold gold ".!," reset, $0);
print} 
 if (!(NR <= 5 && NR) && (NR != 24)) {
  sub(/'\''/, green "'\''" reset, $0);
  sub(/\`/, blink "+" reset, $0);
  sub(/\//, green "/" reset, $0);
  gsub(/\_/, green "\_" reset, $0);
  gsub(/\-/, green "\-" reset, $0);
  sub(/\\/, green "\\" reset, $0); gsub(/\*/, blink yellow "\*" reset, $0);
  gsub(/~/, bold green "\~" reset, $0); gsub(/,/, gold "\," reset, $0);
  gsub(/o/, bold red "o" reset, $0); sub(/\./, blink blue "." reset, $0);
  gsub(/\"\:/, brown "\"\:" reset, $0);
  gsub(/\:\"/, brown "\:\"" reset, $0);
  print } if (NR==24) {
    sub(/\//, brown "/" reset, $0);
    gsub(/\_/, brown "\_" reset, $0);
    sub(/\\/, brown "\\" reset, $0); print
  }
    }'
                                
                                
                              .  
                            _.|,_
                             '|`
                             / \ 
                            /`,o\
                           /_* ~_\
                           / o .'\
                          /_,~' *_\
                          /`. *  *\
                         /   `~. o \
                        /_ *    `~,_\
                        /   o  *  ~'\
                       / *    .~~'  o\
                      /_,.~~'`    *  _\
                      /`~..  o        \
                     / *   `'~..   *   \
                    /_     o    ``~~.,,_\
                    /  *      *     ..~'\
                   /*    o   _..~~`'*   o\
                   `-.__.~'`'   *   ___.-'
                         ":-------:"
                      hjw  \_____/
EOF

#./christmasArt.sh | awk -v green="$(tput setaf 34)" -v reset="$(tput sgr0)" '{ if (NR <= 5) print; else { sub(/\//, green "/" reset, $0); print } }'| awk -v green="$(tput setaf 34)" -v reset="$(tput sgr0)" '{ if (NR <= 5) print; else { sub(/\\/, green "\\" reset, $0); print } }'