import time
import os
import sys
from datetime import datetime


def get_curr_time():
    return round(time.time()) # should print epoch time in seconds


def get_time_file(file_name):
    return open(file_name, "at")


def get_working_dir_name():
    dirs = os.getcwd().split("/")
    return dirs[len(dirs)-1]


def get_time_text():
    """
        return human readable current time
    """
    now = datetime.now()
    return now.strftime("%m/%d/%Y %H:%M:%S")


def check_for_file(file_name):
    if os.path.isfile(file_name):
        raise Exception("Found unexpected start file. Did you forget to call stop?")
    pass


class TimeTracker:
    # format: start-t, end-t, end-time-human, duration-sec, duration-min
    delim = ","
    start_file_name = "start_wk_time.txt"
    time_track_file_name = "wk_time.csv"

    def start_clock(self):
        check_for_file(self.start_file_name)
        start_file = get_time_file(self.start_file_name)
        start = get_curr_time()
        start_file.write(str(start))
        start_file.close()

    def get_start(self):
        file = None
        try:
            file = open(self.start_file_name, "r")
        except:
            print("Error reading start file. Did you call stop before start?") 
            exit(1)
        start = file.read()
        file.close()
        return start 

    def stop_clock(self):
        file = get_time_file(self.time_track_file_name)
        start = self.get_start()

        os.remove(self.start_file_name) 

        human_t = get_time_text()
        end = get_curr_time()
        duration_s = end - int(start) 
        duration_m = int(duration_s / 60)
        line = start + self.delim + str(end) + self.delim + human_t + self.delim + str(duration_s) + self.delim + str(duration_m) + "\n"

        file.write(line)
        file.close()


class TimeAnalyzer:
    time_track_file_name = "wk_time.csv"
    delim = ","

    def total_time_minutes(self):
        file = None
        try:
            file = open(self.time_track_file_name, "r")
        except:
            print("Error reading time file") 
            exit(1)

        total_min = 0.0
        for line in file.readlines():
            line = line.replace(" ","")
            if line == "":
                continue

            content = line.split(self.delim)
            total_min += float(content[len(content)-1])
        return total_min

    def print_total_time_hours(self):
        minutes = self.total_time_minutes()
        print("total time minutes: " + str(minutes))
        print("total time hours:   " + str(minutes/60.0))


def main():
    if len(sys.argv) != 2:
        print("Expecting one arg: 'start' or 'stop'")
        exit(0)

    cmd = sys.argv[1]
    tt = TimeTracker()

    if "start" == cmd:
        tt.start_clock()
    elif "stop" == cmd:
        tt.stop_clock()
    elif "th" == cmd:
        ta = TimeAnalyzer()
        ta.print_total_time_hours()
    else:
        raise Exception("Unkown command: " + cmd + ". Supported commands are 'start' or 'stop'")


if __name__ == "__main__":
    main()
