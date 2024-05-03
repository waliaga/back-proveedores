<?php

namespace App\Traits;

use App\Models\Materiales;

/**
 * Trait MaterialesTrait
 * @package App\Traits
 */
trait MaterialesTrait {

    /**
     * @param $id
     * @return array
     */
    public function getdatafrommateriales($id)
    {
        $data = Materiales::where('id', $id)
            ->with(['user', 'grupo', 'unidadmedida', 'destinomaterial'])
            ->get()->first();
        return array(
            'id'                    =>      $id,
            'users_sid'             =>      $data['users_sid'],
            'id_grupo'              =>      $data['grupo']['label'],
            'id_unidad_medida'      =>      $data['unidadmedida']['label'],
            'id_destino_material'   =>      $data['destinomaterial']['label'],
            'item'                  =>      $data['item'],
            'status'                =>      $data['status'],
            'created_at'            =>      $data['created_at'],
            'updated_at'            =>      $data['updated_at']
        );
    }

}
