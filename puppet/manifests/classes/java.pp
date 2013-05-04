# Install java
class java {
    case $operatingsystem {
        ubuntu: {
            package {"openjdk-6-jre-headless":
                ensure => installed;
            }
        }
    }
}
