# This file was generated by GoReleaser. DO NOT EDIT.
class Ks < Formula
  desc "ks is a kubectl wrapper for Kubesphere"
  homepage "https://github.com/linuxsuren/ks"
  version "0.0.7"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/LinuxSuRen/ks/releases/download/v0.0.7/kubectl-ks-darwin-amd64.tar.gz"
    sha256 "e80d98aaf9da7055ec652897f32fc55f7820e62148643d06095f30bb1e18afd7"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/LinuxSuRen/ks/releases/download/v0.0.7/kubectl-ks-linux-amd64.tar.gz"
    sha256 "37801cb2ac1cb977728d93ac726609f733aafb20440e93a2273fe723d663002d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/LinuxSuRen/ks/releases/download/v0.0.7/kubectl-ks-linux-arm64.tar.gz"
    sha256 "fb013e2156716c6528fda7b8f96f428828cb094f450d2cdf1c9f741b4ff95b5f"
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
