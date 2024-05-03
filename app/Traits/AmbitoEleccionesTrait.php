<?php

namespace App\Traits;

use App\Models\AmbitoElecciones;

/**
 * Trait AmbitoEleccionesTrait
 * @package App\Traits
 */
trait AmbitoEleccionesTrait {

    /**
     * @param $id
     * @return array
     */
    public function getdatafromambitoelecciones($id)
    {
        $data = AmbitoElecciones::where('id', $id)
            ->with(['user'])
            ->get()->first();
        return array(
            'id'                    =>      $id,
            'users_sid'             =>      $data['users_sid'],
            'nombre'                =>      $data['nombre'],
            'descripcion'           =>      $data['descripcion'],
            'status'                =>      $data['status'],
            'created_at'            =>      $data['created_at'],
            'updated_at'            =>      $data['updated_at']
        );
    }

}
