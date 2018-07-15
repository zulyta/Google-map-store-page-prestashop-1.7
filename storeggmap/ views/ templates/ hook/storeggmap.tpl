{*
* 2007-2018 PrestaShop
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
* If you did not receive a copy of the license and are unable to
* obtain it through the world-wide-web, please send an email
* to license@prestashop.com so we can send you a copy immediately.
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please refer to http://www.prestashop.com for more information.
*
*  @author Arnaud Drieux <contact@awb-dsgn.com>
*  @copyright  2007-2018 awb-dsgn.com
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}

<section id="map-style">
<div class="container">
		<table class="table-elements">
			<tr>
				<td>
					<input type="button" value="Obtener mi ubicacion - A" onclick="get_my_location();" class="btn">
				</td>
				<td>
					<input type="text" placeholder="Latitud" id="my_lat" class="txt" readonly>
				</td>
				<td>
					<input type="text" placeholder="Longitud" id="my_lng" class="txt" readonly>
				</td>
				<td>
					<select class="txt" onchange="draw_rute(this.value)">
						<option value="0">Ruta para llegar a  &#8595;</option>
						<?=$google->get_stores();?>
					</select>
				</td>
			</tr>
		</table>
	</div>
<div id="storemap" style="height: 500px;position: relative;overflow: hidden;"></div>
{else}
    <div class="alert-warning">{l s='No api key entered'}</div>
{/if}
</section>

