var centerX : int := 100 % center x-coord. of the stickman
var body_height : int := 150
var leg_height : int := 50
var arm_height : int := 50
var head_radius : int := 40
var limb_offset : int := 40

% you know how it goes
setscreen("graphics")

% the line that forms the body of the stickman
drawline(centerX, leg_height, centerX, leg_height+body_height, black)

% the legs
drawline(centerX-limb_offset, 0, centerX, leg_height, black)
drawline(centerX+limb_offset, 0, centerX, leg_height, black)

% the arms
% We have to round here because the results are implicitly converted into reals
drawline(centerX, round(leg_height+body_height/2), centerX-limb_offset, leg_height+body_height, black)
drawline(centerX, round(leg_height+body_height/2), centerX+limb_offset, leg_height+body_height, black)

% the head
drawoval(centerX, leg_height+body_height+head_radius, head_radius, head_radius, black)

% ~ the stickman's face ~
% eyebrows 
drawline(centerX, leg_height+body_height+head_radius+10, centerX-15, leg_height+body_height+head_radius+25, black)
drawline(centerX, leg_height+body_height+head_radius+10, centerX+15, leg_height+body_height+head_radius+25, black)

% eyes
drawline(centerX-round(15/2), leg_height+body_height+head_radius+round((25-15)/2), centerX-round(15/2), leg_height+body_height+head_radius-round((25-15)/2), black)
drawline(centerX+round(15/2), leg_height+body_height+head_radius+round((25-15)/2), centerX+round(15/2), leg_height+body_height+head_radius-round((25-15)/2), black)

% smile
drawarc(centerX, leg_height+body_height+head_radius-5, 18, 18, 180, 0, black)
