require 'rubygems'
require 'bundler/setup'
Bundler.require(:default)
require 'benchmark'
require_relative 'lib/import'
Benchmark.bm do |x|
  x.report('pu'){ @bm1 = Import.run(File.open('purchaseNotice_Adygeya_Resp_20130301_000000_20130401_235959_001.xml').read, File.open('pu.xslt').read) }
  x.report('fcs'){ @bm2 = Import.run(File.open('fcs.xml').read, File.open('fcs.xslt').read) }
  x.report('1m'){ @bm3 = Import.run(File.open('pu.xml').read, File.open('pu.xslt').read) }
end
p 'pu', @bm1
p 'fcs', @bm2
p '1m records count', @bm3["purchaseNotice"]['body'].size
