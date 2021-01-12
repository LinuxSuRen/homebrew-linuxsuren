# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mp < Formula
  desc "image mirror pull tool"
  homepage "https://github.com/linuxsuren/mirrors"
  version "0.0.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/LinuxSuRen/mirrors/releases/download/v0.0.1/mp-darwin-amd64.tar.gz"
    sha256 "e527e5b4ccca91d845192e31081c704b47e9f4b48e5a50c67f0e347cd9d6b6a8"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/LinuxSuRen/mirrors/releases/download/v0.0.1/mp-linux-amd64.tar.gz"
    sha256 "2c29fec34a69a7053ec6092c895c2ccd418ee55128f393ab8d723dd81f6d0aec"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/LinuxSuRen/mirrors/releases/download/v0.0.1/mp-linux-arm64.tar.gz"
    sha256 "bed3f1ad58d69453078dfd8d0cbcdd9707ab48226499b432ae74310a1f7382a6"
  end

  depends_on "vim" => :optional
  depends_on "bash-completion" => :optional

  def install
    bin.install name

    prefix.install_metafiles
  end

  test do
    version_output = shell_output("#{bin}/mp version")
    assert_match version.to_s, version_output
  end
end
