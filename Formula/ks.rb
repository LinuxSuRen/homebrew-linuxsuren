# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ks < Formula
  desc "ks is a tool which makes it be easy to work with KubeSphere."
  homepage "https://github.com/linuxsuren/ks"
  version "0.0.21"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/LinuxSuRen/ks/releases/download/v0.0.21/ks-darwin-amd64.tar.gz"
    sha256 "346e627c11e6d12ab47ff1c24be48118e390bbf4cfeecb541b8eb16ede2202ca"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/LinuxSuRen/ks/releases/download/v0.0.21/ks-linux-amd64.tar.gz"
    sha256 "3fed51c8006a44e59d1ec0a80fb319af8eb25591a9217ca0c0b546f07bc04faf"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/LinuxSuRen/ks/releases/download/v0.0.21/ks-linux-arm64.tar.gz"
    sha256 "b36e7d2ad17b9ffb9ff963e34f3149cd7cd4a707682bbf672785bd52dab64bd4"
  end

  depends_on "vim" => :optional
  depends_on "bash-completion" => :optional
  depends_on "kubectl" => :optional

  def install
    bin.install name

    prefix.install_metafiles
  end

  test do
    version_output = shell_output("#{bin}/ks version")
    assert_match version.to_s, version_output
  end
end
