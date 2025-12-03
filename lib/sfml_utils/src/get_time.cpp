/*
** EPITECH PROJECT, 2025
** Setup
** File description:
** get_time
*/

#include "sfml_utils.hpp"

sf::Time get_time()
{
    return sf::Clock().getElapsedTime();
}
