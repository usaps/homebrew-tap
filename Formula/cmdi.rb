class Cmdi < Formula
  desc "High-speed, intelligent media offloading for film sets"
  homepage "https://github.com/usaps/CMDI"
  version "0.1.5"
  license "MIT"

  # macOS universal binary (Apple Silicon + Intel)
  # Source code is private; binaries distributed from public releases repo
  url "https://github.com/usaps/cmdi-releases/releases/download/v0.1.5/cmdi"
  sha256 "8baf4e657f6a212cd2922eca1b7aeb41d5cc0cea18e5332cf0f0f9ee14093f5c"

  def install
    bin.install "cmdi"
    bin.install_symlink bin/"cmdi" => "command"
  end

  test do
    system "#{bin}/cmdi", "--version"
  end
end
