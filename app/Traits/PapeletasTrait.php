<?php

namespace App\Traits;

use App\Models\Papeletas;

/**
 * Trait PapeletasTrait
 * @package App\Traits
 */
trait PapeletasTrait {

    /**
     * @param $id
     * @return array
     */
    public function getdatafrompapeletas($id)
    {
        $data = Papeletas::where('id', $id)
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
