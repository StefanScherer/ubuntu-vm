#!/bin/bash
vagrant destroy -f
vagrant box remove ubuntu1404-desktop --provider=virtualbox
vagrant box add ubuntu1404-desktop ../ubuntu1404-desktop_virtualbox.box
vagrant up --provider=virtualbox
