require 'puppet_x/garethr/digitalocean/property/boolean'
require 'puppet_x/garethr/digitalocean/property/read_only'
require 'puppet_x/garethr/digitalocean/property/string'

Puppet::Type.newtype(:droplet_rename) do
  @doc = 'Type representing a digitalocean droplet'

  ensurable

  newproperty(:id) do
    desc 'The id of the droplet'
    validate do |value|
      fail 'Should not contains spaces' if value =~ /\s/
      fail 'Empty values are not allowed' if value == ''
    end
  end

  newproperty(:name) do
    desc 'The name of the droplet'
  end
end
