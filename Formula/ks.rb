# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ks < Formula
  desc "ks is a kubectl wrapper for Kubesphere"
  homepage "https://github.com/linuxsuren/ks"
  version "0.0.16"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/LinuxSuRen/ks/releases/download/v0.0.16/ks-darwin-amd64.tar.gz"
    sha256 "3406e1996275b0d63df318c50f8a38c14cada7b80cabc112678eaea0fe01319f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/LinuxSuRen/ks/releases/download/v0.0.16/ks-linux-amd64.tar.gz"
    sha256 "4c6c71ca0db5c44b3bda071e0f9964c264f6884e6075f179fdc38fea8349fad8"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/LinuxSuRen/ks/releases/download/v0.0.16/ks-linux-arm64.tar.gz"
    sha256 "a0833692946528ee38ce5eb8d02fbc5a81e14fedbb845c2d2cd41a25a215e05a"
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
