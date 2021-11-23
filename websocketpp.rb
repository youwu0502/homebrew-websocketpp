require 'formula'

class Websocketpp < Formula
  head 'https://github.com/zaphoyd/websocketpp.git'

  depends_on 'cmake' => :build

  def install
    system "cmake  . #{std_cmake_args.join(" ")}"
    system "make install"
  end
end