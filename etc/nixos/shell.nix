{ pkgs ? import <nixpkgs> {} }:
with pkgs;
mkShell {
  buildInputs = [
    gcc
    pkg-config
    glslang
    vulkan-headers
    vulkan-loader
    vulkan-validation-layers
    glm
    glfw
  ];

  nativeBuildInputs = [
    rustc cargo gcc rustfmt clippy pkg-config fontconfig
  ];

  RUST_SRC_PATH = "${pkgs.rust.packages.stable.rustPlatform.rustLibSrc}";
}
