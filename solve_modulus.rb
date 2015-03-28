#!/usr/bin/ruby

modulo = 'B787BAFFF202CB8DC560AE9F6F1A343F4BFE34E232E08D4A1FB5D07B9F35537C247A9F0C0FBC2518DD2EEA393C718E90EB18595BA147D02DA7DFCAF67A74242754264E895D93B2F9B8A8A7AAA1DF143DC70D79403ED9D39AB219E2CB014AD565D77DB2ADB64DE1C7B87D743C8FE5A2C05BB6F4D8F67528D20EBABB0A45102AE824B8B56A6805C21D85DE2B49AA5812EFE3C7C5545CA51B8AE2493300959C80F989B6919A743DCBA3B7A25999FDF237A62300DADAC5759AD5446BA2ECA6176D1074463FEFB3B24B3BDB5DEC19DA69523EE58CD686CF373FA9B7DFF2816C8960D92F0F1EDD7B38B4CE0C9284D5C436DB8B8D687B4DC867A2414F86FA77EE192A5B'

File.open(ARGV[0]) do |f|
  f.each_line do |prime|
    prime.chomp!
    amari = (modulo.hex % prime.hex)
    if amari == 0 then
      puts "PRIME[#{prime}]:AMARI[#{amari}]"
    end
  end
end
