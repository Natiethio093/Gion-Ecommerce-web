@props(['url'])
<tr>
<td class="header">
<a href="{{ $url }}" style="display: inline-block;">
@if (trim($slot) === 'Laravel')
<img src="{{asset('images/logocartt.png')}}" class="logo" alt="Gion">
@else
{{ $slot }}
@endif
</a>
</td>
</tr>
