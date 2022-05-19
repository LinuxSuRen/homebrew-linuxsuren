# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Label < Formula
  desc "Audacity label tool"
  homepage "https://github.com/linuxsuren/audacity-label-plugin"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/LinuxSuRen/audacity-label-plugin/releases/download/v0.1.0/label-darwin-amd64.tar.gz"
      sha256 "aeadade4eb349ef77f30345a4410198f9bf1ab738872a8ce4951af4811611b3c"

      def install
        bin.install name
        prefix.install_metafiles
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/LinuxSuRen/audacity-label-plugin/releases/download/v0.1.0/label-darwin-arm64.tar.gz"
      sha256 "890729dcc64f7eec3d393e5977e3d7d081898743e18090a3fb91d0e687e643c3"

      def install
        bin.install name
        prefix.install_metafiles
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/LinuxSuRen/audacity-label-plugin/releases/download/v0.1.0/label-linux-amd64.tar.gz"
      sha256 "19939f0fcc4bb8ed5cd035520105fa843b9aca912b7eb0483dda889248a13059"

      def install
        bin.install name
        prefix.install_metafiles
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/LinuxSuRen/audacity-label-plugin/releases/download/v0.1.0/label-linux-arm64.tar.gz"
      sha256 "c8a1105015e18c60f9995aafbe164a367bcc1ab116b9fba5874a9ebc568ba8f1"

      def install
        bin.install name
        prefix.install_metafiles
      end
    end
  end

  depends_on "bash-completion" => :optional

  test do
    version_output = shell_output("#{bin}/label version")
    assert_match version.to_s, version_output
  end
end
