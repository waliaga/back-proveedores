<?php

namespace App\Traits;

use App\Models\ProcesoElectoral;

/**
 * Trait ProcesoElectoralTrait
 * @package App\Traits
 */
trait ProcesoElectoralTrait {

    /**
     * @param $id
     * @return array
     */
    public function getdatafromprocesoelectoral($id)
    {
        $data = ProcesoElectoral::where('id', $id)
            ->with(['user', 'ambitoeleccion', 'procesos', 'estadoproceso'])
            ->get()->first();
        return array(
            'id'                                    =>      $id,
            'users_sid'                             =>      $data['users_sid'],
            'sigla'                                 =>      $data['sigla'],
            'nombre'                                =>      $data['nombre'],
            'descripcion'                           =>      $data['descripcion'],
            'id_ambito_eleccion'                    =>      $data['ambitoeleccion']['nombre'],
            'id_procesos'                           =>      $data['procesos']['descripcion_proceso'],
            'fecha'                                 =>      $data['fecha'],
            'id_estado_proceso'                     =>      $data['estadoproceso']['label'],
            'status'                                =>      $data['status'],
            'created_at'                            =>      $data['created_at'],
            'updated_at'                            =>      $data['updated_at']
        );
    }

}
