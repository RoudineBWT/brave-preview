{ callPackage, fetchurl }:
let
  version = "1.92.65";
  hash = "0bs71y16pwdapjh0b95ddxcwnljyc9j80avggczr0yslygmgjva6";
in
callPackage ./build-brave.nix { } {
  pname = "brave-nightly";
  inherit version hash;
  url = "https://github.com/brave/brave-browser/releases/download/v${version}/brave-browser-nightly_${version}_amd64.deb";
  commandLineArgs = "--enable-features=BraveAIChatAgentProfile";
}
