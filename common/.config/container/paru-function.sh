#!/bin/bash

_isInstalledParu() {
    package="$1";
    check="$(paru -Qs "${package}" | grep "local" | grep "local/${package} ")";
    if [ -n "${check}" ] ; then
        echo 0; #'0' means 'true' in Bash
        return; #true
    fi;
    echo 1; #'1' means 'false' in Bash
    return; #false
}

_installPackagesParu() {
    toInstall=();

    for pkg; do
        if [[ $(_isInstalledParu "${pkg}") == 0 ]]; then
            echo "${pkg} is already installed.";
            continue;
        fi;

        toInstall+=("${pkg}");
    done;

    if [[ "${toInstall[@]}" == "" ]] ; then
        # echo "All packages are already installed.";
        return;
    fi;

    printf "paru packages not installed:\n%s\n" "${toInstall[@]}";
    paru --noconfirm -S "${toInstall[@]}";
}
