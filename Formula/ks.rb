# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ks < Formula
  desc "ks is a tool which makes it be easy to work with KubeSphere."
  homepage "https://github.com/kubesphere-sigs/ks"
  version "0.0.45"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kubesphere-sigs/ks/releases/download/v0.0.45/ks-darwin-amd64.tar.gz"
      sha256 "04288899f30f7150eb9308f80b8280edcf0bd902f10759939f406b110eda1671"
    end
    if Hardware::CPU.arm?
      url "https://github.com/kubesphere-sigs/ks/releases/download/v0.0.45/ks-darwin-arm64.tar.gz"
      sha256 "8b864a9e238dddccc65db06936edace96d1b303645ef4473c13553e2e0f5762d"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/kubesphere-sigs/ks/releases/download/v0.0.45/ks-linux-amd64.tar.gz"
      sha256 "7d502deeacf2e2fd230493c5909b8f6b704857aadd4eda9f0d8a50d0c1bab956"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kubesphere-sigs/ks/releases/download/v0.0.45/ks-linux-arm64.tar.gz"
      sha256 "e1f5b66d8978bf31e5eac3f965130cf10df58794a6bd497032f8308d567b1bdf"
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
