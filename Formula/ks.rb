# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ks < Formula
  desc "ks is a kubectl wrapper for Kubesphere"
  homepage "https://github.com/linuxsuren/ks"
  version "0.0.12"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/LinuxSuRen/ks/releases/download/v0.0.12/ks-darwin-amd64.tar.gz"
    sha256 "b54eecd6b8a5263692074aa8601d3956dd91df676bdeedd2850a801ef9405363"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/LinuxSuRen/ks/releases/download/v0.0.12/ks-linux-amd64.tar.gz"
    sha256 "efa5179bef5cb2bb8dcadf842085f0901227b18e6d6e3385dd6a2c35e5d464c8"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/LinuxSuRen/ks/releases/download/v0.0.12/ks-linux-arm64.tar.gz"
    sha256 "93fe8708265f60930cadc9481c5e76d49a6553cf3a254d45a0e1a5951d446ad4"
  end

  depends_on "vim" => :optional
  depends_on "bash-completion" => :optional

  def install
    bin.install name

    prefix.install_metafiles
  end

  test do
    version_output = shell_output("#{bin}/ks version")
    assert_match version.to_s, version_output
  end
end
