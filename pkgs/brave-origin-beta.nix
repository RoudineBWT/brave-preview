{ callPackage, fetchurl }:
let
  version = "1.95.95";
  hash = "1pcjny5cpfdxccsb9nv8ans5br32mcps4ia4yiz7j0fhnl0zm7xq";
in
callPackage ./build-brave.nix { } {
  pname = "brave-origin-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-origin-beta_${version}_amd64.deb";
}
