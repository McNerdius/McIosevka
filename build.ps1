# docker run -it -v ${PWD}:/build avivace/iosevka-build
docker run -v "${PWD}/dist/McIosevka/ttf:/in" -v "${PWD}/nerdfont_patched:/out" nerdfonts/patcher --use-single-width-glyphs --adjust-line-height --powerline --powerlineextra --fontawesome --fontawesomeextension --weather --octicons --powersymbols --material --careful --quiet # seti ui & devicons are included by default