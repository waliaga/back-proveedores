<?php

namespace App\Traits;

use App\Models\ModalidadProcesos;

/**
 * Trait ModalidadProcesosTrait
 * @package App\Traits
 */
trait ModalidadProcesosTrait {

    /**
     * @param $id
     * @return array
     */
    public function getdatafrommodalidadprocesos($id)
    {
        $data = ModalidadProcesos::where('id', $id)
            ->with(['user'])
            ->get()->first();
        return array(
            'id'                                    =>      $id,
            'users_sid'                             =>      $data['users_sid'],
            'abreviatura'                           =>      $data['abreviatura'],
            'descripcion'                           =>      $data['descripcion'],
            'status'                                =>      $data['status'],
            'created_at'                            =>      $data['created_at'],
            'updated_at'                            =>      $data['updated_at']
        );
    }

}
