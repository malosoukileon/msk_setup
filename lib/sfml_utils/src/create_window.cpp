/*
** EPITECH PROJECT, 2025
** Setup
** File description:
** create_window
*/

#include "sfml_utils.hpp"

sf::RenderWindow *create_window(uint width, uint height, const std::string &title)
{
    sf::RenderWindow *window = new sf::RenderWindow(sf::VideoMode(width, height), title);
    return window;
}
