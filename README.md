a Puppet module for managing your [DigitalOcean](https://www.digitalocean.com/) droplets.

This module uses the [Barge](https://github.com/boats/barge) DigitalOcean API Library.

## Usage

The module includes a multiple types and providers which can be used to
create, delete, rename, shutdown, reboot and list all droplets. Also you can reset a droplet's root password.

```puppet
droplet_create {'test-digitalocean':
  ensure => present,
  region => 'lon1',
  size   => '512mb',
  image  => 5141286,
}
```

```puppet
droplet_delete {'33099124':
}
```


```puppet
droplet_reboot {'33099124':
}
```


```puppet
droplet_shutdown {'33099124':
}
```


```puppet
droplet_passreset {'33099124':
}
```


```puppet
droplet_showall {'33099124':
}
```


```puppet
droplet_rename {'old_name':
    id=> '33097547',
    name=> 'new_name',
}
```



Note: The module picks up your DigitalOcean Access Token from the environment variables.

You can add that in the environment like so:

```bash
export DIGITALOCEAN_ACCESS_TOKEN=yourtokenhere
```

## Further Scope

You can easily add new types and providers cover other API calls from DigitalOcean.
