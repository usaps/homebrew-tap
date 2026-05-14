class Cmdi < Formula
  desc "High-speed, intelligent media offloading for film sets"
  homepage "https://github.com/usaps/CMDI"
  version "0.1.8"
  license "MIT"

  # macOS universal binary (Apple Silicon + Intel)
  # Source code is private; binaries distributed from public releases repo
  url "https://github.com/usaps/cmdi-releases/releases/download/v0.1.8/cmdi"
  sha256 "00859ace805f664860dce89b6cc2f0440a61c06b884e472b715432701fe4bcf9"

  def install
    bin.install "cmdi"
    bin.install_symlink bin/"cmdi" => "command"
  end

  test do
    system "#{bin}/cmdi", "--version"
  end
end
