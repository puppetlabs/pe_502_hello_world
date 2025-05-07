# Copyright 2024. Puppet, Inc., a Perforce company. 
#
# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include hello_world::website
class hello_world::website {
  file { '/var/www/':
    ensure => directory,
    before => [File['index.html'], File['css-directory'], File['img-directory'], File['js-directory']],
  }

  file { 'index.html':
    ensure => file,
    path   => '/var/www/html/index.html',
    source => 'puppet:///modules/hello_world/index.html',
  }

  file { 'css-directory':
    ensure  => directory,
    path    => '/var/www/html/css/',
    source  => 'puppet:///modules/hello_world/css',
    recurse => true,
  }

  file { 'img-directory':
    ensure  => directory,
    path    => '/var/www/html/img/',
    source  => 'puppet:///modules/hello_world/img',
    recurse => true,
  }

  file { 'js-directory':
    ensure  => directory,
    path    => '/var/www/html/js/',
    source  => 'puppet:///modules/hello_world/js',
    recurse => true,
  }
}
