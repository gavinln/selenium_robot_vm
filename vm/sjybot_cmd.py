import cmd
import time
import os
import re
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

def getSeleniumTestOS():
    return os.environ[seleniumTestOS]

set_options = {
    'platform': ['linux', 'windows'],
    'browser': ['chrome', 'firefox', 'ie']
}

set_re1 = re.compile('set\s+$')
set_re2 = re.compile('set\s+(\w+)=$')

class SeleniumJybot(cmd.Cmd):
    """command line shell for Jython version of Selenium Robot framework"""

    def do_run(self, line):
        '''run robot_test_file
        Run the robot test file'''
        startTime = time.time()
        RobotFramework.run([os.path.join(here(), 'cnn_home.txt')])
        elapsedTime = time.time() - startTime
        print "elapsed time = %s" % elapsedTime

    def complete_run(self, text, line, start_index, end_index):
        if text:
            return [
                fileName for fileName in os.listdir('.')
                if fileName.startswith(text)
            ]
        else:
            return os.listdir('.')

    def do_set(self, line):
        '''set
        sets options for running tests'''
        platformIdx = line.find('=')
        if platformIdx >= 0:
            setSeleniumTestOS(line[platformIdx + 1:])
        print '%s=%s' % (seleniumTestOS,
                         getSeleniumTestOS())

    def complete_set(self, text, line, start_index, end_index):
        def get_re1_match(text, options):
            if text in options:
                return [text + '=']
            elif text is None:
                return options
            return [option for option in options if option.startswith(text)]

        def get_re2_match(text, options):
            if text is None:
                return options
            return [option for option in options if option.startswith(text)]

        line_start = line[:start_index]

        match = set_re1.match(line_start)
        if match:
            return get_re1_match(text, set_options.keys())

        match = set_re2.match(line_start)
        if match:
            if match.group(1) in set_options:
                return get_re2_match(text, set_options[match.group(1)])


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
