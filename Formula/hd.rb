# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Hd < Formula
  desc "HTTP download tool"
  homepage "https://github.com/linuxsuren/http-downloader"
  version "0.0.43"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/LinuxSuRen/http-downloader/releases/download/v0.0.43/hd-darwin-amd64.tar.gz"
      sha256 "7f1a4f4ec7e7564b70d84f7e81d7615939a40b8482debe3d82db4d78118ab2a3"
    end
    if Hardware::CPU.arm?
      url "https://github.com/LinuxSuRen/http-downloader/releases/download/v0.0.43/hd-darwin-arm64.tar.gz"
      sha256 "2a36ad50c59b78bf89f417c9880da6973c4b03d11de6f872d8f82f1cedc2b87f"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/LinuxSuRen/http-downloader/releases/download/v0.0.43/hd-linux-amd64.tar.gz"
      sha256 "bdd215992e220a3789ff7dc808a0844927e8bd71ba4897d1ee7cece45222d40b"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/LinuxSuRen/http-downloader/releases/download/v0.0.43/hd-linux-arm64.tar.gz"
      sha256 "3379881f22a8613cbfe9cce82fdcaf89e0c13ebd36641dde8e4e4ef639ea5e0c"
    end
  end

  depends_on "bash-completion" => :optional

  def install
    bin.install name

    prefix.install_metafiles
  end

  test do
    version_output = shell_output("#{bin}/hd version")
    assert_match version.to_s, version_output
  end
end
