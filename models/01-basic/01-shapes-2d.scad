SHAPE = "circle"; // [circle, square, square-centered, rectangle-centered, polygon, text]


module bottom_text(s) {
    color("grey")
    translate([0, -25])
    text(s, size = 5, font = "monospace", halign = "center");
}


if (SHAPE == "circle") {
    circle(10);
    bottom_text("circle(10);");
} else if (SHAPE == "square") {
    square(10);
    bottom_text("square(10);");
} else if (SHAPE == "square-centered") {
    square(10, center = true);
    bottom_text("square(10, center = true);");
} else if (SHAPE == "rectangle-centered") {
    square([20, 10], center = true);
    bottom_text("square([20, 10], center = true);");
} else if (SHAPE == "polygon") {
    polygon([
        [10, 5],
        [0, 10],
        [-5, -10],
    ]);
    bottom_text("polygon([ [10, 5], [0, 10], [-5, -10], ]);");
} else if (SHAPE == "text") {
    text("top text");
    bottom_text("text(\"top text\");");
}
