# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ks < Formula
  desc "ks is a tool which makes it be easy to work with KubeSphere."
  homepage "https://github.com/kubesphere-sigs/ks"
  version "0.0.43"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kubesphere-sigs/ks/releases/download/v0.0.43/ks-darwin-amd64.tar.gz"
      sha256 "0f198d8f01246df78904ffa1f19d07120c6f978bf075ebf9a1543788c2d42e18"
    end
    if Hardware::CPU.arm?
      url "https://github.com/kubesphere-sigs/ks/releases/download/v0.0.43/ks-darwin-arm64.tar.gz"
      sha256 "0f1bf9b00bfb07812c93536acf97b6f644e1f17b005400d188d08fb85909b7ea"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kubesphere-sigs/ks/releases/download/v0.0.43/ks-linux-amd64.tar.gz"
      sha256 "c3bb15c1dd943d241deafd642115e9aec45d209d3900fd91ec0647ce65611afb"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubesphere-sigs/ks/releases/download/v0.0.43/ks-linux-arm64.tar.gz"
      sha256 "da03857f1dbb68a2c6d1db5677674885e0a5cedecb7758d6040345744646d191"
    end
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
