/*
** EPITECH PROJECT, 2025
** Setup
** File description:
** take_screen_shot
*/

#include "sfml_utils.hpp"

void take_screen_shot(sf::RenderWindow &window, const std::string &file_path)
{
    sf::Texture texture;
    texture.create(window.getSize().x, window.getSize().y);
    texture.update(window);
    sf::Image screenshot = texture.copyToImage();
    screenshot.saveToFile(file_path);
}
