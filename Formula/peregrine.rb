# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Peregrine < Formula
  desc "Peregrine is a router solution for iOS Application module programs."
  homepage "https://github.com/BinaryParadise/Peregrine"
  url "https://github.com/BinaryParadise/Peregrine/releases/download/0.1.0/rakellvm-9.0.2.tar.gz"
  version "0.1.0"
  sha256 "6ffea5d8275a33717f9aac6fb7ebabaa327b5141ce04ddb5f2da186786591da7"
  # depends_on "cmake" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # system "cmake", ".", *std_cmake_args
    bin.install 'rakellvm'
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test Peregrine`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
