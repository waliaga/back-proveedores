<?php

namespace App\Traits;

use App\Models\MaterialElectoral;

/**
 * Trait MaterialElectoralTrait
 * @package App\Trais
 */
trait MaterialElectoralTrait {

    /**
     * @param $id
     * @return array
     */
    public function getdataformaterialelectoral($id)
    {
        $data = MaterialElectoral::where('id', $id)
            ->with(['user', 'padronproyectado', 'proceso', 'ambitoeleccion'])
            ->get()->first();
        return array(
            'id'                                    =>      $id,
            'users_sid'                             =>      $data['users_sid'],
            'id_padron_proyectado'                  =>      $data['padronproyectado']['descripcion'],
            'id_proceso'                            =>      $data['proceso']['descripcion_proceso'],
            'id_ambito_eleccion'                    =>      $data['ambitoeleccion']['nombre'],
            'descripcion'                           =>      $data['descripcion'],
            'status'                                =>      $data['status'],
            'created_at'                            =>      $data['created_at'],
            'updated_at'                            =>      $data['updated_at']
        );
    }

}
