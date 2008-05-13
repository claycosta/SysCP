$header
	<table cellpadding="5" cellspacing="0" border="0" align="center" class="maintable_60">
		<tr>
			<td class="maintitle" colspan="2"><b><img src="images/title.gif" alt="" />&nbsp;{$lng['emails']['emails_edit']}</b></td>
		</tr>
		<tr>
			<td class="field_display_border_left">{$lng['emails']['emailaddress']}:</td>
			<td class="field_name" nowrap="nowrap">{$result['email_full']}</td>
		</tr>
		<tr>
			<td class="field_display_border_left">{$lng['emails']['account']}:</td>
			<td class="field_name" nowrap="nowrap">
			<if $result['popaccountid'] != 0>
			{$lng['panel']['yes']} [<a href="$filename?page=accounts&amp;action=changepw&amp;id={$result['id']}&amp;s=$s">{$lng['menue']['main']['changepassword']}</a>] [<a href="$filename?page=accounts&amp;action=delete&amp;id={$result['id']}&amp;s=$s">{$lng['emails']['account_delete']}</a>]
			</if>
			<if $result['popaccountid'] == 0>
			{$lng['panel']['no']} [<a href="$filename?page=accounts&amp;action=add&amp;id={$result['id']}&amp;s=$s">{$lng['emails']['account_add']}</a>]
			</if>
			</td>
		</tr>
		<if (($result['popaccountid'] != 0 && $settings['system']['mail_quota_enabled']) || ($result['popaccountid'] != 0 && $result['quota'] != 0)) >
		<form action="{$filename}" method="post">
		<tr>
			<td class="field_display_border_left">{$lng['emails']['quota']}:</td>
			<td class="field_name" nowrap="nowrap">
				<input type="hidden" name="s" value="{$s}" />
				<input type="hidden" name="mail_user_id" value="{$result['mail_user_id']}" />
				<input type="hidden" name="id" value="{$result['id']}" />
				<input type="hidden" name="page" value="{$page}" />
				<input type="hidden" name="action" value="updatequota" />
				<input type="text" name="email_quota_size" value="{$quota}" maxlength="3" />&nbsp;<select class="dropdown_noborder" name="email_quota_type">$quota_type_option</select>
				<input type="submit" value="{$lng['emails']['updatequota']}" name="send" class="bottom" />
			</td>
		</tr>
		</form>
		</if>
		<tr>
			<td class="field_display_border_left">{$lng['emails']['catchall']}:</td>
			<td class="field_name" nowrap="nowrap">
			<if $result['iscatchall'] != 0>
			{$lng['panel']['yes']}
			</if>
			<if $result['iscatchall'] == 0>
			{$lng['panel']['no']}
			</if>
			[<a href="$filename?page=$page&amp;action=togglecatchall&amp;id={$result['id']}&amp;s=$s">{$lng['panel']['toggle']}</a>]
			</td>
		</tr>
		<tr>
			<td class="field_display_border_left">{$lng['emails']['forwarders']} ({$forwarders_count}):</td>
			<td class="field_name">$forwarders<a href="$filename?page=forwarders&amp;action=add&amp;id={$result['id']}&amp;s=$s">{$lng['emails']['forwarder_add']}</a></td>
		</tr>
		<tr>
			<td class="field_display_border_left" colspan="2"><a href="$filename?page=emails&amp;action=add&amp;s=$s">{$lng['emails']['emails_add']}</a></td>
		</tr>
	</table>
	<br />
	<br />
$footer