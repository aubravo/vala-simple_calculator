# Vala Simple Calculator
A code for a simple calculator in Vala.

This code uses gtk and matheval libraries. To install matheval C++ library please run:

    sudo apt-get install libmatheval-dev

Then copy the content of the [libmatheval.vapi](https://github.com/nemequ/vala-extra-vapis/blob/master/libmatheval.vapi)  file from the vala-extra-vapis to the following direction to bind matheval to Vala:

    /usr/share/vala-0.18/vapi/libmatheval.vapi

The path may differ depending on the version of Vala you are working on (just the name of the vala-your_version folder), so make sure it matches with your system.

To download the code run:

    git clone https://github.com/aubravo/vala-simple_calculator.git
    
To compile run:

    valac --pkg gtk+-3.0 --pkg gmodule-2.0 --pkg libmatheval calculator.vala

GLHF!
