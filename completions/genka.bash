#!/usr/bin/env bash

COMP_DIR=$GENKA_ROOT/completions

setting_complete () {
  case $3 in
    genka )
      PROJECTS=$(ls $GENKA_ROOT/resources/projects)
      COMPREPLY=( config create init load $PROJECTS )
      ;;
    config )
      COMPREPLY=( api_url my_name list )
      ;;
    create )
      COMPREPLY=( project stage member )
      ;;
  esac
}

complete -F setting_complete genka
