require 'spec_helper'

describe port(80) do
  it { should be_listening }
end

describe package('nginx'), :if => os[:family] == 'ubuntu' do
  it { should be_installed }
end

describe package('mysql-server'), if: os[:family] == 'ubuntu' do
  it { should be_installed }
end

describe package('redis-server'), if: os[:family] == 'ubuntu' do
  it { should be_installed }
end
