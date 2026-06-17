class Cmdi < Formula
  desc "High-speed, intelligent media offloading for film sets"
  homepage "https://github.com/usaps/CMDI"
  version "0.1.15"
  license "MIT"

  # macOS universal binary (Apple Silicon + Intel)
  # Source code is private; binaries distributed from public releases repo
  url "https://github.com/usaps/cmdi-releases/releases/download/v0.1.15/cmdi"
  sha256 "539ee51a60e2abfc05042418b6b65658e3f52572d5064ddf4c15ce66a406a659"

  def install
    bin.install "cmdi"
    bin.install_symlink bin/"cmdi" => "command"
  end

  test do
    system "#{bin}/cmdi", "--version"
  end
end
