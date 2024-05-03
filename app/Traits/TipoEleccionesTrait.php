<?php

namespace App\Traits;

use App\Models\TipoElecciones;

/**
 * Trait TipoEleccionesTrait
 * @package App\Traits
 */
trait TipoEleccionesTrait {

    /**
     * @param $id
     * @return array
     */
    public function getdatafromtipoelecciones($id)
    {
        $data = TipoElecciones::where('id', $id)
            ->with(['user'])
            ->get()->first();
        return array(
            'id'                                    =>      $id,
            'users_sid'                             =>      $data['users_sid'],
            'sigla'                                 =>      $data['sigla'],
            'nombre'                                =>      $data['nombre'],
            'descripcion'                           =>      $data['descripcion'],
            'status'                                =>      $data['status'],
            'created_at'                            =>      $data['created_at'],
            'updated_at'                            =>      $data['updated_at']
        );
    }

}
