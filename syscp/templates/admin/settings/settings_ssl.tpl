		<table cellpadding="5" cellspacing="4" border="0" align="center" class="maintable">
			<tr>
				<td class="maintitle_apply_left">
					<b><img src="images/title.gif" alt="" />&nbsp;{$lng['admin']['sslsettings']}</b>
				</td>
				<td class="maintitle_apply_right" nowrap="nowrap"><a href="$filename?page=settings&amp;s=$s">{$lng['panel']['backtooverview']}</a>
				</td>
			</tr>
			<tr>
				<td class="main_field_name"><b>{$lng['serversettings']['ssl']['use_ssl']}:</b></td>
				<td class="main_field_display" nowrap="nowrap">$ssl_enabled</td>
			</tr>
			<tr>
				<td class="main_field_name"><b>{$lng['serversettings']['ssl']['ssl_cert_file']}:</b></td>
				<td class="main_field_display" nowrap="nowrap"><input type="text" class="text" class="text" name="ssl_cert_file" value="{$settings['system']['ssl_cert_file']}" /></td>
			</tr>
			<tr>
				<td class="main_field_name"><b>{$lng['serversettings']['ssl']['openssl_cnf']}:</b></td>
				<td class="main_field_display" nowrap="nowrap"><textarea class="textarea_border" rows="12" cols="40" name="openssl_cnf">{$settings['system']['openssl_cnf']}</textarea></td>
			</tr>
			<tr>
				<td class="maintitle_apply_right" nowrap="nowrap" colspan="2">
					<input type="hidden" name="part" value="ssl" /><input class="bottom" type="reset" value="{$lng['panel']['reset']}" /><input class="bottom" type="submit" value="{$lng['panel']['save']}" />
				</td>
			</tr>
		</table>