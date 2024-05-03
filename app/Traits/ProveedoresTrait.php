<?php

namespace App\Traits;

use App\Models\Proveedores;

/**
 * Trait ProveedoresTrait
 * @package App\Traits
 */
trait ProveedoresTrait {

    /**
     * @param $id
     * @return array
     */
    public function getdatafromproveedores($id)
    {
        $data = Proveedores::where('id', $id)
            ->get()->first();
        return array(
            'id'                                    =>      $id,
            'email_empresa'                         =>      $data['email_empresa'],
            'nombre_empresa'                        =>      $data['nombre_empresa'],
            'nit'                                   =>      $data['nit'],
            'pais'                                  =>      $data['pais'],
            'ciudad'                                =>      $data['ciudad'],
            'telefono'                              =>      $data['telefono'],
            'status'                                =>      $data['status'],
            'created_at'                            =>      $data['created_at'],
            'updated_at'                            =>      $data['updated_at']
        );
    }

}
