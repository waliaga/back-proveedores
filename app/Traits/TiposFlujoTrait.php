<?php

namespace App\Traits;

use App\Models\TiposFlujo;

/**
 * Trait TiposFlujoTrait
 * @package App\Traits
 */
trait TiposFlujoTrait {

    /**
     * @param $id
     * @return array
     */
    public function getdatafromtiposflujo($id)
    {
        $data = TiposFlujo::where('id', $id)
            ->with(['user'])
            ->get()->first();
        return array(
            'id'                                    =>      $id,
            'users_sid'                             =>      $data['users_sid'],
            'detalle_flujo'                         =>      $data['detalle_flujo'],
            'status'                                =>      $data['status'],
            'created_at'                            =>      $data['created_at'],
            'updated_at'                            =>      $data['updated_at']
        );
    }

}
