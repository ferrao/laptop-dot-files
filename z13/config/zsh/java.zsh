export AWT_TOOLKIT=MToolkit
export _JAVA_AWT_WM_NONREPARENTING=1
export JAVA_FONTS=/usr/share/fonts/truetype
export _JAVA_OPTIONS='-Djava2d.font.loadFontConf=false -Dawt.useSystemAAFontSettings=on -Dswing.aatext=true'

# Jenv Paths
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"
