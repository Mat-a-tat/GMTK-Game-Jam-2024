/// @description Insert description here
// You can write your code in this editor
/// @description Hold Shift to reveal the outline
if (keyboard_check_pressed(vk_shift))
{
    image_alpha = .5
}
if (keyboard_check_released(vk_shift))
{
    image_alpha = 0
}
