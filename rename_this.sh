#!/usr/bin/env sh

# These are for Hydrogen, copied from buildrpm.sh in integration repo
# TODO: Update for Helium
repos=(controller integration ovsdb openflowjava openflowplugin lispflowmapping snmp4sdn affinity yangtools bgpcep opendove)

workspace=~/workspace

clone_repo()
{
    repo=$1
    if ! git clone http://git.opendaylight.org/gerrit/p/$repo.git $workspace/$repo; then
        # TODO: Convert to log call
        echo "Failed to clone $repo" >&2 
        # TODO: Store exit codes globally
        exit 1
    fi
}

checkout_branch()
{
    repo=$1
    branch=$2
    cd $workspace/$repo
    if ! git checkout $branch; then
        # TODO: Convert to log call
        echo "Failed to checkout $branch for $repo" >&2 
        # TODO: Store exit codes globally
        exit 1
    fi
}

archive_repo()
{
    repo=$1
    cd $workspace/$repo
    # TODO: Make version a var
    if ! git archive --prefix=opendaylight-$repo-0.1.0/ HEAD | xz > ~/rpmbuild/SOURCES/opendaylight-$repo-0.1.0.tar.xz; then
        # TODO: Convert to log call
        echo "Failed to archive $repo" >&2 
        # TODO: Store exit codes globally
        exit 1
    fi
}

# Cleanup and create workspace
rm -rf $workspace; mkdir $workspace; cd $workspace
rm -rf ~/rpmbuild
rpmdev-setuptree

for repo in ${repos[@]}; do
    clone_repo $repo
    # TODO: Store branch in global
    checkout_branch $repo "stable/hydrogen"
    archive_repo $repo
done

#cp integration/packaging/rpm/opendaylight-integration-fix-paths.patch ~/rpmbuild/SOURCES/
#rpmbuild -bb --noclean opendaylight-controller.spec
