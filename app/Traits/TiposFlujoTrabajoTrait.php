<?php

namespace App\Traits;

use App\Models\TiposFlujoTrabajo;

/**
 * Trait TiposFlujoTrabajoTrait
 * @package App\Traits
 */
trait TiposFlujoTrabajoTrait {

    /**
     * @param $id
     * @return array
     */
    public function getdatafromtiposflujotrabajo($id)
    {
        $data = TiposFlujoTrabajo::where('id', $id)
            ->with(['user', 'tiposflujo'])
            ->get()->first();
        return array(
            'id'                                    =>      $id,
            'users_sid'                             =>      $data['users_sid'],
            'id_tipos_flujo'                        =>      $data['tiposflujo']['detalle_flujo'],
            'origen_estado'                         =>      $data['origen_estado'],
            'destino_estado'                        =>      $data['destino_estado'],
            'status'                                =>      $data['status'],
            'created_at'                            =>      $data['created_at'],
            'updated_at'                            =>      $data['updated_at']
        );
    }

}
