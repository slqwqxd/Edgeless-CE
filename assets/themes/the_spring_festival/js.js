// init
update_canvas_bk(2);

function update_text_color(n) {
    var color_map = ['#000', '#fff', '#fff', '#000', '#fff'];
    $('body').css('color', color_map[n - 1]);
}

function update_canvas_bk(n) {
    update_text_color(n);
    $theme_canvas.css('background-image', 'url("' + $theme_path + '/bk'+ n + '.jpg")');
}

$('.pure-menu-link').click(function() {
    var n = roll(1, 5);
    update_canvas_bk(n);
});

function roll(min, max) {
    return parseInt(min + (max - min + 1) * (Math.random()));
}
