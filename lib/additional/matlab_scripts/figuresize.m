function figuresize(h,W,H)
pos=get(h,'PaperPosition');
poss=get(h,'Position');
if isempty(W),
    W=H/pos(4)*pos(3);
end
if nargin <3,
    if isempty(W),
        error('Not enough input arguments');
    end
    H=W/pos(3)*pos(4);
end

scnsz=get(0,'ScreenSize');



set(h,'PaperPosition',[pos(1:2) W H]);
set(h,'PaperSize',[W H]);
set(h,'Position',[poss(1:2) W*scnsz(3)/30 H*scnsz(3)/30]);