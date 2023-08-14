<?php

namespace App\Http\Livewire;

use Illuminate\Support\Facades\DB;
use Livewire\Component;
use Illuminate\Support\Str;

class Form extends Component
{
    public $textTerjemah = '',
            $hasil = '',
            $set = 'idToDy';

    public function idToDy()
    {
        $this->emit('idKeDyk');
        $this->set = 'idToDy';
    }
    public function dyToId()
    {
        $this->emit('dykKeId');
        $this->set = 'dyToId';
    }

    public function terjemah()
    {
        $terjemah = $this->textTerjemah;
        $terjemah = explode(' ', $terjemah);
        
        $h = [];
        foreach($terjemah as $t) {
            $data = DB::table('tb_terjemahan')->where($this->set == 'idToDy' ? 'indonesia' : 'dayak', $t)->first();
            if(!empty($data)) {
                array_push($h, $this->set == 'idToDy' ? $data->dayak : $data->indonesia );
            }
        }
        if(empty($this->textTerjemah)){
            $this->hasil = '';
        } else {
            if(empty($h)) {
                $this->emit('error');
            } else {
                $this->hasil = implode(' ',$h);
            }
        }
        

    }

    public function render()
    {
        return view('livewire.form');
    }
}
