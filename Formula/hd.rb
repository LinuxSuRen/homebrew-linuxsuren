# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Hd < Formula
  desc "HTTP download tool"
  homepage "https://github.com/linuxsuren/http-downloader"
  version "0.0.92"

  depends_on "bash-completion" => :optional

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/LinuxSuRen/http-downloader/releases/download/v0.0.92/hd-darwin-arm64.tar.gz"
      sha256 "62cb60ed7991b684cd9402b19969244afb642b9bb0b9d3508f2b2834d4d31406"

      def install
        bin.install name

        prefix.install_metafiles
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/LinuxSuRen/http-downloader/releases/download/v0.0.92/hd-darwin-amd64.tar.gz"
      sha256 "cb0850be05c79412c295d3b031c7970756c26ebf83bc38eec4b882c2c8f4c8de"

      def install
        bin.install name

        prefix.install_metafiles
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/LinuxSuRen/http-downloader/releases/download/v0.0.92/hd-linux-arm64.tar.gz"
      sha256 "35fa1152b290cc216121022490a70d37dd31db38c78b224d76decff09e0ce70e"

      def install
        bin.install name

        prefix.install_metafiles
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/LinuxSuRen/http-downloader/releases/download/v0.0.92/hd-linux-amd64.tar.gz"
      sha256 "0ad3b7d38d29295300142a1f89770413244fb46a79ef4771f4871aafd7dc3d2f"

      def install
        bin.install name

        prefix.install_metafiles
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/LinuxSuRen/http-downloader/releases/download/v0.0.92/hd-linux-arm6.tar.gz"
      sha256 "99d82ee534b7bb0f479377948732b52326e4a20b3a918d9404de04c33f73bdd0"

      def install
        bin.install name

        prefix.install_metafiles
      end
    end
  end

  test do
    version_output = shell_output("#{bin}/hd version")
    assert_match version.to_s, version_output
  end
end
