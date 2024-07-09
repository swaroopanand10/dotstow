#!/usr/bin/env bash

_isInstalledYay() {
    package="$1";
    check="$(yay -Qs "${package}" | grep "local/${package}\s")"; # a space is neccesary at the end so that, ex- searching for "neovim" does not match to "neovim-nightly" as the space is after the full package name.
    if [ -n "${check}" ] ; then
        echo 0; #'0' means 'true' in Bash
        return; #true
    fi;
    echo 1; #'1' means 'false' in Bash
    return; #false
}

_installPackagesYay() {
    toInstall=();

    for pkg; do
        if [[ $(_isInstalledYay "${pkg}") == 0 ]]; then
            echo "${pkg} is already installed.";
            continue;
        fi;

        toInstall+=("${pkg}");
    done;

    # if [[ "${toInstall[@]}" == "" ]] ; then
    #     echo "All packages are already installed.";
    #     return;
    # fi;

    printf "yay packages not installed:\n%s\n" "${toInstall[@]}";
    yes | yay --noconfirm -S "${toInstall[@]}";
}
