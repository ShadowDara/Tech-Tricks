@echo off
setlocal

set /p SUBMODULE_PATH=Please enter the submodule path (e.g. libs/mylib):
set /p COMMIT_HASH=Please enter the commit hash to checkout in the submodule:

pushd %SUBMODULE_PATH%

git fetch
git checkout %COMMIT_HASH%

popd

git add %SUBMODULE_PATH%
git commit -m "Updated submodule %SUBMODULE_PATH% to commit %COMMIT_HASH%"

pause
