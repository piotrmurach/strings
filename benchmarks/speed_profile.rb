require 'benchmark/ips'
require 'strings'

text = "Ignorance is the parent of fear."

Benchmark.ips do |x|
  x.report('wrap') do
    Strings::Wrap.wrap(text, 10)
  end

  x.report('truncate') do
    Strings::Truncate.truncate(text, 10)
  end

  x.compare!
end

# (2017-12-09)
#
# Calculating -------------------------------------
#                 wrap       186 i/100ms
#             truncate       295 i/100ms
# -------------------------------------------------
#                 wrap     1917.2 (±2.2%) i/s -       9672 in   5.047297s
#             truncate     3020.6 (±3.0%) i/s -      15340 in   5.083516s
#
# Comparison:
#             truncate:     3020.6 i/s
#                 wrap:     1917.2 i/s - 1.58x slower
#
