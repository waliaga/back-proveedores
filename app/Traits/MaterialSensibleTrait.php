<?php

namespace App\Traits;

use App\Models\MaterialSensible;

/**
 * Trait MaterialSensibleTrait
 * @package App\Traits
 */
trait MaterialSensibleTrait {

    /**
     * @param $id
     * @return array
     */
    public function getdatafrommaterialsensible($id)
    {
        $data = MaterialSensible::where('id', $id)
            ->with(['user', 'medidasseguridad', 'detmaterialelectoral'])
            ->get()->first();
        return array(
            'id'                                    =>      $id,
            'users_sid'                             =>      $data['users_sid'],
            'id_medidas_seguridad'                  =>      $data['medidasseguridad']['label'],
            'id_det_material_electoral'             =>      $data['detmaterialelectoral']['utilidad_material'],
            'status'                                =>      $data['status'],
            'created_at'                            =>      $data['created_at'],
            'updated_at'                            =>      $data['updated_at']
        );
    }

}
