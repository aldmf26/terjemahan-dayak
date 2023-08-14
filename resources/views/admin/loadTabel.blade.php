<table id="table">
    <thead>
        <tr>
            <th>#</th>
            <th>Indonesia</th>
            <th>Dayak</th>
            @auth
            <th style="text-align: center">Aksi</th>
            @endauth
        </tr>
    </thead>
    <tbody>
        @php
            $tbl = DB::table('tb_terjemahan')->orderBy('id', 'DESC')->get();
        @endphp
        @foreach ($tbl as $no => $d)
            <tr>
                <td width="5%">{{ $no+1 }}</td>
                <td>{{ $d->indonesia }}</td>
                <td>{{ $d->dayak }}</td>
                @auth
                <td align="center">
                    <button class="btn btn-xs"><i class="fas fa-pen"></i></button>
                    <a id="{{ $d->id }}" class="btn btn-xs deleteRow"><i class="fas fa-trash"></i></a>
                </td>
                @endauth
            </tr>
        @endforeach
    </tbody>
</table>