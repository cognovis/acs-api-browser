<if @show_master_p@>
<master>
<property name=title>@title;noquote@</property>
<property name="context">@context;noquote@</property>
</if>

<if "" ne @error_message@>
<!-- <font color=red> -->
@error_message@
<!-- </font> -->
</if>

<if "" ne @version_id@>

@dimensional_slider;noquote@

<if @procs_files_p@>
<blockquote>
<h2>TCL Libraries</h2>
<table cellspacing="0" cellpadding="0">
  <multiple name="procs_files">
  <tr valign=top>
    <td width="30%"><b><a href="@url@/procs-file-view?version_id=@version_id@&amp;path=@procs_files.full_path@">@procs_files.path@</a></b></td>
    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
    <td width="70%">@procs_files.first_sentence@&nbsp;</td>
  </tr>
  </multiple>
</table>
</blockquote>
</if>
<if @procs_p@>
<blockquote>
<h2>TCL Procedures</h2>
<table cellspacing="0" cellpadding="0">
  <multiple name="procedures">
  <tr valign=top>
    <td><b><a href="@url@/proc-view?version_id=@version_id@&amp;proc=@procedures.proc@">@procedures.proc@</a></b></td>
    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
    <td>@procedures.first_sentence@&nbsp;</td>
  </tr>
  </multiple>
</table>
</blockquote>
</if>
<if @sql_files_p@>
<blockquote>
<h2>SQL Files</h2>
<table cellspacing="0" cellpadding="0">
  <multiple name="sql_files">
  <tr valign=top>
    <td><b><a href="@url@/display-sql?package_key=@package_key@&amp;url=@sql_files.relative_path@&amp;version_id=@version_id@">@sql_files.path@</a></b></td>
    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  </multiple>
</table>
</blockquote>
</if>
<if @content_p@>
<h2>Content Files</h2>
<table cellspacing="0" cellpadding="0">
  <multiple name="content_pages">
  <tr valign=top>
    <if @content_pages.content_type@ eq "page">
      <td>@content_pages.indentation;noquote@
       <b><a href="@url@/content-page-view?version_id=@version_id@&amp;path=@content_pages.full_path@">@content_pages.name@</a></b>
       <if @content_pages.type@ ne "">
         <a href="type-view?type=@content_pages.type@"></a>
       </if>
      </td>
      <td>@content_pages.first_sentence@</td>
    </if>
    <if @content_pages.content_type@ eq "directory">
      <td>@content_pages.indentation;noquote@<b>@content_pages.name@/</b></td>
    </if>
  </tr>
  </multiple>
</table>
</if>


</if>
