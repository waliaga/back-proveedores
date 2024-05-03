<?php

namespace App\Traits;

use App\Models\Procesos;

/**
 * Trait ProcesosTrait
 * @package App\Traits
 */
trait ProcesosTrait {

    /**
     * @param $id
     * @return array
     */
    public function getdatafromprocesos($id)
    {
        $data = Procesos::where('id', $id)
            ->with(['user', 'tiposflujo'])
            ->get()->first();
        return array(
            'id'                                    =>      $id,
            'users_sid'                             =>      $data['users_sid'],
            'id_tipos_flujo'                        =>      $data['tiposflujo']['detalle_flujo'],
            'fecha_proceso'                         =>      $data['fecha_proceso'],
            'num_proceso'                           =>      $data['num_proceso'],
            'descripcion_proceso'                   =>      $data['descripcion_proceso'],
            'estado_w'                              =>      $data['estado_w'],
            'status'                                =>      $data['status'],
            'created_at'                            =>      $data['created_at'],
            'updated_at'                            =>      $data['updated_at'],
            'gestion'                               =>      $data['gestion']
        );
    }

}
