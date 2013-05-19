import cmd
import time
import os
from org.robotframework import RobotFramework

def here():
    return os.path.abspath(os.path.dirname(__file__))

'''
    50 seconds
        10 seconds to load jars
        40 seconds to open browser to CNN (10 seconds less subsequent times)
'''
class HelloWorld(cmd.Cmd):
    """Simple command processor example."""

    def do_run(self, line):
        startTime = time.time()
        RobotFramework.run([os.path.join(here(), 'cnn_home.txt')])
        elapsedTime = time.time() - startTime
        print "elapsed time = %s" % elapsedTime

    def do_exit(self, line):
        return True

if __name__ == '__main__':
    HelloWorld().cmdloop()

