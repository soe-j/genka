#!/usr/bin/env bash

COMP_DIR=$GENKA_ROOT/completions

setting_complete () {
  case $3 in
    genka )
      PROJECTS=$(ls $GENKA_ROOT/resources/projects)
      COMPREPLY=( `compgen -W "config create init load $PROJECTS" $2` )
      ;;
    config )
      COMPREPLY=( `compgen -W "api_url my_name list" $2` )
      ;;
    create )
      COMPREPLY=( `compgen -W "project stage member" $2` )
      ;;
    * )
      STAGES=$(ls $GENKA_ROOT/resources/stages)
      COMPREPLY=( $STAGES )
      ;;
  esac
}

complete -F setting_complete genka
