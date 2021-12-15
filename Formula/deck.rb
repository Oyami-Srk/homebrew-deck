# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Deck < Formula
  desc "Declarative configuration for Kong"
  homepage "https://github.com/kong/deck"
  version "1.10.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Kong/deck/releases/download/v1.10.0/deck_1.10.0_darwin_amd64.tar.gz"
      sha256 "5050ce18574b68f1a7e16165ce53fb40218c32086879509d8752ca81de2cf796"

      def install
        bin.install "deck"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/Kong/deck/releases/download/v1.10.0/deck_1.10.0_darwin_arm64.tar.gz"
      sha256 "feae3b47973892d6d846de73f943d4db406c2df5bdf53bd61645df27b2843455"

      def install
        bin.install "deck"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Kong/deck/releases/download/v1.10.0/deck_1.10.0_linux_arm64.tar.gz"
      sha256 "d75745bdaa332971814ded23903ad5325a18ae83605b9331cdc19b67f12db67f"

      def install
        bin.install "deck"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Kong/deck/releases/download/v1.10.0/deck_1.10.0_linux_amd64.tar.gz"
      sha256 "01b8f93a634d4c50e8d6f21be85b7419a117b4643c67b94e8c13643819a22213"

      def install
        bin.install "deck"
      end
    end
  end

  test do
    system "#{bin}/deck", "version"
  end
end
