# Install robot standalone jar containing jython
class robot_jar {
    $JAR_ROBOT = "robotframework-2.7.7.jar"
    $URL_ROBOT = "http://robotframework.googlecode.com/files/$JAR_ROBOT"
    $DIR_JARS = "$PROJ_DIR/vm/jars"
    case $operatingsystem {
        ubuntu: {
            file { "$DIR_JARS":
                ensure => "directory",
            }
            exec { "download_robot_standalone":
                command => "curl -o $DIR_JARS/$JAR_ROBOT $URL_ROBOT",
                unless  => "test -f $DIR_JARS/$JAR_ROBOT",
                require => File["$PROJ_DIR/vm/robot"]
            }
        }
    }
}


#curl -o /vagrant/vm/robot/robotframework-2.7.7.jar http://robotframework.googlecode.com/files/robotframework-2.7.7.jar
