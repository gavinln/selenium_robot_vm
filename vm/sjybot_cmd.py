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
    Need to be able to select LINUX or WINDOWS
'''
seleniumTestOS = 'SELENIUM_TEST_OS'

def setSeleniumTestOS(name):
    os.environ[seleniumTestOS] = name
    return name

class SeleniumJybot(cmd.Cmd):
    """command line shell for Jython version of Selenium Robot framework"""

    def do_run(self, line):
        '''run robot_test_file
        Run the robot test file'''
        startTime = time.time()
        RobotFramework.run([os.path.join(here(), 'cnn_home.txt')])
        elapsedTime = time.time() - startTime
        print "elapsed time = %s" % elapsedTime

    def do_linux(self, line):
        '''linux
        Run all future tests on Linux VM'''
        print '%s=%s' % (seleniumTestOS,
                           setSeleniumTestOS('LINUX'))

    def do_windows(self, line):
        '''windows
        Run all future tests on Windows'''
        print '%s=%s' % (seleniumTestOS,
                           setSeleniumTestOS('WINDOWS'))

    def do_clear(self, line):
        '''clear
        Delete the Robot output files'''
        fileName = os.path.join(here(), 'output.xml')
        if os.path.exists(fileName):
            print 'removed file: %s' % fileName
            os.remove(fileName)

    def do_exit(self, line):
        '''exit
        Exits the command shell'''
        print "To rerun execute ./sjybot.sh\nExiting..." 
        return True

if __name__ == '__main__':
    SeleniumJybot().cmdloop()

