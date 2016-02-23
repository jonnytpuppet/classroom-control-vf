class memcached {

  package {'memcached':
    ensure => present,
  }
  
  file {'/etc/sysconfig/memcached':
    ensure => present,
    source => "puppet:///modules/memcached/memcached"
  }
  
  service {'memcached':
    ensure => running,
  }


}
