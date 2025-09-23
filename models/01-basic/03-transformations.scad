TRANSFORM = "none"; // [none, translate, rotate, scale]

module arrow() {
    $fn = 12;

    cylinder(h = 30, r = 2.5);

    translate([0, 0, 30])
    cylinder(h = 10, r1 = 5, r2 = 0);
}

module bottom_text(s) {
    color("grey") {
        linear_extrude(1);
        translate([-30, -25])
        text(s, size = 5, font = "monospace");

        translate([0, -10, 0])
        children();
    }
}

if (TRANSFORM == "none") {
    arrow();
    bottom_text("arrow();");
} else if (TRANSFORM == "translate") {
    translate([10, 5, 5])
    arrow();

    bottom_text("translate([10, 5, 5])")
    bottom_text("arrow();");
} else if (TRANSFORM == "rotate") {
    rotate([-20, 20, 0])
    arrow();

    bottom_text("rotate([-20, 20, 0])")
    bottom_text("arrow();");
} else if (TRANSFORM == "scale") {
    scale([2, 0.5, 1])
    arrow();

    bottom_text("scale([2, 0.5, 1])")
    bottom_text("arrow();");
}
