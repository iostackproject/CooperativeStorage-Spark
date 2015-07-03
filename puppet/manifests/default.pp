stage { 'first':
    before => Stage['main'];
}

class prepare {
    class { 'apt':
      update => {
        frequency => 'always',
      },
    }
}
class { 'prepare':
    stage => first;
}

include prepare

$sysPackages = ['git', 'curl', 'openjdk-6-jdk', 'maven']
package { $sysPackages:
  ensure => "installed",
  require  => Class['prepare']
}
