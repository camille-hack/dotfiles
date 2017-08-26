#!/usr/bin/python3

import argparse
import os
import subprocess
import sys
import time


def get_connection():
    """Get the name of the current connection on wlan0."""
    stdout = subprocess.run(['nmcli', '--terse', '--fields',
                            'GENERAL.CONNECTION', 'device', 'show', 'wlan0'],
                            stdout=subprocess.PIPE).stdout.decode('utf-8')
    connection = stdout.split(':')[1].splitlines()[0]

    return connection


def set_connection(connection):
    """Set the given connection up."""
    subprocess.run(['nmcli', 'connection', 'up', connection])


def reload_modules():
    """Disable the current connection, reload the wifi modules and restart the
    connection."""
    saved_connection = get_connection()

    subprocess.run(['nmcli', 'device', 'disconnect', 'wlan0'])
    if os.getuid() is 0:
        subprocess.run(['modprobe', '-r', 'iwlmvm', 'iwlwifi'])
        time.sleep(2)
        subprocess.run(['modprobe', 'iwlmvm'])

    time.sleep(2)
    set_connection(saved_connection)


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='manage the wifi')
    parser.add_argument('-r', '--reload', action='store_true',
                        help='reload the modules (fix some module bugs)')
    parser.add_argument('-a', '--hotspot', action='store_true',
                        help='enable the hotspot')
    arguments = parser.parse_args()

    if arguments.reload:
        reload_modules()

    if arguments.hotspot:
        set_connection('Hotspot')
        sys.exit(0)

    if get_connection() == 'Hotspot':
        subprocess.run(['nmcli', 'connection', 'down', 'Hotspot'])
