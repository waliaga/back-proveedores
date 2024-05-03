<?php

namespace App\Traits;

use App\Models\Cerchas;

/**
 * Trait CerchasTrait
 * @package App\Traits
 */
trait CerchasTrait {

    /**
     * @param $id
     * @return array
     */
    public function getdatafromcerchas($id)
    {
        $data = Cerchas::where('id', $id)
            ->with(['user', 'tipoelecciones'])
            ->get()->first();
        return array(
            'id'                                    =>      $id,
            'users_sid'                             =>      $data['users_sid'],
            'id_tipo_elecciones'                    =>      $data['tipoelecciones']['nombre'],
            'descripcion_region'                    =>      $data['descripcion_region'],
            'cantidad'                              =>      $data['cantidad'],
            'status'                                =>      $data['status'],
            'created_at'                            =>      $data['created_at'],
            'updated_at'                            =>      $data['updated_at']
        );
    }

}
