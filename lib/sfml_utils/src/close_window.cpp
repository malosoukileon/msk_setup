/*
** EPITECH PROJECT, 2025
** Setup
** File description:
** close_window
*/

#include "sfml_utils.hpp"

void close_window(sf::RenderWindow &window)
{
    while (window.isOpen())
    {
        sf::Event event;
        while (window.pollEvent(event))
        {
            if (event.type == sf::Event::Closed)
                window.close();
        }
    }
}
