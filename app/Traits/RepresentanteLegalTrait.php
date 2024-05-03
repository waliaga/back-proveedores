<?php

namespace App\Traits;

use App\Models\RepresentanteLegal;

/**
 * Trait RepresentanteLegalTrait
 * @package App\Traits
 */
trait RepresentanteLegalTrait {

    /**
     * @param $id
     * @return array
     */
    public function getdatafromrepresentantelegal($id)
    {
        $data = RepresentanteLegal::where('id', $id)
            ->get()->first();
        return array(
            'id'                                    =>      $id,
            'id_proveedores'                        =>      $data['proveedores']['nombre_empresa'],
            'nombre_completo'                       =>      $data['nombre_completo'],
            'telefono_representante'                =>      $data['telefono_representante'],
            'email_representante'                   =>      $data['email_representante'],
            'status'                                =>      $data['status'],
            'created_at'                            =>      $data['created_at'],
            'updated_at'                            =>      $data['updated_at']
        );
    }

}
