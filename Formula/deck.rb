# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Deck < Formula
  desc "Declarative configuration for Kong"
  homepage "https://github.com/kong/deck"
  version "1.22.1"

  on_macos do
    url "https://github.com/Kong/deck/releases/download/v1.22.1/deck_1.22.1_darwin_all.tar.gz"
    sha256 "6d90617676fefa431da21e732201c57432fd25b0eca3d7c70134bec183dd8f2f"

    def install
      bin.install "deck"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/Kong/deck/releases/download/v1.22.1/deck_1.22.1_linux_arm64.tar.gz"
      sha256 "e8fefe6a57543ca1694a9c23c491108b44d289a74974bbbfdbd9de92244c318e"

      def install
        bin.install "deck"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/Kong/deck/releases/download/v1.22.1/deck_1.22.1_linux_amd64.tar.gz"
      sha256 "d996b912ed4f3adb942aee2739ba9410228693da203e9614f34336d956d9081c"

      def install
        bin.install "deck"
      end
    end
  end

  test do
    system "#{bin}/deck", "version"
  end
end
