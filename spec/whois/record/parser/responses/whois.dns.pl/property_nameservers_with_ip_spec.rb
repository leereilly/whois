# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.dns.pl/property_nameservers_with_ip.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.dns.pl.rb'

describe Whois::Record::Parser::WhoisDnsPl, "property_nameservers_with_ip.expected" do

  subject do
    file = fixture("responses", "whois.dns.pl/property_nameservers_with_ip.txt")
    part = Whois::Record::Part.new(:body => File.read(file))
    described_class.new(part)
  end

  describe "#nameservers" do
    it do
      subject.nameservers.should be_a(Array)
      subject.nameservers.should have(2).items
      subject.nameservers[0].should be_a(Whois::Record::Nameserver)
      subject.nameservers[0].name.should == "dns1.pentex.pl"
      subject.nameservers[0].ipv4.should == "188.165.232.46"
      subject.nameservers[1].should be_a(Whois::Record::Nameserver)
      subject.nameservers[1].name.should == "dns2.pentex.pl"
      subject.nameservers[1].ipv4.should == "83.142.46.21"
    end
  end
end
