# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Hd < Formula
  desc "HTTP download tool"
  homepage "https://github.com/linuxsuren/http-downloader"
  version "0.0.6"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/LinuxSuRen/http-downloader/releases/download/v0.0.6/hd-darwin-amd64.tar.gz"
    sha256 "3794855c3c6f20dc8c8cf3eb2879e953bc30d0d3479da7c2737e15254aa15d8e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/LinuxSuRen/http-downloader/releases/download/v0.0.6/hd-linux-amd64.tar.gz"
    sha256 "60ad0c7078b4b1f7112584e8f41eb59ed4425bac8f50641965bea73e4b6a548d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/LinuxSuRen/http-downloader/releases/download/v0.0.6/hd-linux-arm64.tar.gz"
    sha256 "40af2a5a852b1e1754ad30a843e5e1acbf012e74f4d54182509fd35255df7346"
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
