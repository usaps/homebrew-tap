class Cmdi < Formula
  desc "High-speed, intelligent media offloading for film sets"
  homepage "https://github.com/usaps/CMDI"
  version "0.1.0"
  license "MIT"

  # macOS universal binary (Apple Silicon + Intel)
  url "https://github.com/usaps/CMDI/releases/download/v0.1.0/cmdi-mac-universal"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"

  def install
    bin.install "cmdi-mac-universal" => "cmdi"
    bin.install_symlink bin/"cmdi" => "command"
  end

  test do
    system "#{bin}/cmdi", "--version"
  end
end
