# Install robot
class robot {
    case $operatingsystem {
        ubuntu: {
            package { 'python-pip':
                ensure => installed;
            }
            package { ['robotframework',
                    'robotframework-selenium2library']:
                ensure => installed,
                provider => pip,
                require => Package['python-pip']
            }
        }
    }
}
