class Sendosc < Formula
  desc "Simple command-line tool for sending OSC packet"
  homepage "https://github.com/yoggy/sendosc/archive/v1.0.0.tar.gz"
  url "https://github.com/yoggy/sendosc/archive/v1.0.0.tar.gz"
  sha256 "78ec42aa279bfdf0e172b2bf83b54dcbc86b476de9e69cadbacf18df31c24099"
  depends_on "cmake" => :build
  depends_on "oscpack"

  def install
    system "cmake", ".", *std_cmake_args
    system "make", "install"
  end

  test do
    system "false"
  end
end
