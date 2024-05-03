<?php

namespace App\Traits;

use App\Models\FactorDistribucion;

/**
 * Trait FactorDistribucionTrait
 * @package App\Traits
 */
trait FactorDistribucionTrait {

    /**
     * @param $id
     * @return array
     */
    public function getdatafromfactordistribucion($id)
    {
        $data = FactorDistribucion::where('id', $id)
            ->with(['user', 'destinomaterial'])
            ->get()->first();
        return array(
            'id'                                    =>      $id,
            'users_sid'                             =>      $data['users_sid'],
            'id_destino_material'                   =>      $data['destinomaterial']['label'],
            'status'                                =>      $data['status'],
            'created_at'                            =>      $data['created_at'],
            'updated_at'                            =>      $data['updated_at']
        );
    }

}
