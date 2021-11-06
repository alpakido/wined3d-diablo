{ wine }:

wine.overrideDerivation (old: {
  name = "wined3d-diablo";

  makeFlags = [ "-C" "dlls/wined3d" ];

  installPhase = ''
    install -D dlls/wined3d/wined3d.dll.so $out/dlls/wined3d.dll
    echo ${old.name} > $out/wine_version
  '';

  patches = [ ./ddraw_hack.patch ];
})
