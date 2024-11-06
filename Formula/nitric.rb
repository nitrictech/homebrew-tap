# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Nitric < Formula
  desc "Nitric CLI"
  homepage "https://nitric.io/"
  version "1.55.3"
  license "Apache 2.0"

  depends_on "git"
  depends_on "pulumi" => :optional

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nitrictech/cli/releases/download/v1.55.3/nitric_1.55.3_macOS_arm64.tar.gz"
      sha256 "3bd107ab419d0385e3e41a943d41cc22e8f7ac8eeac5ebb77b3a63cea042b7f0"

      def install
        bin.install "nitric"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/nitrictech/cli/releases/download/v1.55.3/nitric_1.55.3_macOS_x86_64.tar.gz"
      sha256 "e1c5041244b0823b94d99e8343e60243cf15d9385d453ae79c1ae4930cec49d3"

      def install
        bin.install "nitric"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nitrictech/cli/releases/download/v1.55.3/nitric_1.55.3_Linux_arm64.tar.gz"
      sha256 "628f3bfe77c7b69115eff86dbfe9caeacbd43ed1c35b8eff4d176948560bd4ce"

      def install
        bin.install "nitric"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/nitrictech/cli/releases/download/v1.55.3/nitric_1.55.3_Linux_x86_64.tar.gz"
      sha256 "5d92c2e9f29e7d70911d8c2914347283876f39120e6ead9646a149d73405940e"

      def install
        bin.install "nitric"
      end
    end
  end
end
