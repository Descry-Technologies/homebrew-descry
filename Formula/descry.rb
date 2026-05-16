class Descry < Formula
  desc "Local action firewall for AI coding agents"
  homepage "https://descry.app"
  license "Apache-2.0"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Descry-Technologies/descry/releases/download/v0.1.0/descry-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "8d1c3992a1dad58c8d1dd183c8869421814ca0d2e7eb71b0a9f23055b89761ad"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/Descry-Technologies/descry/releases/download/v0.1.0/descry-0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0a86f782988dd66c7d09c20914273567f068849bc0c0f29dbf8327f3aadbf088"
    end
  end

  def install
    bin.install "descry"
    prefix.install "README.md"
    prefix.install "CHANGELOG.md"
    prefix.install "LICENSE"
  end

  test do
    assert_match "Usage: descry", shell_output("#{bin}/descry --help")
  end
end
