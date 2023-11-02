# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Deck < Formula
  desc "Declarative configuration for Kong"
  homepage "https://github.com/kong/deck"
  version "1.28.1"

  on_macos do
    url "https://github.com/Kong/deck/releases/download/v1.28.1/deck_1.28.1_darwin_all.tar.gz"
    sha256 "f19cec40cf5bc1129286f73f6a1aa9f112221c54e499470d73ece479a530b2ec"

    def install
      bin.install "deck"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Kong/deck/releases/download/v1.28.1/deck_1.28.1_linux_arm64.tar.gz"
      sha256 "32c6271f511869258a2fb20e196dc63f86d0c63604adef26e545d32d40f5c858"

      def install
        bin.install "deck"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Kong/deck/releases/download/v1.28.1/deck_1.28.1_linux_amd64.tar.gz"
      sha256 "c2981d9565e2ce2556d15bc9719c75ff1956b4ed43d7c99f7a92f177d30ca955"

      def install
        bin.install "deck"
      end
    end
  end

  test do
    system "#{bin}/deck", "version"
  end
end
