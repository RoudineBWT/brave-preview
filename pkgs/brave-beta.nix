{ callPackage, fetchurl }:
let
  version = "1.92.125";
  hash = "1nvrkrjfh9ygyq45wxp7hmcmvd0bnibfyy114bpkz6zf8b9jw0rv";
in
callPackage ./build-brave.nix { } {
  pname = "brave-beta";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-beta_${version}_amd64.deb";
}
