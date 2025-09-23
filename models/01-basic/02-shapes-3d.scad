SHAPE = "sphere"; // [sphere, cube, cube-centered, box-centered, cylinder, cylinder-centered, cone, cone-slice]


module bottom_text(s) {
    color("grey")
    linear_extrude(1);
    translate([0, -25])
    text(s, size = 5, font = "monospace", halign = "center");
}


if (SHAPE == "sphere") {
    sphere(10);
    bottom_text("sphere(10);");
} else if (SHAPE == "cube") {
    cube(10);
    bottom_text("cube(10);");
} else if (SHAPE == "cube-centered") {
    cube(10, center = true);
    bottom_text("cube(10, center = true);");
} else if (SHAPE == "box-centered") {
    cube([10, 20, 30], center = true);
    bottom_text("cube([10, 20, 30], center = true);");
} else if (SHAPE == "cylinder") {
    cylinder(h = 20, r = 10);
    bottom_text("cylinder(h = 10, r = 10);");
} else if (SHAPE == "cylinder-centered") {
    cylinder(h = 20, r = 10, center = true);
    bottom_text("cylinder(h = 10, r = 10, center = true);");
} else if (SHAPE == "cone") {
    cylinder(h = 20, r1 = 10, r2 = 0);
    bottom_text("cylinder(h = 10, r1 = 10, r2 = 0);");
} else if (SHAPE == "cone-slice") {
    cylinder(h = 20, r1 = 10, r2 = 5);
    bottom_text("cylinder(h = 10, r1 = 10, r2 = 5);");
}
