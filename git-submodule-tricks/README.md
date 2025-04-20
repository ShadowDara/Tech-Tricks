# Git Submodule Tricks

Git has the option to add submodules to your Repository,
basically a clone of a other Repositorys branch, but
the code will not be saved in your Git Database, it will
cloned automaticly from the submodule source Repository

## Content

**You want to test this first? This is ofcourse a good idea!!!**
- *Clone the Repository and switch to branch `Git-Submodule-Testing`*

When running, the scripts must be located in the `root` folder
of your Git Repository!

For this example we will use the repository: `local-HTTP-server`
which is / will be located in:

```git
/root
│── /local-HTTP-server
│── /.git
│── README.md
│── LICENSE
```

**root** is the main Folder of your Git Repository with Stuff like:
`README.md`, `LICENSE`, `.gitignore`, `.gitattributes` and so on...


## Clone Repository with Broken Submodules

this are terminal commands to remove a broken submodul

- to start the Terminal in the folder, you can although double click `start.cmd`

**If you can't clone the Repository anymore, try in the Terminal
`git clone --recurse-submodules=0 <REPO-URL>`**

- `<REPO-URL>` is your `root` Github Repo


## Add Submodule

This script will add a Git Submdule to your Repository

### Using

**run `add_submodule.bat`**

- the script will ask your for the path you want to save the submodule,
in our example this will be `local-HTTP-server` so enter this!

- then the script will ask you for the link of the Repository, which
will be `https://github.com/weuritz8u/local-HTTP-server.git` in our
example!

- then the script will open the `.gitmodules` file in a texteditor to
control the file *(not required)*


## Update Submodules

### To Update all Gitsubmodules to the newest Version

**run `update_submodules.bat`**

- This script will easily update **ALL** submodules in the git Repository

### To Set a Gitsubmodule to a specified commit

**run `update_sbm_to_commit.bat`**

- first the script will ask you for the submodule path, `local-HTTP-Server`
in our example!

- then enter the git Hash which be `87cb6a26be322b05fca817e4c3a3f8ba372cc55f`
in our example!


## Remove Submodules

This script will remove the submodule for you from the git database

### Using

**run `remove_submodules.bat`**

- the script will ask your for the submodule path which is
`local-HTTP-server` in our example!

- then the script will open `.gitmodules` in your Texteditor
which will look something like this:

```git
[submodule "local-HTTP-server"]
	path = local-HTTP-server
	url = https://github.com/weuritz8u/local-HTTP-server
[submodule "3ma-to-obj-converter-python"]
	path = 3ma-to-obj-converter-python
	url = https://github.com/weuritz8u/3ma-to-obj-converter-python
```

Because we only want to remove `local-HTTP-server`, delete the 3 lines:

```
[submodule "local-HTTP-server"]
	path = local-HTTP-server
	url = https://github.com/weuritz8u/local-HTTP-server
```

then save the file and press enter in the batch script to continue
