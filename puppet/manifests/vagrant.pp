#
# puppet magic for dev boxes
#
import "classes/*.pp"

$PROJ_DIR = "/vagrant"
$HOME_DIR = "/home/vagrant"

Exec {
    path => "/usr/local/bin:/usr/bin:/usr/sbin:/sbin:/bin",
}

class dev {
    class {
        init: ;
        robot: require => Class[init];
        java: require => Class[init];
        robot_jar: require => Class[java];
        selenium: require => Class[init];
    }
}

include dev
