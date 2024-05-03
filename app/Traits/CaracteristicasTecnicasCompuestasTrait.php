<?php

namespace App\Traits;

use App\Models\CaracteristicasTecnicasCompuestas;

/**
 * Trait CaracteristicasTecnicasCompuestasTrait
 * @package App\Traits
 */
trait CaracteristicasTecnicasCompuestasTrait {

    /**
     * @param $id
     * @return array
     */
    public function getdataforcaracteristicastecnicascompuestas($id)
    {
        $data = CaracteristicasTecnicasCompuestas::where('id', $id)
            ->with(['user', 'detmaterialelectoral', 'papeletas', 'cerchas'])
            ->get()->first();
        return array(
            'id'                                    =>      $id,
            'users_sid'                             =>      $data['users_sid'],
            'id_det_material_electoral'             =>      $data['detmaterialelectoral']['utilidad_material'],
            'id_papeletas'                          =>      $data['papeletas']['descripcion_region'],
            'id_cerchas'                            =>      $data['cerchas']['descripcion_region'],
            'caracteristicas'                       =>      $data['caracteristicas'],
            'valor'                                 =>      $data['valor'],
            'unidad'                                =>      $data['unidad'],
            'status'                                =>      $data['status'],
            'created_at'                            =>      $data['created_at'],
            'updated_at'                            =>      $data['updated_at']
        );
    }

}
