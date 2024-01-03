# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Nitric < Formula
  desc "Nitric CLI"
  homepage "https://nitric.io/"
  version "1.33.6"
  license "Apache 2.0"

  depends_on "git"
  depends_on "pulumi" => :optional

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nitrictech/cli/releases/download/v1.33.6/nitric_1.33.6_macOS_arm64.tar.gz"
      sha256 "723d5c90e5d87c8e2e6da583908cb1225837f324bc876d21bd17b09abfa24c0a"

      def install
        bin.install "nitric"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/nitrictech/cli/releases/download/v1.33.6/nitric_1.33.6_macOS_x86_64.tar.gz"
      sha256 "8f50590d317c709316076abbc70f984980105cce94dd68a67e9cae5003d3d469"

      def install
        bin.install "nitric"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nitrictech/cli/releases/download/v1.33.6/nitric_1.33.6_Linux_arm64.tar.gz"
      sha256 "41bacb287b2d4c6925a8393195655a9afb4a0dad7911c33dbc4fab1ca616702a"

      def install
        bin.install "nitric"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/nitrictech/cli/releases/download/v1.33.6/nitric_1.33.6_Linux_x86_64.tar.gz"
      sha256 "3830550080ab44786d7514e1a605a655f935c515919275dcceefd6c675fa7fbe"

      def install
        bin.install "nitric"
      end
    end
  end
end
