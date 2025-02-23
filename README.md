# iceee-data

Data for the IceEE Earth Eternal Server. For development, this module should be cloned into the same parent folder as the server module if used with the default ServerConfig.txt. If you are just building a package, or installing on a separate server then it can be cloned anywhere.

Make sure you checkout the branch appropriate for the edition of the game you wish to run.

** Note, this separated data module is only intended for use the the TAWD version of the server,
i.e. the current focus of develop, the master branch. The valkals_shadow branch of the server 
are not compatible with this data layout **

## For Server Admins

### Linux Servers

If you are running a server on Linux. You should be using the `tawd` server package, which comes with  no game data or client assets. 

To install this data, install the `tawd-data-the-anubian-war` package appropriate for your distribution. E.g. for Debian based distributions, you would run ..

```
sudo apt install tawd-data-the-anubian-war
```

### Windows Servers

There are not currently any pre-made packages for Windows servers. Follow the devevloper instructions below.

## For Developers

### Obtaining The Right Branch

** You are on this branch **

#### For The Anubian War

```
git clone https://git@github.com/rockfireredmoon/iceee-data.git
```

#### For Valkal's Shadow

```
git clone -b valkals_shadow https://git@github.com/rockfireredmoon/iceee-data.git
```
 
### Building 

#### Pre-requisites

You will need the following installed :-

* Meson (http://mesonbuild.com/)
* Ninja. Make system. https://ninja-build.org/

#### Preparing

Run :-

```bash
meson build/default
```

#### Installing

By default, the files will be installed to the same place as the server (when installed from source). If 
you changed the locations when building the server, you must also change the options here by using the
`meson configure` command inside the `build/default` directory.

```base
meson install
```