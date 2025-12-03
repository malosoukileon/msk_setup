/*
** EPITECH PROJECT, 2025
** Setup
** File description:
** set_window_title
*/

#include "sfml_utils.hpp"

void set_window_title(sf::RenderWindow &window, const std::string &title)
{
    window.setTitle(title);
}
