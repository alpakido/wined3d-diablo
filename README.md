This builds patched `wined3d.dll` for the original Diablo on Wine. Linux only.

## Install

Grab a prebuilt DLL from the Releases page, preferably one matching your Wine
version. Copy it to folder with Diablo.exe and then set Diablo.exe DDraw
renderer to GDI:

```
wine REG ADD HKEY_CURRENT_USER\\Software\\Wine\\AppDefaults\\Diablo.exe\\Direct3D /V DirectDrawRenderer /T REG_SZ /D gdi
```

Launch Diablo. Menu should now be visible, but not without glitches: animated
images only update on mouse hover.

Mind that, as of 2.11, Diablo does not run on [Wine Staging](https://wiki.winehq.org/Wine-Staging).

## Build from source

You will need [Nix](https://nixos.org/nix/). Once installed, run `nix-build -A
<target>` inside this repo's directory, where target can be either `stable`,
`development` or `staging`.

After the build is completed, `result` will point to patched DLL.
