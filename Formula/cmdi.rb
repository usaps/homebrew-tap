class Cmdi < Formula
  desc "High-speed, intelligent media offloading for film sets"
  homepage "https://github.com/usaps/CMDI"
  version "0.1.26"
  license "MIT"

  # macOS arm64 binary (Apple Silicon)
  # Source code is private; binaries distributed from public releases repo
  url "https://github.com/usaps/cmdi-releases/releases/download/v0.1.26/cmdi"
  sha256 "fb9ee6706aa2dfcf4f3039ce371289793fc965bd9d6ae78910683e3889b21f30"

  def install
    bin.install "cmdi"
    bin.install_symlink bin/"cmdi" => "command"
  end

  test do
    system "#{bin}/cmdi", "--version"
  end
end
