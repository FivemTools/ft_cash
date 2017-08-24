/**
 * @Project: FiveM Tools
 * @Author: Samuelds
 * @License: GNU General Public License v3.0
 * @Source: https://github.com/FivemTools/ft_cash
 */

ALTER TABLE `players` ADD `cash` FLOAT NOT NULL DEFAULT '0' AFTER `steamId`;
