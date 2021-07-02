button_a_colour = Pen(100, 0, 100)
button_b_colour = Pen(100, 100, 0)
button_x_colour = Pen(0, 0, 100)
button_y_colour = Pen(0, 100, 0)

function init()
    set_screen_mode(ScreenMode.hires)
end

function update(time)
    button_a_colour = Pen(100, 0, 100)
    button_b_colour = Pen(100, 100, 0)
    button_x_colour = Pen(0, 0, 100)
    button_y_colour = Pen(0, 100, 0)
    if buttons.state & Button.A ~= 0 then
        button_a_colour = Pen(255, 0, 255)
    end
    if buttons.state & Button.B ~= 0 then
        button_b_colour = Pen(255, 255, 0)
    end
    if buttons.state & Button.X ~= 0 then
        button_x_colour = Pen(0, 0, 255)
    end
    if buttons.state & Button.Y ~= 0 then
        button_y_colour = Pen(0, 255, 0)
    end
end

function render(time)
    screen.pen = Pen(0, 0, 0)
    screen.clear()
    
    dpad_center = Point(screen.bounds.w / 4, screen.bounds.h / 2)
    buttons_center = Point((screen.bounds.w / 4) * 3, screen.bounds.h / 2)


    screen.pen = Pen(100, 100, 100)

    -- Draw the cross-shaped D-Pad
    dpad = Rect(0, 0, 120, 40)
    dpad.x = dpad_center.x - (dpad.w / 2)
    dpad.y = dpad_center.y - (dpad.h / 2)
    screen.rectangle(dpad)

    dpad.w, dpad.h = dpad.h, dpad.w -- Swap the width/height, effectively a 90 degree rotation
    dpad.x = dpad_center.x - (dpad.w / 2)
    dpad.y = dpad_center.y - (dpad.h / 2)
    screen.rectangle(dpad)

    -- Draw the 4 face buttons
    button_distance = 40 -- Distance each button circle should be from the middle
    button_size = 20 -- Radius of the button circles
    
    screen.pen = button_y_colour
    screen.circle(buttons_center + Point(-button_distance, 0), button_size)

    screen.pen = button_a_colour
    screen.circle(buttons_center + Point(button_distance, 0), button_size)

    screen.pen = button_x_colour
    screen.circle(buttons_center + Point(0, -button_distance), button_size)

    screen.pen = button_b_colour
    screen.circle(buttons_center + Point(0, button_distance), button_size)
end