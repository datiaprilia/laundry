@extends('layouts.main',['title'=>'Laporan'])
@section('content')
<x-content :title="[
    'name'=>'Laporan',
    'icon'=>'fas fa-print'
    ]">
    <div class="row">
        <div class="col-md-4">
            <form
            target="_blank" 
            action="{{ route('laporan.harian') }}"
            class="card card-info">
                <div class="card-header">
                    Laporan Harian
                </div>
                <div class="card-body">
                    @csrf
                    <x-input label="Tanggal" name="tanggal" type="date"/>
                    <x-select label="Outlet" name="outlet_id"
                    :data-option="$outlets"/>
                </div>
                <div class="card-footer">
                    <button type="submit" class="btn btn-info">
                        Generate Laporan
                    </button>
                </div>
            </form>
        </div>
        <div class="col-md-4">
            <form 
            target="_blank"
            action="{{ route('laporan.perbulan') }}"
            class="card card-info" >
                <div class="card-header">
                   Laporan Perbulan
                </div>
                <div class="card-body">
                    @csrf
                    <div class="row">
                        <div class="col">
                            <x-select label="Bulan" name="bulan"
                            :data-option="$bulan"/>
                        </div>
                        <div class="col">
                            <x-select label="Tahun" name="tahun"
                            :data-option="$tahun"/>
                        </div>
                    </div>
                    <x-select label="Outlet" name="outlet_id"
                            :data-option="$outlets" />
                </div>
                <div class="card-footer">
                    <button type="submit" class="btn btn-info">
                       Generate Laporan
                    </button>
                </div>
            </form>
        </div>
    </div>
</x-content>
@endsection