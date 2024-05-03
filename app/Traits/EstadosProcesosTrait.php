<?php

namespace App\Traits;

use App\Models\EstadosProcesos;

/**
 * Trait EstadosProcesosTrait
 * @package App\Traits
 */
trait EstadosProcesosTrait {

    /**
     * @param $id
     * @return array
     */
    public function getdatafromestadosprocesos($id)
    {
        $data = EstadosProcesos::where('id', $id)
            ->with(['user'])
            ->get()->first();
        return array(
            'id'                                    =>      $id,
            'users_sid'                             =>      $data['users_sid'],
            'sigla_estados'                         =>      $data['sigla_estados'],
            'descripcion_estados'                   =>      $data['descripcion_estados'],
            'status'                                =>      $data['status'],
            'created_at'                            =>      $data['created_at'],
            'updated_at'                            =>      $data['updated_at']
        );
    }

}
