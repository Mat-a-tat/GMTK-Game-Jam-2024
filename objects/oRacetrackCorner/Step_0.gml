/// @description Hold Space to reveal the outline
if (keyboard_check(vk_space)) && (oMagicBarBorder.decrease_magic)
{
    image_alpha = .5
}
if ((!keyboard_check(vk_space)) || (oMagicBarBorder.increase_magic))
{
    image_alpha = 0
}

