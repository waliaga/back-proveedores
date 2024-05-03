<?php

namespace App\Traits;

use App\Models\PresupuestoMaterial;

/**
 * Trait PresupuestoMaterialTrait
 * @package App\Traits
 */
trait PresupuestoMaterialTrait {

    /**
     * @param $id
     * @return array
     */
    public function getdatafrompresupuestomaterial($id)
    {
        $data = PresupuestoMaterial::where('id', $id)
            ->with(['proveedores', 'materiales'])
            ->get()->first();
        return array(
            'id'                                    =>      $id,
            'id_proveedores'                        =>      $data['proveedores']['nombre_empresa'],
            'id_material'                           =>      $data['materiales']['item'],
            'costo_unitario'                        =>      $data['costo_unitario'],
            'status'                                =>      $data['status'],
            'created_at'                            =>      $data['created_at'],
            'updated_at'                            =>      $data['updated_at']
        );
    }

}
