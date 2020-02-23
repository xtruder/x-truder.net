super: self: {
  nix-firefox-addons-generator = super.haskellPackages.callPackage ./firefox-addons-generator { };
  firefox-addons = import ./firefox-addons { inherit (super) fetchurl stdenv; };
  vscode-extensions' = super.callPackage ./vscode-extensions { };
  base16-unclaimed-schemes = super.callPackage ./base16-unclaimed-schemes { };
}
