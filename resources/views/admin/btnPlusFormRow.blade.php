<div id="row{{$c}}">
<div class="grid grid-cols-2 gap-1 mt-2">
    <div class="form-control">
        <label class="input-group">
            <span>Indonesia</span>
            <input name="indonesia[]" type="text" placeholder="kata indonesia" class="input input-bordered" />
        </label>
    </div>
    <div class="form-control">
        <label class="input-group">
            <span>Dayak</span>
            <input name="dayak[]" type="text" placeholder="kata dayak" class="input input-bordered" />
        </label>
    </div>
</div>
<button  class="btn btn-outline btn-danger btn-xs mt-1 btnRemoveFormRow" count="{{ $c }}"><i class="fas fa-trash"></i> Hapus</button>
</div>