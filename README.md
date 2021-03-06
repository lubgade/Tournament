# Tournament results


## Overview

This project allows users to generate random swiss pairings using a Python module that uses the PostgreSQL database which keeps track of players & matches in a game tournament.

## Setup

* Install [Vagrant](https://www.vagrantup.com/) and [VirtualBox](https://www.virtualbox.org/)
* Clone the [tournament repo](https://github.com/udacity/fullstack-nanodegree-vm)
* Launch the Vagrant VM with `vagrant up`
* Run `vagrant ssh`

## Usage

* Write SQL database and table defintions in the file **tournament.sql**
* Write Python functions, which provide access to your database, in the file **tournament.py**
* Run a test suite to verify your code using **tournament_test.py** using the command `python tournament_test.py` 
* Run SQL queries on the tables of the currently connected database(tournament) using `psql`
* Alternatively run `psql` followed by `\i tournament.sql` to execute the sql commands from the file **tournament.sql**
