<tr>
	<td class="field_name_border_left">{$row['domain']}</td>
	<td class="field_name"><if $row['aliasdomain'] == ''>{$row['documentroot']}</if><if isset($row['aliasdomainid']) && $row['aliasdomainid'] != 0>{$lng['domains']['aliasdomain']} {$row['aliasdomain']}</if></td>
	<td class="field_name"><if $row['caneditdomain'] == '1'><a href="$filename?page=domains&amp;action=edit&amp;id={$row['id']}&amp;s=$s">{$lng['panel']['edit']}</a></if></td>
	<td class="field_name"><if $row['parentdomainid'] != '0' && !(isset($row['domainaliasid']) && $row['domainaliasid'] != 0)><a href="$filename?page=domains&amp;action=delete&amp;id={$row['id']}&amp;s=$s">{$lng['panel']['delete']}</a></if><if $row['parentdomainid'] == '0' && !(isset($row['domainaliasid']) && $row['domainaliasid'] != 0)>{$lng['domains']['istopleveldomain']}</if><if isset($row['domainaliasid']) && $row['domainaliasid'] != 0>{$lng['domains']['hasaliasdomains']}</if></td>
</tr>
