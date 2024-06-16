{pkgs, ...}:

pkgs.rustPlatform.buildRustPackage {
  pname = "regolith-powerd";
  version = "main";
  
  src = ./.;

  cargoHash = "sha256-OL8D7J07kE6SDao6EWvb2LNHTltbXQ0ITnS+i432fUU=";

  nativeBuildInputs = with pkgs;[ pkg-config rustc glibc gvfs dconf];

  buildInputs = with pkgs;[ glib ];

  meta = {
    mainProgram = "regolith-powerd";
    description = "Daemon to sync gsd power settings with Regolith on Wayland. Provides idle state functionality and sets power button action";
    homepage = "https://github.com/regolith-linux/regolith-powerd";
    license = pkgs.lib.licenses.gpl3Plus;
  };
}
