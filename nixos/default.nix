{pkgs, ...}:

pkgs.rustPlatform.buildRustPackage {
  pname = "regolith-powerd";
  version = "main";
  
  src = ../.;

  cargoHash = "sha256-mdhGfWL4v3cbmVe2glU+x19v45tJICS9c2wb7PlvZ/w=";

  nativeBuildInputs = with pkgs;[ pkg-config rustc glibc gvfs dconf];

  buildInputs = with pkgs;[ glib ];

  meta = {
    mainProgram = "regolith-powerd";
    description = "Daemon to sync gsd power settings with Regolith on Wayland. Provides idle state functionality and sets power button action";
    homepage = "https://github.com/regolith-linux/regolith-powerd";
    license = pkgs.lib.licenses.gpl3Plus;
  };
}
