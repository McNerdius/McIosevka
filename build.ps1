rmdir McIosevka -Recurse -Force
rmdir nerdfont_patched -Recurse -Force

docker run -e FONT_VERSION=15.0.1 -it -v ${PWD}:/build avivace/iosevka-build

docker run -v "${PWD}/dist/McIosevka/ttf:/in" -v "${PWD}/nerdfont_patched:/out" nerdfonts/patcher --use-single-width-glyphs --adjust-line-height --complete --careful --quiet --progressbars # seti ui & devicons are included by default

move .\dist\McIosevka\ .\McIosevka
rmdir dist -Force

foreach ($file in get-item ./nerdfont_patched/*.ttf )
{
  $newName = $file.Name.Replace(" Nerd Font Complete Mono","")
  Rename-Item $file $newName 
}