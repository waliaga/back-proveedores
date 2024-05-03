<?php

namespace App\Traits;

use App\Models\CaracteristicasGenerales;

/**
 * Trait CaracteristicasGeneralesTrait
 * @package App\Traits
 */
trait CaracteristicasGeneralesTrait {

    /**
     * @param $id
     * @return array
     */
    public function getdatafromcaracteristicasgenerales($id)
    {
        $data = CaracteristicasGenerales::where('id', $id)
            ->with(['user', 'detmaterialelectoral'])
            ->get()->first();
        return array(
            'id'                                    =>      $id,
            'users_sid'                             =>      $data['users_sid'],
            'id_det_material_electoral'             =>      $data['detmaterialelectoral']['utilidad_material'],
            'requisitos_caracteristicas_tecnicas'   =>      $data['requisitos_caracteristicas_tecnicas'],
            'condiciones_complementarias'           =>      $data['condiciones_complementarias'],
            'embalaje_forma_entrega'                =>      $data['embalaje_forma_entrega'],
            'tratamiento_material_defectuoso'       =>      $data['tratamiento_material_defectuoso'],
            'otras_condiciones_complementarias'     =>      $data['otras_condiciones_complementarias'],
            'status'                                =>      $data['status'],
            'created_at'                            =>      $data['created_at'],
            'updated_at'                            =>      $data['updated_at']
        );
    }

}
