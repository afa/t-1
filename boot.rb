require 'rubygems'
require 'bundler/setup'
Bundler.require(:default)
require 'benchmark'
require_relative 'lib/import'
Benchmark.bm {|x| x.report{ p Import.run(File.open('fcs.xml').read, File.open('fcs.xslt').read) } }
