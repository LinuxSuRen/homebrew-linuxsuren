# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Hd < Formula
  desc "HTTP download tool"
  homepage "https://github.com/linuxsuren/http-downloader"
  version "0.0.29"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/LinuxSuRen/http-downloader/releases/download/v0.0.29/hd-darwin-amd64.tar.gz"
    sha256 "c508efdc299cf2f4115d77d04d9227cf0ee2925f88968b44c1495cb20186d021"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/LinuxSuRen/http-downloader/releases/download/v0.0.29/hd-linux-amd64.tar.gz"
    sha256 "88fd8baa535c3e08f2d11c90a231607922f9b53a054a06921992d3065e7723b5"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/LinuxSuRen/http-downloader/releases/download/v0.0.29/hd-linux-arm64.tar.gz"
    sha256 "0fffb04f531338ef5c58b46df2ab6f70b96b44f9d1f1c63f5f86715ac49e5b08"
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
