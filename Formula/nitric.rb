# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Nitric < Formula
  desc "Nitric CLI"
  homepage "https://nitric.io/"
  version "1.54.7"
  license "Apache 2.0"

  depends_on "git"
  depends_on "pulumi" => :optional

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nitrictech/cli/releases/download/v1.54.7/nitric_1.54.7_macOS_arm64.tar.gz"
      sha256 "02bf40aeae71b436096c5ffb7de3724f8ed4d703d3f3df948afa6fd16f67b187"

      def install
        bin.install "nitric"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/nitrictech/cli/releases/download/v1.54.7/nitric_1.54.7_macOS_x86_64.tar.gz"
      sha256 "f99b46bf2a9ca5734d41b3d4cfd3dcdb51666218de54b9a5e62eb67f46ea3035"

      def install
        bin.install "nitric"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nitrictech/cli/releases/download/v1.54.7/nitric_1.54.7_Linux_arm64.tar.gz"
      sha256 "8f508398272840a20b87fc89fa0c50990da03acb0f93b4a279e92a7222c48ec9"

      def install
        bin.install "nitric"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/nitrictech/cli/releases/download/v1.54.7/nitric_1.54.7_Linux_x86_64.tar.gz"
      sha256 "247495cf6919e9597db6447f1b43e4343d44f31e53c22c77b8499bf36a2c227a"

      def install
        bin.install "nitric"
      end
    end
  end
end
