function [widths,heights] = uitkRedrawGrid( hObj, ~ )
%UITKREDRAWGRID Redraw container contents for a uitkGrid object
%
%   [ WIDTHS, HEIGHTS ] = UITKREDRAWGRID( HOBJ, ~ ) Redraws and
%   updates the sizes and positions of objects contained within the
%   valid uitkHBox, uitkVBox, or uitkGrid with handle HOBJ. Also
%   returns arrayws with the computed pixel WIDTHS and HEIGHTS of the
%   resized uitk objects.
%
%   See also uitkRedraw

% Copyright 2013-2021 Precise Simulation, Ltd.

