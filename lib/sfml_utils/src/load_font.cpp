/*
** EPITECH PROJECT, 2025
** Setup
** File description:
** load_font
*/

#include "sfml_utils.hpp"

sf::Font load_font(const std::string &file_path)
{
    sf::Font font;
    if (!font.loadFromFile(file_path)) {
        throw std::runtime_error("Failed to load font from file: " + file_path);
    }
    return font;
}
