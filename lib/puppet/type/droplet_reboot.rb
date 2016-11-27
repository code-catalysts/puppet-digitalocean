require 'puppet_x/garethr/digitalocean/property/boolean'
require 'puppet_x/garethr/digitalocean/property/read_only'
require 'puppet_x/garethr/digitalocean/property/string'

Puppet::Type.newtype(:droplet_reboot) do
  @doc = 'Type representing a digitalocean droplet'

  ensurable

  newparam(:id, namevar: true) do
    desc 'The id of the droplet to delete'
    validate do |value|
      fail 'Should not contains spaces' if value =~ /\s/
      fail 'Empty values are not allowed' if value == ''
    end
  end
end
