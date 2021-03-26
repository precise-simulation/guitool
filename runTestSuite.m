function runTestSuite( varargin )
%RUNTESTSUITE Run GUI Toolkit test suite
%
%   RUNTESTSUITE() Runs and checks the examples in the tests directory.
%
%       Property    Value/{Default}           Description
%       -----------------------------------------------------------------------------------
%       uilib       string  {uitk}            GUI library to use uitk, uiextras, uix
%       testdir     string  {src/tests}       Test source directory
%       nruns       integer {1}               Number of times to run each test case
%       closef      logical {false}           Close figures after each test run
%       pause       double  {1}               Pause after each test case
%
%   Example 1 - Run tests for GUI Layout Toolbox >=v2.0:
%
%     close all
%     runTestSuite('nruns',20,'closef',true,'pause',0)
%
%   Example 2 - Run tests 20 times for default uitk GUI library:
%
%     runTestSuite('nruns',20,'closef',true,'pause',0)
%
%   Example 3 - Run tests for GUI Layout Toolbox <=v1.17:
%
%     runTestSuite('uilib','uiextras')
%
%   Example 4 - Run tests for GUI Layout Toolbox >=v2.0:
%
%     runTestSuite('uilib','uix')

% Copyright 2013-2019 Precise Simulation Ltd.

cOptDef = { 'uilib',    'uitk';
            'testdir',  ''    ;
            'nruns',    1     ;
            'closef',   false ;
            'pause',    1     };
[got,val] = l_parseopt( cOptDef, varargin{:} );

mfile_path = fileparts(mfilename('fullpath'));
if( got.testdir )
  test_dir = val.testdir;
else
  test_dir = fullfile(mfile_path,'src','tests');
end
st_tests = dir( test_dir );
ix_tests = strncmpi({st_tests.name},'test',4);
st_tests = st_tests(ix_tests);
n_tests = length(st_tests);
if( n_tests<1 )
  error( 'No tests found.' )
end
pass = zeros(1,n_tests);

if( val.closef )
  close all
end
addpath(genpath(mfile_path));


fid = 1;
[~,test_name] = fileparts(pwd());
s_log = fullfile(tempdir(),[test_name,'-test.log']);

if( exist(s_log)==2 )
  try
    delete( s_log )
  catch,end
end
diary( s_log )
diary( 'on' )
s_header = ['Test suite: ',test_name,char(10), ...
            'Test suite location: ',pwd(),char(10), ...
            'Log file: <a href="file://',s_log,'">',s_log,'</a>',char(10), ...
            datestr(now)];
fprintf( fid, '%s\n', s_header );
fprintf( fid, '\n\n%s\n',test_name )

t1 = tic();
t_tot = 0;
pass = zeros(1,n_tests);
for i_test=1:n_tests
  ti = nan;
  try
    [~,s_fun] = fileparts(st_tests(i_test).name);
    fun = eval(['@',s_fun]);
    s_str = sprintf( ' %3i - %s %s', i_test, s_fun, repmat('.',1,51-length(s_fun)) );
    fprintf( fid, '%s ', s_str );

    ti = 0;
    h_old_figs = findall(0,'type','figure');
    for j=1:val.nruns

      t2 = tic();
      fun(val.uilib);
      ti = ti + toc(t2);

      % Close new figures.
      h_new_figs = setdiff(findall(0,'type','figure'),h_old_figs);
      if( val.closef || j>1 )
        close(h_new_figs);
      else
        set( h_new_figs, 'Name', s_fun )
      end

      if( val.pause>0 )
        pause(double(val.pause))
      end
    end

    fprintf( fid, 'passed in %6.1f seconds\n', ti );
    pass(i_test) = true;
  catch me
    ti = toc(t2);
    fprintf( fid, 'ERROR in  %6.1f seconds\n', ti );
    % fprintf( fid, 'FAILED in %6.1f seconds\n', ti );
    disp( getReport(me) )
  end
  t_tot = t_tot + ti;

end

if( all(pass) )
  fprintf( fid, 'Test suite: %s %s passed in %6.1f seconds\n', test_name, repmat('.',1,39), t_tot );
else
  fprintf( fid, 'Test suite: %s %s FAILED in %6.1f seconds\n', test_name, repmat('.',1,39), t_tot );
end
diary( 'off' )
beep()


%------------------------------------------------------------------------------%
function [ got, val ] = l_parseopt( cOptDef, varargin )
% @brief L_PARSEOPT Parse options.
%
%   [ GOT, VAL ] = L_PARSEOPT( COPTDEF, VARARGIN ) parses the property/value pairs
%   in VARARGIN, and adds the default options in the second column of
%   COPTDEF. The first column of COPTDEF contains strings of the field names.
%   Returns the got/val structs.


cTmp      = cell(size(cOptDef(:,2)));
[cTmp{:}] = deal(0);
got       = cell2struct(cTmp,cOptDef(:,1),1);
val       = cell2struct(cOptDef(:,2),cOptDef(:,1),1);

for i=1:2:length(varargin)

  if ( ~ischar(varargin{i}) )
    continue
  end

  ind = find(strcmp(varargin{i},cOptDef(:,1)));
  if ( ~isempty(ind) )

    s_match = cOptDef{ind(1),1};
    got.(s_match) = 1;

    inval = varargin{i+1};
    if ( ischar(inval) )
      if ( strcmp(lower(inval),'on') )
        inval = 1;
      elseif ( strcmp(lower(inval),'off') )
        inval = 0;
      end
    end
    val.(s_match) = inval;
  end

end
