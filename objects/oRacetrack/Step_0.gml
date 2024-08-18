/// @description Hold Shift to reveal the outline
if (keyboard_check(vk_shift))
{
    image_alpha = .5
}
if (keyboard_check_released(vk_shift)) || (oMagicBarBorder.increase_magic)
{
    image_alpha = 0
}

