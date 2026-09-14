class Cmdi < Formula
  desc "High-speed, intelligent media offloading for film sets"
  homepage "https://github.com/usaps/CMDI"
  version "0.1.21"
  license "MIT"

  # macOS universal binary (Apple Silicon + Intel)
  # Source code is private; binaries distributed from public releases repo
  url "https://github.com/usaps/cmdi-releases/releases/download/v0.1.21/cmdi"
  sha256 "0a61515742d9d7ab435e6ae9077821964079ec6f1e808e06672c1c527e962d43"

  def install
    bin.install "cmdi"
    bin.install_symlink bin/"cmdi" => "command"
  end

  test do
    system "#{bin}/cmdi", "--version"
  end
end
