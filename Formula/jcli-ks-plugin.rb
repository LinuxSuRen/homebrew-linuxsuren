# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class JcliKsPlugin < Formula
  desc "cgit is a tiny tool for Chinese developers."
  homepage "https://github.com/linuxsuren/jcli-ks-plugin"
  version "0.0.1"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/LinuxSuRen/jcli-ks-plugin/releases/download/v0.0.1/jcli-ks-plugin-darwin-amd64.tar.gz"
    sha256 "c46e73b0e59d1405f02f11b62413c51be6c8a51c37548601e341ea0f94cd2cc1"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/LinuxSuRen/jcli-ks-plugin/releases/download/v0.0.1/jcli-ks-plugin-linux-amd64.tar.gz"
    sha256 "aaa2cc45552825b014bfa1ae14b8f5c808f8db48e1ae2d3788e9c0fbaab2b631"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/LinuxSuRen/jcli-ks-plugin/releases/download/v0.0.1/jcli-ks-plugin-linux-arm64.tar.gz"
    sha256 "4737b508d09117036326082e7bfc39971e875ec185464b05bba00eb2d5517405"
  end

  depends_on "vim" => :optional
  depends_on "bash-completion" => :optional

  def install
    bin.install name

    prefix.install_metafiles
  end

  test do
    version_output = shell_output("#{bin}/jcli-ks-plugin version")
    assert_match version.to_s, version_output
  end
end
