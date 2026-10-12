class Cmdi < Formula
  desc "High-speed, intelligent media offloading for film sets"
  homepage "https://github.com/usaps/CMDI"
  version "0.1.27"
  license "MIT"

  # macOS arm64 binary (Apple Silicon)
  # Source code is private; binaries distributed from public releases repo
  url "https://github.com/usaps/cmdi-releases/releases/download/v0.1.27/cmdi"
  sha256 "00626a5fccc40a16a7a69713db540307bfdedb7abd696e696b91667fd76052d7"

  def install
    bin.install "cmdi"
    bin.install_symlink bin/"cmdi" => "command"
  end

  test do
    system "#{bin}/cmdi", "--version"
  end
end
