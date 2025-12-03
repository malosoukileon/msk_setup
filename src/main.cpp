/*
** EPITECH PROJECT, 2025
** Setup
** File description:
** main
*/

#include "header.hpp"
#include "tools.hpp"
#include "sfml_utils.hpp"

int main(void)
{
    sf::RenderWindow *window = create_window(1920, 1080, "SFML Utils Test");
    while (is_window_open(*window)) {
        clear_screen(*window, 0, 0, 0, 255);
        fill_rect(*window, 100, 100, 400, 200, 255, 0, 0, 255);
        draw_rect(*window, 600, 100, 400, 200, 0, 255, 0, 255);
        fill_circle(*window, 1000, 100, 100, 0, 0, 255, 255);
        draw_circle(*window, 1200, 100, 100, 255, 255, 0, 255);
        draw_line(*window, 100, 400, 500, 600, 255, 255, 255, 255);
        display_frame(*window);
        close_window(*window);
    }
    delete window;
    return 0;
}
