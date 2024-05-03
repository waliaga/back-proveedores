<?php

namespace App\Traits;

use App\Models\CaracteristicasTecnicas;

/**
 * Trait CaracteristicasTecnicasTrait
 * @package App\Traits
 */
trait CaracteristicasTecnicasTrait {

    /**
     * @param $id
     * @return array
     */
    public function getdatafromcaracteristicastecnicas($id)
    {
        $data = CaracteristicasTecnicas::where('id', $id)
            ->with(['user', 'detmaterialelectoral'])
            ->get()->first();
        return array(
            'id'                                    =>      $id,
            'users_sid'                             =>      $data['users_sid'],
            'id_det_material_electoral'             =>      $data['detmaterialelectoral']['utilidad_material'],
            'caracteristicas'                       =>      $data['caracteristicas'],
            'valor'                                 =>      $data['valor'],
            'unidad'                                =>      $data['unidad'],
            'cantidad_proyectada'                   =>      $data['cantidad_proyectada'],
            'status'                                =>      $data['status'],
            'created_at'                            =>      $data['created_at'],
            'updated_at'                            =>      $data['updated_at']
        );
    }

}
