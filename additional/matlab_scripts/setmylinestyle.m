function setmylinestyle(h,nolines,pattern)
% noline -> false: don't update lines

if nargin < 3,
    pattern = 1;
end

if nargin < 2,
    nolines = false;
end



% settings
nrofmarkers     = 10;

linestyleorder  = {'-' '--' ':' '-.' '-' '--' ':' '-.' '-' '--' ':' '-.'};
colororder      = {'k' 'k'  'k' 'k'  'k' 'k'  'k' 'k'  'k' 'k'  'k' 'k' };
%{'b' [1 0.4 0.2] [0 0.5 0] 'k' 'g' 'r' 'c' [1 0.8 0]  [1 0 1]   [0.4 0.4 1] [0.6 1 0.6] [0.6 0.6 0.2] };

switch pattern,
    case 1
        markerorder = {'*' 'o' 'v' 'p'  'x' 's'  'd' 'v'  'p' 'h'  'x' 'o' };
    case 2
        markerorder = {'*' '*' 'o' 'o'  'v' 'v'  'p' 'p'  'x' 'x'  's' 's' };
    case 3
        linestyleorder  = {'-' '-' '-' '-' '-' '--' ':' '-.' '-' '--' ':' '-.'};
        markerorder = {'o' 'x' '*' 'o'  'v' 'v'  'p' 'p'  'x' 'x'  's' 's' };
end
linewidth       = 0.5;


%linestyleorder={'-' '--' ':' '-.' '-' '--' ':' '-.' '-' '--' ':' '-.'};
%colororder={'b' [1 0.4 0.2] [0 0.5 0] 'k' 'g' 'r' 'c' [1 0.8 0]  [1 0 1]   [0.4 0.4 1] [0.6 1 0.6] [0.6 0.6 0.2] };
%markerorder={'none' 'x' 'none' 'none' 'none' 'o' '*' 's' 'd' 'v' 'p' 'h'};

% find all axes objects, except for the legend, 
ax              = findobj(h,'Type','Axes','-not','Tag','legend');

% format each axes object
for i = 1:length(ax),

    if ~nolines,
        % find all replacement lines
        linerepl    = findall(ax(i),'Type','Line','-and','-regexp','Tag','R[\d]+\.[\d]+R');

        % for each linerepl restore original line
        if length(linerepl)>0,
            for hline = linerepl',

                % save order and determine position of replacement line
                hchil = get(ax(i),'Children');

                idx   = find((hchil==hline),1);
                if isempty(idx)
                    warning 'line not found in legend';
                    idx = 0;
                end

                % determine original line handle
                ids        = regexp(get(hline,'Tag'),'R([\d]+\.[\d]+)R','tokens');
                struct_ids = cell2struct(ids{1},'ids');

                % find handle of original line with the origlineid as tag
                horigline  = findall(ax(i),'Tag',['OR' struct_ids.ids 'OR']);

                % remove replacement line
                delete(hline);

                % restore original line
                set(horigline,'HandleVisibility','on');

                % adjust order
                new_order = [hchil(1:idx-1); horigline; hchil(idx+1:end)];
                set(ax(i),'Children',new_order);


            end

            % remove the dummy lines and replacement lines
            linedummy   = findall(ax(i),'Type','Line','-and','Tag','Dummy');
            delete(linedummy);

        end
    

        % find all normal lines
        childs=get(ax(i),'Children');
        line=[];
        for k=1:length(childs),
            if strcmp(get(childs(k),'Type'),'line')&&~strcmp(get(childs(k),'Tag'),'legend'),
                line=[line; childs(k)];
            elseif strcmp(get(childs(k),'Type'),'hggroup')&&~strcmp(get(childs(k),'Tag'),'legend'),
                line=[line; get(childs(k),'Children')'];
            else
            end
        end


        % format each line
        for j = length(line):-1:1,

            % determine type of line
            if strcmp(get(get(line(j),'parent'),'Type'),'hggroup'),
                trap = true;
            else
                trap = false;
            end

            if trap, 
                hdl = get(line(j),'parent');
            else
                hdl = line(j);
            end


            % determine location of current line in legend
            hchil = get(ax(i),'Children');
            idx   = find((hchil==hdl),1);
            if isempty(idx)
                warning 'line not found in legend';
                idx = 0;
            end

            % set the normal line without markers, and not visible in
            % legend
            set(hdl,'Linestyle',linestyleorder{mod(length(line)-j+1-1,12)+1},...
                'Color',colororder{mod(length(line)-j+1-1,12)+1},...
                'Linewidth',linewidth,...
                'Marker','none',...
                'HandleVisibility','off',...
                'Tag',['OR' num2str(hdl,10) 'OR']);

            % make two dummy lines with sampled data

            set(0,'CurrentFigure',h);
            set(h,'CurrentAxes',ax(i));

            % save hold status
            statnextplot = get(ax(i),'NextPlot');
            set(ax(i),'NextPlot','add');

            % get current children of axis

            hchil = get(ax(i),'Children');

            % make a new plot that is not visible in the plot,
            % but that does include the correct line style
            hd           = plot(0,0,'Visible','off');


            % the newly added plot has been placed at the first
            % location in the new children array.
            % the child array without the newly added plot is

            hchildnew = [hchil(1:idx-1); hd; hchil(idx:end)];
            set(ax(i),'Children',hchildnew);

            % add dummy line with markers and line
            % include in the tag the handle of the original line
            set(hd,'LineStyle',linestyleorder{mod(length(line)-j+1-1,12)+1},...
                'Marker',markerorder{mod(length(line)-j+1-1,12)+1},...
                'Color',colororder{mod(length(line)-j+1-1,12)+1},...
                'Linewidth',linewidth,...
                'Tag',['R' num2str(hdl,10) 'R']);

            origName     = get(hdl,'DisplayName');
            set(hd,'DisplayName',origName);

            % get data of line
            Xd = get(line(j),'Xdata');
            Yd = get(line(j),'Ydata');

            if length(Xd) < nrofmarkers,
                deltaX = 1;
            else
                % subsamplen
                deltaX = round(length(Xd)/nrofmarkers);
            end

            hp     = plot(Xd(1:deltaX:end),Yd(1:deltaX:end));

            set(hp,'LineStyle','none',...
                'Marker',markerorder{mod(length(line)-j+1-1,12)+1},...
                'Color',colororder{mod(length(line)-j+1-1,12)+1},...
                'Linewidth',linewidth,...
                'Tag','Dummy',...
                'HandleVisibility','off');

            % update the handles of this axis to include the new plot
           % set(ax(i),'Children',[hchil; hd;]);

            % set hold status back
            set(ax(i),'NextPlot',statnextplot);

        end

    end % ~nolines
    
    % box and font
    set(ax(i),'Box','on', ...
        'FontName','Helvetica',...
        'FontSize',10,...
        'FontUnits','points',...
        'FontWeight','normal');
    set(get(ax(i),'XLabel'),...
        'FontName','Helvetica',...
        'FontSize',10,...
        'FontUnits','points',...
        'FontWeight','normal');
    set(get(ax(i),'YLabel'),...
        'FontName','Helvetica',...
        'FontSize',10,...
        'FontUnits','points',...
        'FontWeight','normal'); 

    legend(ax(i),'show');
    legend(ax(i),'Location','Best');
    legend(ax(i),'boxoff');

end
