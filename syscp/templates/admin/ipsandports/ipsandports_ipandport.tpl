     <tr>
      <td class="maintable" align="right"><font size="-1">{$row['id']}</font></td>
      <td class="maintable"><font size="-1">{$row['ip']}:{$row['port']}</font></td>
      <td class="maintable"><a href="$filename?s=$s&page=$page&action=delete&id={$row['id']}">{$lng['panel']['delete']}</a></td>
      <td class="maintable"><a href="$filename?s=$s&page=$page&action=edit&id={$row['id']}">{$lng['panel']['edit']}</a></td>
     </tr>