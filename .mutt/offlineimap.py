#!/usr/bin/python
import re, subprocess

# GPG encrypted password lookup
def get_gpg_pass(keyfile):
  pw = subprocess.check_output(["gpg", "-q", "--use-agent", "--batch", "-d", keyfile])
  return str(pw).strip()

# Mac keychain access
def get_keychain_pass(account=None, server=None):
    params = {
        'security': '/usr/bin/security',
        'command': 'find-internet-password',
        'account': account,
        'server': server,
        'keychain': '/Users/cbracken/Library/Keychains/login.keychain',
    }
    command = "sudo -u cbracken %(security)s -v %(command)s -g -a %(account)s -s %(server)s %(keychain)s" % params
    output = subprocess.check_output(command, shell=True, stderr=subprocess.STDOUT)
    outtext = [l for l in output.splitlines()
               if l.startswith('password: ')][0]

    return re.match(r'password: "(.*)"', outtext).group(1)
