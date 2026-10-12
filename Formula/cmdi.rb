class Cmdi < Formula
  desc "High-speed, intelligent media offloading for film sets"
  homepage "https://github.com/usaps/CMDI"
  version "0.1.25"
  license "MIT"

  # macOS arm64 binary (Apple Silicon)
  # Source code is private; binaries distributed from public releases repo
  url "https://github.com/usaps/cmdi-releases/releases/download/v0.1.25/cmdi"
  sha256 "acf00cf92bcd1f250696a3088780223d888e04427f91e779bf15aed9b95e8440"

  def install
    bin.install "cmdi"
    bin.install_symlink bin/"cmdi" => "command"
  end

  test do
    system "#{bin}/cmdi", "--version"
  end
end
