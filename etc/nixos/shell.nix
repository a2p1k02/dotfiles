{ pkgs ? import <nixpkgs> {} }:
with pkgs;
mkShell {
  buildInputs = [
    glslang
    vulkan-headers
    vulkan-loader
    vulkan-validation-layers
    glm
    glfw
  ];
}
