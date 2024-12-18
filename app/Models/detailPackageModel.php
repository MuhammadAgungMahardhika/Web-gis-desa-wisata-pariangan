<?php

namespace App\Models;

use App\Database\Migrations\Atraction;
use CodeIgniter\I18n\Time;
use CodeIgniter\Model;

class DetailPackageModel extends Model
{
    protected $DBGroup          = 'default';
    protected $table            = 'detail_package';
    protected $primaryKey       = 'activity';
    protected $returnType       = 'array';
    // protected $allowedFields    = ['id_detail_service_package', 'id_service_package', 'id_package'];

    // Dates
    protected $useTimestamps = true;
    protected $dateFormat    = 'datetime';
    protected $createdField  = 'created_at';
    protected $updatedField  = 'updated_at';

    // Validation
    protected $validationRules      = [];
    protected $validationMessages   = [];
    protected $skipValidation       = false;
    protected $cleanValidationRules = true;

    // API
    public function get_detail_package_by_package_api($day = null)
    {
        $query = $this->db->table($this->table)
            ->select('activity as id, id_day, id_package, id_object, activity_type, detail_package.description as detailDescription')
            ->where('id_package', $day)
            ->get();
        return $query;
    }

    public function get_detail_package_by_dp_api($id_package, $id_day = null)
    {
        $query = $this->db->table($this->table)
            ->select('activity as id, id_day, detail_package.id_package, detail_package.id_object, detail_package.activity_type, detail_package.description as detailDescription')
            ->join('package', 'package.id = detail_package.id_package')
            ->where('detail_package.id_package', $id_package)
            ->where('id_day', $id_day)
            ->get();
        return $query;
    }

    public function get_objects_by_package_day_id($id_package, $id_day = null)
    {
        $query = $this->db->table($this->table)
            ->select('detail_package.*')
            ->join('package', 'package.id = detail_package.id_package')
            ->where('detail_package.id_package', $id_package)
            ->where('detail_package.id_day', $id_day)
            ->get();

        $queryNew = $query->getResultArray();
        $no = 0;
        foreach ($queryNew as $newData) {
            $queryNew[$no]['activity_price'] = 0;
            $idObject = $newData['id_object'];
            if (substr($idObject, 0, 1) == 'A') {
                $atractionModel = new atractionModel();
                $atractionId = substr($idObject, 1, 2);
                $atractionPrice = $atractionModel->getAtraction($atractionId)->getFirstRow()->price;

                $queryNew[$no]['activity_price'] = $atractionPrice != null ? $atractionPrice : 0;
            }
            if (substr($idObject, 0, 1) == 'H') {
                $homestayModel = new homestayModel();
                $homestayId = substr($idObject, 1, 2);
                $homestay = $homestayModel->getHomestay($homestayId)->getFirstRow();
                $homestayPrice = null;
                if ($homestay) {
                    $homestayPrice = $homestay->price;
                }

                $queryNew[$no]['activity_price'] = $homestayPrice != null ? $homestayPrice : 0;
            }
            $no++;
        }
        return $queryNew;
    }

    public function get_new_id_api()
    {
        $lastId = $this->db->table($this->table)->select('activity')->orderBy('activity', 'ASC')->get()->getLastRow('array');
        if ($lastId != null) {
            $count = (int)substr($lastId['activity'], 0);
            $id = sprintf('%02d', $count + 1);
        } else {
            $count = 0;
            $id = sprintf('%02d', $count + 1);
        }

        return $id;
    }

    public function add_dp_api($datas = null)
    {
        $query = $this->db->table($this->table)->insert($datas);
        return $query;
    }

    public function update_dp_api($id = null, $data = null)
    {
        $queryDel = $this->db->table($this->table)->delete(['activity' => $id]);
        $new_id = $this->get_new_id_api();
        $data['activity'] = $new_id;
        $queryIns = $this->add_dp_api($data);
        return $queryDel && $queryIns;
    }
}
