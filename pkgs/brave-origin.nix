{ callPackage, fetchurl }:
let
  version = "1.97.57";
  hash = "0r3bazanqwq2gg0yz8gnp08d5vkq27cfvai25ibsy8wj9a0ndbsy";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin_${version}_amd64.deb";
}
