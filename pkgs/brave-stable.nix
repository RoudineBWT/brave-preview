{ callPackage, fetchurl }:
let
  version = "1.90.119";
  hash = "0xpznk5ld9dqbjrp276ygmm7cjjf9akbwnd80ibz7mglapfb1f7k";
in
callPackage ./build-brave.nix { } {
  pname = "brave-stable";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser_${version}_amd64.deb";
}
