# genka-cli

with [genka-api](https://github.com/soe-j/genka-api)

## Install
~~~bash
$ git clone https://github.com/soe-j/genka-cli ~/.genka
$ echo 'export PATH=~/.genka/bin:$PATH' >> ~/.bash_profile
$ echo 'eval "$(genka init)"' >> ~/.bash_profile
$ source ~/.bash_profile
~~~

## Setting
~~~bash
$ genka create member [yourname]
$ genka config my_name [yourname]
$ genka config api_url [apiurl]
~~~

## USAGE
### Create [project|stage]
~~~bash
$ genka create project awesome_project
$ genka create stage develop
$ genka create stage document
$ genka create stage bugfix
~~~

### Record
~~~bash
$ genka awesome_project develop
~~~
