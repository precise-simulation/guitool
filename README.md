GUITool - Easy to Use GUI Toolkit & Framework for MATLAB
========================================================

![GUITool - Easy to Use MATLAB GUI Toolkit and Framework](https://raw.githubusercontent.com/precisesimulation/featool-multiphysics/master/featool-multiphysics-screenshot.png)


_GUITool_ is a cross compatible Graphical User Interface (GUI)
Toolkit, UI design, and layout framework for MATLAB. It has been
specifically designed to be very easy to use and allow rapid
prototyping of custom MATLAB UI interfaces. At the same time it has
been developed to be faster and have better performance for complex
and larger scale GUIs than the _Mathworks GUI Layout Toolbox_.

GUITool is for example used for designing and building the simulation
interfaces for the [FEATool Multiphysics](https://www.featool.com) and
[CFDTool](https://www.cfdtool.com) simulation toolboxes.


Performance Evaluation
----------------------

The GUITool framework has been compared to the Mathworks GUI Layout
Toolbox (GLT) by running the included test suite, as for example

    runTestSuite( 'nruns', 100, 'pause', 0, 'closef', 1, 'uilib', 'uitk' )

substituting the _uilib_ parameter with `uitk`, `uiextras`, and `uix`
correspondingly. The resulting timings can be seen in the table
below. First, we can see that GUITool is 1.8-2.5 times faster than the
GUI Layout Toolbox (GLT), moreover, comparing the runs for MATLAB
2011a with 2019a it also clear that the MATLAB GUI functionality is
currently 2-3 times slower with is also consistent with a previous
[MATLAB GUI benchmark comparison](https://www.precisesimulation.com/blog/2019-08-20-benchmarking-and-performance-comparison-of-matlab-versions).
To really get good GUI performance we can therefore only recommend
using the GUITool framework with older MATLAB versions.

<table>
  <caption id="matlab-gui-performance-comparison-table">MATLAB GUI Performance Comparison</caption>
  <tr> <th> MATLAB     <th colspan="2"> R2011a        <th colspan="2"> R2019a
  <tr> <th> Test case  <th> GUITool <th>  GLT (v1.17) <th> GUITool <th> GLT (v2.3.4)
  <tr> <td> hbox 1     <td>     0.5 <td>          1.3 <td>     1.4 <td>          1.9
  <tr> <td> hbox 2     <td>     0.7 <td>          1.7 <td>     2.0 <td>          2.8
  <tr> <td> vbox 1     <td>     0.4 <td>          1.3 <td>     1.3 <td>          1.9
  <tr> <td> vbox 2     <td>     0.6 <td>          1.7 <td>     2.0 <td>          2.5
  <tr> <td> grid 1     <td>     0.6 <td>          2.4 <td>     2.0 <td>          3.6
  <tr> <td> boxpanel 1 <td>     0.5 <td>          2.7 <td>     2.2 <td>         12.5
  <tr> <td> tabpanel 1 <td>     1.6 <td>          3.1 <td>     6.1 <td>          3.9
  <tr> <th> Total Time <th>     5.8 <th>         14.2 <th>    16.9 <th>         28.9
</table>


Installation
------------

Copy and add the GUI toolkit source files (.m and .p files from
the _src_ directory) to your own project directory, or add a path to
to the directory with the `addpath` command.


Examples
--------

Look at the examples in the source files _uitkHBox_, _uitkVBox_,
_uitkGrid_, _uitkBoxPanel_, and _uitkTabPanel_ as well as the examples
in the _src/tests_ directory.


Testing
-------

Run the `runTestSuite` function from the root directory.


Documentation
-------------

Open the included **index.html** file in a web browser to access the
function documentation.


License
-------

Copyright (C) 2013-2019 Precise Simulation Ltd.

Keywords: MATLAB GUI Layout Toolkit Framework

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:

1. You may not use the material for commercial purposes. License for
   personal non-commercial uses only, please contact Precise Simulation
   Limited for commercial and custom licensing options.

2. Redistributions of source code must retain the above copyright
   notice, this list of conditions and the following disclaimer.

3. Redistributions in binary form must reproduce the above copyright
   notice, this list of conditions and the following disclaimer in the
   documentation and/or other materials provided with the distribution.

4. All advertising materials mentioning features or use of this
   software must display the following acknowledgement: This product
   includes software developed by Precise Simulation Limited
   (www.precisesimulation.com).

5. Neither the name of the Precise Simulation Limited nor the
   names of its contributors may be used to endorse or promote products
   derived from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY PRECISE SIMULATION LIMITED ''AS IS'' AND ANY
EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL PRECISE SIMULATION LIMITED BE LIABLE FOR ANY
DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
