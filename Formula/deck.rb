# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Deck < Formula
  desc "Declarative configuration for Kong"
  homepage "https://github.com/kong/deck"
  version "1.22.0"

  on_macos do
    url "https://github.com/Kong/deck/releases/download/v1.22.0/deck_1.22.0_darwin_all.tar.gz"
    sha256 "09e592848b301a0748bed26e43232c5283c18702ceb76bf1dff418bc7b83bf70"

    def install
      bin.install "deck"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Kong/deck/releases/download/v1.22.0/deck_1.22.0_linux_arm64.tar.gz"
      sha256 "58cd3ae116c345a05334a97fff6817a8c0b6cc1d4c414d7a1c4575dcedf94bff"

      def install
        bin.install "deck"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Kong/deck/releases/download/v1.22.0/deck_1.22.0_linux_amd64.tar.gz"
      sha256 "313b49c5d1d3c850bea944a2a5fef314c9ce0fb7c3b070ce391a0c2e70003f6e"

      def install
        bin.install "deck"
      end
    end
  end

  test do
    system "#{bin}/deck", "version"
  end
end
