<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 dark:text-gray-200 leading-tight">
            {{ __('Data Terjemahan') }}
            @auth
            <label for="my-modal" class="btn"><i class="fas fa-plus"></i></label>
            @endauth
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white dark:bg-gray-800 overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 text-gray-900 dark:text-gray-100">
                    @if (session()->has('sukses'))
                    <div class="alert alert-success shadow-lg mb-3">
                        <div>
                            <svg xmlns="http://www.w3.org/2000/svg" class="stroke-current flex-shrink-0 h-6 w-6"
                                fill="none" viewBox="0 0 24 24">
                                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                    d="M9 12l2 2 4-4m6 2a9 9 0 11-18 0 9 9 0 0118 0z" />
                            </svg>
                            <span>Berhasil</span>
                        </div>
                    </div>
                    @endif
                    <div id="loadTable"></div>

                </div>
            </div>
        </div>
    </div>

    {{-- modal tambah --}}
    <!-- The button to open modal -->


    <!-- Put this part before </body> tag -->
    <form action="{{ route('saveTabel') }}" method="post">
        @csrf
        <input type="checkbox" id="my-modal" class="modal-toggle" />
        <label for="my-modal" class="modal cursor-pointer">
            <label class="modal-box relative w-11/12 max-w-2xl" for="">
                <h3 class="text-lg font-bold mb-3">Tambah Terjemahan</h3>
                
                <div class="grid grid-cols-2 gap-1">
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
                <div id="loadFormPlusRow"></div>
                <button id="btnPlusFormRow" class="mt-2 btn btn-outline btn-primary btn-xs btn-block"><i class="fas fa-plus"></i> Tambah</button>
                <div class="modal-action">
                    <button for="my-modal" type="submit" class="btn btn-primary">Save</button>
                </div>
            </label>
        </label>
    </form>

    @section('scripts')
        <script>
            $(document).ready(function() {
                loadTabel()
                function loadTabel() {
                    $.ajax({
                        type: "GET",
                        url: "{{ route('loadTabel') }}",
                        success: function(r) {
                            $("#loadTable").html(r);
                            $('#table').DataTable();
                        }
                    });
                }

                $(document).on('click', '.deleteRow', function() {
                    var id = $(this).attr('id')
                    if (confirm('Yakin ingin dihapus ? ')) {
                        $.ajax({
                            type: "GET",
                            url: "{{ route('deleteRow') }}?id=" + id,
                            success: function(response) {
                                loadTabel()
                            }
                        });
                    }
                })

                var c = 1
                $(document).on('click', '#btnPlusFormRow', function(e){
                    e.preventDefault();
                    c += 1
                    $.ajax({
                        type: "GET",
                        url: "{{route('btnPlusFormRow')}}?c="+c,
                        success: function (r) {
                            $("#loadFormPlusRow").append(r);
                        }
                    });
                })

                $(document).on('click', '.btnRemoveFormRow', function(e){
                    e.preventDefault();
                    var count = $(this).attr('count')
                    $('#row'+count).remove()
                })
            });
        </script>
    @endsection
</x-app-layout>
