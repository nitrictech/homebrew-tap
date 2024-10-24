# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Nitric < Formula
  desc "Nitric CLI"
  homepage "https://nitric.io/"
  version "1.54.16"
  license "Apache 2.0"

  depends_on "git"
  depends_on "pulumi" => :optional

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nitrictech/cli/releases/download/v1.54.16/nitric_1.54.16_macOS_arm64.tar.gz"
      sha256 "2f5e197d3df609605e0835a18e6e2686226ac57b34feacc10498905a574d3cb1"

      def install
        bin.install "nitric"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/nitrictech/cli/releases/download/v1.54.16/nitric_1.54.16_macOS_x86_64.tar.gz"
      sha256 "251db373d51bf159eb9a1c822445fe77152dfe1bde2858293397abe982abdd4e"

      def install
        bin.install "nitric"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/nitrictech/cli/releases/download/v1.54.16/nitric_1.54.16_Linux_x86_64.tar.gz"
      sha256 "cc11ccdd22212dcf33fe617689c6f964f65fe0c2004aeb29b34d9692847f134d"

      def install
        bin.install "nitric"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nitrictech/cli/releases/download/v1.54.16/nitric_1.54.16_Linux_arm64.tar.gz"
      sha256 "b51f273b6b4eb7375bdc3ba8711345c8d50e2a9b55103b907c02a7548cd43541"

      def install
        bin.install "nitric"
      end
    end
  end
end
