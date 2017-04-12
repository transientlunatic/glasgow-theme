#! /bin/bash

# This script downloads the University of Glasgows logo file into the
# repository, and should be run before the package is installed. The
# logo isn't contained in the repository a it is protected by
# copyright, and only available to download on the University campus
# or through the VPN system.

wget http://www.gla.ac.uk/t4/visualidentity/files/downloads/University%20marque/UoG_keyline.eps
epspdf UoG_keyline.eps
rm UoG_keyline.eps
