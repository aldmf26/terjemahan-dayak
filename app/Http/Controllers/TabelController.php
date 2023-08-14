<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class TabelController extends Controller
{
    public function loadTabel()
    {
        return view('admin.loadTabel');
    }
    public function btnPlusFormRow(Request $r)
    {
        return view('admin.btnPlusFormRow', ['c' => $r->c]);
    }
    

    public function saveTabel(Request $r)
    {
        for ($i=0; $i < count($r->indonesia); $i++) { 
            DB::table('tb_terjemahan')->insert([
                'indonesia' => $r->indonesia[$i],
                'dayak' => $r->dayak[$i],
            ]);
        }
        return redirect()->route('dashboard')->with('sukses', 'Berhasil');
    }

    public function deleteRow(Request $r)
    {
        DB::table('tb_terjemahan')->where('id', $r->id)->delete();
      
    }
}
