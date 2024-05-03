<?php

namespace App\Http\Controllers;

use App\Jobs\SendProposalConfirmation;
use App\Models\DetMaterialElectoral;
use App\Models\PresupuestoMaterial;
use App\Models\ProcesoElectoral;
use App\Models\Proveedores;
use Illuminate\Http\Request;

class MaterialesYCostosController extends Controller
{
    /**
     * @param Request $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function getmaterialespublicados(Request $request)
    {
        // Sanitizamos el valor enviado
        $email = htmlentities($request->email, ENT_QUOTES);
        $email_empresa = filter_var($email, FILTER_SANITIZE_EMAIL);
        // Verificamos el codigo
        $codigo = filter_var(base64_decode(base64_decode($request->codigo)), FILTER_SANITIZE_NUMBER_INT);
        // Verificamos los materiales
        $materiales = DetMaterialElectoral::where('status', 'A')
            ->with(
                [
                    'user',
                    'materialelectoral' => function($q){
                        $q->with(
                            [
                                'proceso' => function($q) {
                                    $q->with(
                                        [
                                            'procesoelectoral' => function($q) {
                                                $q->where('id_estado_proceso', 3);
                                            }
                                        ]
                                    );
                                }
                            ]
                        );
                    },
                    'partida', 'ambitoeleccion',
                    'factordistribucion' => function ($q) {
                        $q->with(['destinomaterial']);
                    },
                    'responsableadquisicion', 'tipomaterial', 'instanciaaprobaciondiseno',
                    'instanciaaprobacionarte', 'lugarrecepcion',
                    'materiales' => function($q) use ($email_empresa,$codigo) {
                        $q->with(
                            [
                                'user', 'grupo', 'unidadmedida', 'destinomaterial',
                                'presupuestomaterial' => function($q)use ($email_empresa,$codigo) {
                                    $q->with(
                                        [
                                            'proveedores' => function($q)use ($email_empresa,$codigo) {
                                                $q->where('email_empresa', $email_empresa)
                                                    ->where('codigo', $codigo);
                                            }
                                        ]
                                    );
                                }
                            ]
                        );
                    },
                    'caracteristicastecnicas',
                    'caracteristicastecnicascompuestas' => function($query) {
                        $query->with([
                            'papeletas', 'cerchas'
                        ]);
                    }
                ]
            )->get();
        return response()->json(
            $materiales, 200
        );
    }

    /**
     * @param Request $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function sendmyproposal(Request $request)
    {
        // Sanitizamos el valor enviado
        $email = htmlentities($request->email, ENT_QUOTES);
        $email_empresa = filter_var($email, FILTER_SANITIZE_EMAIL);
        // Verificamos el codigo
        $codigo = filter_var(base64_decode(base64_decode($request->codigo)), FILTER_SANITIZE_NUMBER_INT);
        // Obtenemos el id del proveedor segun nuestro email y codigo
        if(Proveedores::where('status', 'A')->where('email_empresa', $email_empresa)->where('codigo', $codigo)->exists())
        {
            // Obtenemos la informacion del proveedor
            $proveedor = Proveedores::where('status', 'A')->where('email_empresa', $email_empresa)->where('codigo', $codigo)->get()->first();
            // Tenemos el id del proveedor
            $id_proveedor = $proveedor->id;
            // Tenemos el nombre del proveedor
            $nombre_empresa = $proveedor->nombre_empresa;
            // Verificamos su propuesta
            $propuestaMaterial = PresupuestoMaterial::where('status', 'A')->where('id_proveedores', $id_proveedor)
                ->with(
                    [
                        'materiales' => function($q) {
                            $q->with(
                                [
                                    'grupo', 'detmaterialelectoral'
                                ]
                            );
                        }
                    ]
                )->get();
            // Enviamos la confirmacion de la propyesta por correo
            SendProposalConfirmation::dispatch($email_empresa, $codigo, $propuestaMaterial, $nombre_empresa);
            // Devolverlos positivo
            return response()->json(
              true, 200
            );
        }
        else
        {
            return response()->json(
                false, 200
            );
        }
    }

    /**
     * @param Request $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function savemyproposal(Request $request)
    {
        // Sanitizamos el valor enviado
        $email = htmlentities($request->email, ENT_QUOTES);
        $email_empresa = filter_var($email, FILTER_SANITIZE_EMAIL);
        // Verificamos el codigo
        $codigo = filter_var(base64_decode(base64_decode($request->codigo)), FILTER_SANITIZE_NUMBER_INT);
        // Obtenemos el id del proveedor segun nuestro email y codigo
        if(Proveedores::where('status', 'A')->where('email_empresa', $email_empresa)->where('codigo', $codigo)->exists())
        {
            $proveedor = Proveedores::where('status', 'A')->where('email_empresa', $email_empresa)->where('codigo', $codigo)->get()->first();
            $id_proveedor = $proveedor->id;
            // Verificamos si hay como guardar o actualizar
            if(PresupuestoMaterial::where('status', 'A')->where('id_proveedores', $id_proveedor)->where('id_material', $request->id_material)->exists())
            {
                // Actualizamos
                PresupuestoMaterial::where('status', 'A')->where('id_proveedores', $id_proveedor)
                    ->where('id_material', $request->id_material)->update(
                        [
                            'costo_unitario'        =>      $request->costo_unitario,
                            'updated_at'            =>      date("Y-m-d H:i:s")
                        ]
                    );
                return response()->json(
                    1, 200
                );
            }
            else
            {
                // Registramos
                PresupuestoMaterial::create(
                    [
                        'id_proveedores'        =>      $id_proveedor,
                        'id_material'           =>      $request->id_material,
                        'costo_unitario'        =>      $request->costo_unitario,
                        'status'                =>      'A',
                        'created_at'            =>      date("Y-m-d H:i:s")
                    ]
                );
                return response()->json(
                    1, 200
                );
            }
        }
        else
        {
            return response()->json(
                false, 200
            );
        }
    }

}
