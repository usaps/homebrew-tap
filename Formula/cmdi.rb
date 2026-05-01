class Cmdi < Formula
  desc "High-speed, intelligent media offloading for film sets"
  homepage "https://github.com/usaps/CMDI"
  version "0.1.2"
  license "MIT"

  # macOS universal binary (Apple Silicon + Intel)
  # Source code is private; binaries distributed from public releases repo
  url "https://github.com/usaps/cmdi-releases/releases/download/v0.1.2/cmdi"
  sha256 "add81a86e164f0b92317d43724c9cf5983a75896d0b317e79237762d04ceade0"

  def install
    bin.install "cmdi"
    bin.install_symlink bin/"cmdi" => "command"
  end

  test do
    system "#{bin}/cmdi", "--version"
  end
end
