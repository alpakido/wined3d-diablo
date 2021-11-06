{ wine }:

wine.overrideDerivation (old: {
  name = "wined3d.dll";

  makeFlags = [ "dlls/wined3d" ];

  installPhase = ''
    install -D dlls/wined3d/wined3d.dll.so $out/dlls/wined3d.dll
  '';

  patches = [ ./ddraw_hack.patch ];
})
