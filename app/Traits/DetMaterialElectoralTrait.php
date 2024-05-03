<?php

namespace App\Traits;

use App\Models\DetMaterialElectoral;

/**
 * Trait DetMaterialElectoralTrait
 * @package App\Traits
 */
trait DetMaterialElectoralTrait {

    /**
     * @param $id
     * @return array
     */
    public function getdatafromdetmaterialelectoral($id)
    {
        $data = DetMaterialElectoral::where('id', $id)
            ->with(
                [
                    'user', 'materialelectoral', 'materiales',
                    'partida', 'ambitoeleccion',
                    'factordistribucion' => function ($q) {
                        $q->with(['destinomaterial']);
                    },
                    'responsableadquisicion', 'tipomaterial', 'instanciaaprobaciondiseno',
                    'instanciaaprobacionarte', 'lugarrecepcion'
                ]
            )
            ->get()->first();
        return array(
            'id' => $id,
            'users_sid'                         => $data['users_sid'],
            'id_material_electoral'             => $data['materialelectoral']['descripcion'],
            'id_material'                       => $data['materiales']['item'],
            'utilidad_material'                 => $data['utilidad_material'],
            'id_partida'                        => $data['partida']['label'],
            'id_ambito_eleccion'                => $data['ambitoeleccion']['nombre'],
            'id_factor_distribucion'            => $data['factordistribucion']['destinomaterial']['label'],
            'id_responsable_adquisicion'        => $data['responsableadquisicion']['label'],
            'margen_seguridad'                  => $data['margen_seguridad'],
            'id_tipo_material'                  => $data['tipomaterial']['label'],
            'cantidad_margen_seguridad'         => $data['cantidad_margen_seguridad'],
            'cantidad_total'                    => $data['cantidad_total'],
            'material_sensible'                 => $data['material_sensible'],
            'material_fungible'                 => $data['material_fungible'],
            'material_reutilizable'             => $data['material_reutilizable'],
            'id_instancia_aprobacion_diseno'    => $data['instanciaaprobaciondiseno']['label'],
            'id_instancia_aprobacion_arte'      => $data['instanciaaprobacionarte']['label'],
            'tiempo_produccion_adquisicion'     => $data['tiempo_produccion_adquisicion'],
            'id_lugar_recepcion'                => $data['lugarrecepcion']['label'],
            'costo_unitario'                    => $data['costo_unitario'],
            'costo_total'                       => $data['costo_total'],
            'status'                            => $data['status'],
            'created_at'                        => $data['created_at'],
            'updated_at'                        => $data['updated_at']
        );
    }

}
