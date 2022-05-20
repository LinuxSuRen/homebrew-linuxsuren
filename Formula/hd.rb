# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Hd < Formula
  desc "HTTP download tool"
  homepage "https://github.com/linuxsuren/http-downloader"
  version "0.0.59"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/LinuxSuRen/http-downloader/releases/download/v0.0.59/hd-darwin-amd64.tar.gz"
      sha256 "0845b6e261a641a1103a4e5ce90f7cdf46382525aacd68b18f3aff697c15cfc5"

      def install
        bin.install name

        prefix.install_metafiles
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/LinuxSuRen/http-downloader/releases/download/v0.0.59/hd-darwin-arm64.tar.gz"
      sha256 "602a230fe456b1a471e7147bbe546af96abc248ecdb58e9a2487852e992f5f5d"

      def install
        bin.install name

        prefix.install_metafiles
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/LinuxSuRen/http-downloader/releases/download/v0.0.59/hd-linux-arm6.tar.gz"
      sha256 "ef876b7926719e438ed3f974b48b9fb69f54a42a236a9d7f3b506787724eba2c"

      def install
        bin.install name

        prefix.install_metafiles
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/LinuxSuRen/http-downloader/releases/download/v0.0.59/hd-linux-amd64.tar.gz"
      sha256 "b21b1058aea95df64319bbc50f3f982d8d83720e6966acb5c60be19bc560bb9c"

      def install
        bin.install name

        prefix.install_metafiles
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/LinuxSuRen/http-downloader/releases/download/v0.0.59/hd-linux-arm64.tar.gz"
      sha256 "51edd82cf2c32c1c348a2984e4b4caacb468b187e1969da8aa11f455a6e9d6e8"

      def install
        bin.install name

        prefix.install_metafiles
      end
    end
  end

  depends_on "bash-completion" => :optional

  test do
    version_output = shell_output("#{bin}/hd version")
    assert_match version.to_s, version_output
  end
end
