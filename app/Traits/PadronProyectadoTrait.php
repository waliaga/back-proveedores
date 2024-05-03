<?php

namespace App\Traits;

use App\Models\PadronProyectado;

/**
 * Trait PadronProyectadoTrait
 * @package App\Traits
 */
trait PadronProyectadoTrait {

    /**
     * @param $id
     * @return array
     */
    public function getdatafrompadronproyectado($id)
    {
        $data = PadronProyectado::where('id', $id)
            ->with(['user', 'tipoeleccion', 'ambitoeleccion', 'proceso'])
            ->get()->first();
        return array(
            'id'                                    =>      $id,
            'users_sid'                             =>      $data['users_sid'],
            'id_tipo_eleccion'                      =>      $data['tipoeleccion']['sigla'],
            'id_ambito_eleccion'                    =>      $data['ambitoeleccion']['nombre'],
            'id_proceso'                            =>      $data['proceso']['num_proceso'],
            'descripcion'                           =>      $data['descripcion'],
            'fecha_eleccion'                        =>      $data['fecha_eleccion'],
            'habilitados_mesa'                      =>      $data['habilitados_mesa'],
            'jurados_mesa'                          =>      $data['jurados_mesa'],
            'mesa_notarios'                         =>      $data['mesa_notarios'],
            'guias_electorales'                     =>      $data['guias_electorales'],
            'tecnicos_informacion'                  =>      $data['tecnicos_informacion'],
            'personal_limpieza'                     =>      $data['personal_limpieza'],
            'efectivos_seguridad'                   =>      $data['efectivos_seguridad'],
            'status'                                =>      $data['status'],
            'created_at'                            =>      $data['created_at'],
            'updated_at'                            =>      $data['updated_at']
        );
    }

}
