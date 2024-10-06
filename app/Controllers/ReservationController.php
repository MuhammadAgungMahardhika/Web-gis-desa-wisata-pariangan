<?php

namespace App\Controllers;

use App\Models\packageModel;
use App\Models\reservationModel;
use App\Models\reservationStatusModel;
use App\Models\usersModel;
use CodeIgniter\API\ResponseTrait;
use CodeIgniter\Files\File;
use CodeIgniter\I18n\Time;

class ReservationController extends BaseController
{
    use ResponseTrait;
    protected $reservationModel;
    protected $reservationStatusModel;
    protected $packageModel;
    protected $userModel;
    protected $helpers = ['auth', 'url', 'filesystem'];

    public function __construct()
    {
        $this->reservationModel = new reservationModel();
        $this->reservationStatusModel = new reservationStatusModel();
        $this->packageModel = new packageModel();
        $this->userModel = new usersModel();
    }

    public function show($id)
    {
        $reservationData = $this->reservationModel->get_r_by_id_api($id)->getRowArray();
        // reservation status dan paket
        $reservationData['status'] = $this->reservationStatusModel->get_s_by_id_api($reservationData['id_reservation_status'])->getRowArray()['status'];

        $packageData = $this->packageModel->getPackage($reservationData['id_package'])->getRowArray();

        $reservationData['package_name']  = $packageData['name'];
        $reservationData['package_costum'] = $packageData['costum'];
        $reservationData['username'] = $this->userModel->getUser($reservationData['id_user'])->username;
        $reservationData['package_price'] = $packageData['price'];

        return json_encode($reservationData);
    }

    public function new()
    {
        //
    }

    public function create()
    {
        $request = $this->request->getRawInput();
        $id = $this->reservationModel->get_new_id_api();
        $requestData = [
            'id' =>  $id,
            'id_user' => $request['id_user'],
            'id_package' => $request['id_package'],
            'id_reservation_status' => $request['id_reservation_status'],
            'request_date' => $request['reservation_date'],
            'number_people' => $request['number_people'],
            'total_price' => $request['total_price'],
            'comment' => $request['comment']
        ];

        $addR = $this->reservationModel->add_r_api($requestData);
    }

    public function edit($id = null)
    {
        //
    }


    public function update($id)
    {
        $request = $this->request->getRawInput();


        // execute when booking canceled
        if (isset($request['canceled_at'])) {
            $request['canceled_at'] = Time::now("Asia/Jakarta");
        }

        // execute when booking confirmed
        if (isset($request['confirmed_at'])) {
            $request['confirmed_at'] = Time::now("Asia/Jakarta");
        }
        // execute when payment accepted
        if (isset($request['payment_accepted_date'])) {
            $request['payment_accepted_date'] = Time::now("Asia/Jakarta");
        }

        // execute when close the package
        if (isset($request['closed_at'])) {
            $request['closed_at'] = Time::now("Asia/Jakarta");
        }



        // execute when upload proof of refund
        if (isset($request['proof_of_refund'])) {
            $folder = $request['proof_of_refund'];
            $filepath = WRITEPATH . 'uploads/' . $folder;
            $filename = get_filenames($filepath)[0];
            $fileImg = new File($filepath . '/' . $filename);
            $fileImg->move(FCPATH . 'media/photos/refund/');
            delete_files($filepath);
            rmdir($filepath);
            $request['proof_of_refund'] = $fileImg->getFilename();
            $request['refund_date'] = Time::now("Asia/Jakarta");
        }
        // execute when upload proof of payment
        if (isset($request['proof_of_deposit'])) {
            $folder = $request['proof_of_deposit'];
            $filepath = WRITEPATH . 'uploads/' . $folder;
            $filename = get_filenames($filepath)[0];
            $fileImg = new File($filepath . '/' . $filename);
            $fileImg->move(FCPATH . 'media/photos/reservation/');
            delete_files($filepath);
            rmdir($filepath);
            $request['proof_of_deposit'] = $fileImg->getFilename();
            $request['deposit_date'] = Time::now("Asia/Jakarta");
        }
        $updateFC = $this->reservationModel->update_r_api($id, $request);
        if ($updateFC) {
            $response = [
                'status' => 200,
                'message' => [
                    "Success update reservation"
                ]
            ];
            return $this->respondCreated($response);
        } else {
            $response = [
                'status' => 400,
                'message' => [
                    "Fail update reservation",
                ]
            ];
            return $this->respond($response, 400);
        }
    }

    public function delete($id)
    {
        $delete = $this->reservationModel->delete_r_api($id);
        return json_encode($delete);
    }
    public function check($user_id, $package_id, $date)
    {
        $isDuplicate = $this->reservationModel->checkIsDateDuplicate($user_id, $package_id, $date);
        return json_encode($isDuplicate);
    }
}
