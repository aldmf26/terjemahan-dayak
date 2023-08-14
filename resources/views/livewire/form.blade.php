<div>
    <div x-data="{
        textTerjemah:'', 
    }">

    
    <label class="swap mb-2 text-light">
        <input type="checkbox" style="display:none" />
        <div x-on:click="document.querySelector('html').setAttribute('data-theme', 'retro')" wire:click="idToDy" class="swap-off btn btn-primary" data-tip="hello">Indonesia Ke Dayak</div>
        <div x-on:click="document.querySelector('html').setAttribute('data-theme', 'winter')" wire:click="dyToId" class="swap-on btn btn-info">Dayak Ke Indonesia</div>
        <span x-text="theme"></span>
    </label> 
    <button class="text-info text-xl w-10 tooltip tooltip-right" data-tip="Klik Button Untuk Berganti Bahasa !"><i class="fa-regular fa-circle-question"></i></button>
    
    <br>
    
        <input autofocus id="inputTerjemahan" wire:keyup="terjemah" x-model="textTerjemah" wire:model="textTerjemah"
            class="input resize-none mb-1 p-4 w-full rounded-lg bg-gray-200 text-gray-800 focus:outline-none focus:bg-white"
            placeholder="Masukkan teks di sini">
            <br>
        <div wire:loading wire:target="terjemah">
            loading...
        </div>
        @if ($hasil == 'Sorry kayanya data masih belum ada :(')
        <div class="alert alert-error shadow-lg w-100">
            <div>
              <svg xmlns="http://www.w3.org/2000/svg" class="stroke-current flex-shrink-0 h-6" fill="none" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M10 14l2-2m0 0l2-2m-2 2l-2-2m2 2l2 2m7-2a9 9 0 11-18 0 9 9 0 0118 0z" /></svg>
              <span>Error! {{$hasil}}</span>
            </div>
          </div>
        @else
        <h1 class="text-3xl font-bold w-10/12 ml-1 mt-1">
            <span>{{$hasil}}</span>
        </h1>
        @endif
    
    </div>
</div>
