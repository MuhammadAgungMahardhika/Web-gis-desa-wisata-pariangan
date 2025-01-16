<?= $this->extend('layout/template.php') ?>
<?= $this->section('head') ?>
<script>
    let datas
    let geomPariangan = JSON.parse('<?= $parianganData->geoJSON; ?>')
    let latPariangan = parseFloat(<?= $parianganData->lat; ?>)
    let lngPariangan = parseFloat(<?= $parianganData->lng; ?>)
</script>
<script src="<?= base_url('assets/js/map.js') ?>"></script>
<link rel="stylesheet" href="<?= base_url('assets/lib/filepond/filepond.css') ?>">
<link rel="stylesheet" href="<?= base_url('assets/lib/filepond/filepond-plugin-media-preview.min.css') ?>">
<link rel="stylesheet" href="<?= base_url('assets/lib/filepond/filepond-plugin-image-preview.css') ?>">

<link rel="stylesheet" href="<?= base_url('assets/css/pages/form-element-select.css'); ?>">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.10.0/css/bootstrap-datepicker.min.css" integrity="sha512-34s5cpvaNG3BknEWSuOncX28vz97bRI59UnVtEEpFX536A7BtZSJHsDyFoCl8S7Dt2TPzcrCEoHBGeM4SUBDBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.10.0/js/bootstrap-datepicker.min.js" integrity="sha512-LsnSViqQyaXpD4mBBdRYeP6sRwJiJveh2ZIbW41EBrNmKxgr/LFZIiWT6yr+nycvhvauz8c2nYMhrP80YhG7Cw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

<style>
    input[type=date]::-webkit-inner-spin-button,
    input[type=date]::-webkit-calendar-picker-indicator {
        display: none;
    }
</style>
<style>
    .filepond--root {
        width: 100%;
    }

    .input-no-border {
        border: 0;
        outline: 0;
    }
</style>
<?= $this->endSection() ?>
<?= $this->section('content') ?>
<!-- modal detail -->
<div class="modal fade text-left" id="modalPackage" tabindex="-1" aria-labelledby="myModalLabel1" style="display: none;" aria-hidden="true">
    <div class="modal-dialog modal-dialog-scrollable" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="modalHeader"> </h5>
                <button type="button" class="close rounded-pill" data-bs-dismiss="modal" aria-label="Close">
                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-x">
                        <line x1="18" y1="6" x2="6" y2="18"></line>
                        <line x1="6" y1="6" x2="18" y2="18"></line>
                    </svg>
                </button>
            </div>
            <div class="modal-body" id="modalBody">

            </div>
            <div class="modal-footer" id="modalFooter">

            </div>
        </div>
    </div>
</div>
<section class="section">
    <form class="form form-horizontal" action="<?= base_url('package/saveCostume'); ?>" method="post" onsubmit="checkRequired(event)" enctype="multipart/form-data">
        <div class="form-body">
            <div class="row">
                <script>
                    currentUrl = '<?= current_url(); ?>';
                </script>
                <!-- Object Detail Information -->
                <div class="col-md-6 col-12">
                    <div class="card">
                        <div class="card-header">
                            <h4 class="card-title text-center"><?= $title; ?></h4>
                        </div>
                        <div class="card-body">

                            <div class="form-group mb-4">
                                <label for="number_people" class="mb-2"> Number of people<span class="text-danger">*</span> </label>
                                <input type="number" oninput="setPrice()" value="1" id="number_people" name="number_people" class="form-control" required>
                            </div>
                            <div class="form-group mb-4">
                                <label for="price" class="mb-2">Price </label>
                                <div class="input-group">
                                    <span class="input-group-text">Rp </span>
                                    <input type="number" id="price" class="form-control" name="price" placeholder="price" aria-label="price" aria-describedby="price" value="0" required readonly>
                                </div>
                            </div>
                            <div class="form-group mb-4">
                                <label for="service_package" class="mb-2">Service Package</label>
                                <select class="choices form-select multiple-remove" multiple="multiple" id="service_package" onchange="setPrice()">
                                    <?php foreach ($serviceData as $service) : ?>
                                        <?php $type =  $service['is_group'] == 0 ? " / person" : " / group";  ?>
                                        <option value="<?= esc(json_encode($service)); ?>"><?= esc($service['name']  . ' (' . $service['price'] . $type . ')'); ?></option>

                                    <?php endforeach; ?>
                                </select>
                            </div>
                            <span id="service_package_form">

                            </span>
                            <div class="form-group mb-4">
                                <label for="comment" class="mb-2"> Additional information </label>
                                <input type="text" id="comment" name="reservationData[comment]" class="form-control">
                            </div>

                            <input type="hidden" name="reservationData[costum]" value="1">
                            <input type="hidden" name="username" value="<?= user()->username ?>">
                            <input type="hidden" name="id_user" value="<?= user()->id ?>">
                            <button type="submit" class="btn btn-primary me-1 mb-1">Submit</button>
                            <button type="reset" class="btn btn-light-secondary me-1 mb-1">Reset</button>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="row">
                        <div class="col-12">
                            <!-- Object Location on Map -->
                            <div class="card">
                                <?= $this->include('layout/map-head'); ?>
                                <!-- Object Map body -->
                                <?= $this->include('layout/map-body'); ?>
                                <div class="ms-4 mb-4">
                                    <h4>Active Map <span id="viewPoint" style="color: chartreuse;">None</span></h4>
                                </div>
                                <div class="card-footer">

                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" value="" id="cpCheck">
                                        <label class="form-check-label" for="flexCheckDefault">
                                            Culinary place
                                        </label>
                                    </div>
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" value="" id="wpCheck">
                                        <label class="form-check-label" for="flexCheckDefault">
                                            Worship place
                                        </label>
                                    </div>
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" value="" id="spCheck">
                                        <label class="form-check-label" for="flexCheckDefault">
                                            Souvenir place
                                        </label>
                                    </div>
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" value="" id="fCheck">
                                        <label class="form-check-label" for="flexCheckDefault">
                                            Facility
                                        </label>
                                    </div>
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" value="" id="hCheck">
                                        <label class="form-check-label" for="flexCheckDefault">
                                            Homestay
                                        </label>
                                    </div>
                                    <output id="sliderVal"></output>
                                    <input id="radiusSlider" type="range" onchange="supportNearby(this.value)" class="form-range autofocus" min="0" max="2000" step="10" value="0">

                                </div>
                            </div>

                        </div>
                        <div class="col-12">
                            <div class="card">
                                <div class="card-header">
                                    <h4 class="card-title text-center">Detail package</h4>

                                    <input type="hidden" required id="checkDetailPackage">
                                </div>
                                <div class="card-body">
                                    <button type="button" onclick="openPackageDayModal(`${noDay}`)" class="btn btn-outline-primary block" data-bs-toggle="modal" data-bs-target="#modalPackage"> New package day
                                    </button>

                                    <div class="p-4" id="package-day-container">
                                        <?php $noDay = 1; ?>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>

                </div>

            </div>
        </div>
    </form>
</section>
<?= $this->endSection() ?>
<?= $this->section('script') ?>
<script src="https://unpkg.com/filepond-plugin-file-validate-type/dist/filepond-plugin-file-validate-type.js"></script>
<script src="https://unpkg.com/filepond-plugin-image-exif-orientation/dist/filepond-plugin-image-exif-orientation.js"></script>
<script src="https://unpkg.com/filepond-plugin-image-resize/dist/filepond-plugin-image-resize.js"></script>
<script src="https://unpkg.com/filepond-plugin-image-preview/dist/filepond-plugin-image-preview.js"></script>
<script src="https://cdn.jsdelivr.net/npm/filepond-plugin-media-preview@1.0.11/dist/filepond-plugin-media-preview.min.js"></script>
<script src="https://unpkg.com/filepond@^4/dist/filepond.js"></script>
<script src="<?= base_url('assets/js/extensions/form-element-select.js'); ?>"></script>
<!-- Maps JS -->
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB8B04MTIk7abJDVESr6SUF6f3Hgt1DPAY&region=ID&language=en&callback=initMap"></script>
<script>
    let latBefore = ''
    let lngBefore = ''
    let routeArray = []

    // example object
    let exampleResponse = [{
            "id_object": "A01",
        },
        {
            "id_object": "A03",
        }
    ]

    function getObjects(noDay) {

        const objects = [];
        let noDetail = 0;
        $(`#body-detail-package-${noDay} tr`).each(function() {
            const objectId = $(this).find(`input[name="packageDetailData[${noDay}][detailPackage][${noDetail++}][id_object]"]`).val();
            if (objectId) {
                objects.push({
                    id_object: objectId
                });
            }
        });
        if (objects.length > 0) {
            $('#viewPoint').html('Day ' + noDay)
            showObjectsRoute(objects)

        } else {
            alert('No activities detected')
        }
    }

    function showObjectsRoute(objects = null) {
        let objectNumber = 1
        let flightPlanCoordinates = []
        clearMarker()
        clearRoutes()
        let boundObject = new google.maps.LatLngBounds();
        objects.forEach(object => {
            let id_object = object['id_object']

            let URI = "<?= base_url('list_object') ?>";
            let url = ""
            if (id_object.charAt(0) == 'H') {
                url = "homestay"
                URI = URI + '/homestay/' + `${id_object.substring(1,3)}`
            } else if (id_object.charAt(0) == 'E') {
                url = "event"
                URI = URI + '/event/' + `${id_object.substring(1,3)}`
            } else if (id_object.charAt(0) == 'C') {
                url = "culinary_place"
                URI = URI + '/culinary_place/' + `${id_object.substring(1,3)}`
            } else if (id_object.charAt(0) == 'W') {
                url = "worship_place"
                URI = URI + '/worship_place/' + `${id_object.substring(1,3)}`
            } else if (id_object.charAt(0) == 'S') {
                url = "souvenir_place"
                URI = URI + '/souvenir_place/' + `${id_object.substring(1,3)}`
            } else if (id_object.charAt(0) == 'A') {
                url = "atraction"
                URI = URI + '/atraction/' + `${id_object.substring(1,3)}`
            }

            $.ajax({
                url: URI,
                type: "GET",
                async: false,
                dataType: 'json',
                success: function(response) {
                    if (response.objectData.length > 0) {
                        let data = response.objectData[0]
                        let latlng = new google.maps.LatLng(data.lat, data.lng)
                        showObjectOnMap(objectNumber, data)
                        boundObject.extend(latlng)
                    }

                }
            })
            objectNumber++
        })

        map.fitBounds(boundObject)
        map.setCenter(boundObject.getCenter())
    }
    // Display marker for loaded object
    function showObjectOnMap(objectNumber, data, anim = true) {
        let id = data.id
        let lat = data.lat
        let lng = data.lng
        google.maps.event.clearListeners(map, 'click');
        let pos = new google.maps.LatLng(lat, lng);
        let marker = new google.maps.Marker();
        let icon = `https://raw.githubusercontent.com/Concept211/Google-Maps-Markers/master/images/marker_red${objectNumber}.png`;

        markerOption = {
            position: pos,
            icon: icon,
            animation: google.maps.Animation.DROP,
            map: map,
        }
        marker.setOptions(markerOption);
        if (!anim) {
            marker.setAnimation(null);
        }
        marker.addListener('click', () => {
            openInfoWindow(marker, infoMarkerData(data, url = null))
        });
        markerArray.push(marker);
        if (objectNumber == 1) {
            latBefore = lat
            lngBefore = lng

        } else {
            routeAll(lat, lng)
        }
    }

    function routeAll(lat, lng) {
        google.maps.event.clearListeners(map, 'click')
        let directionsService = new google.maps.DirectionsService();
        let start, end;
        start = new google.maps.LatLng(latBefore, lngBefore);
        end = new google.maps.LatLng(lat, lng)
        let request = {
            origin: start,
            destination: end,
            travelMode: 'DRIVING'
        };
        directionsService.route(request, function(result, status) {
            if (status == 'OK') {
                directionsRenderer = new google.maps.DirectionsRenderer({
                    suppressMarkers: true
                })
                directionsRenderer.setDirections(result);

                directionsRenderer.setMap(map);
                routeArray.push(directionsRenderer);
            }
        });

    }

    function clearRoutes() {
        for (i in routeArray) {
            routeArray[i].setMap(null);
        }
        routeArray = [];
    }
</script>
<script>
    let numberPeoples = 1
    let lastServicePrice = 0
    let noDay = <?= $noDay ?>;
    let arrayPrice = []

    let dateNow = new Date();
    $('#reservation_date').datepicker({
        format: 'yyyy-mm-dd',
        autoclose: true,
        startDate: new Date(dateNow.getFullYear(), dateNow.getMonth(), dateNow.getDate() + 7),
        todayHighlight: true
    });

    function setPrice() {
        let services = $('#service_package').val()
        let numberPeople = parseInt($('#number_people').val())
        let totalPrice = 0
        numberPeople = checkNumberPeople(numberPeople)
        if (numberPeople != false) {
            let servicePackageForm = $('#service_package_form')
            let servicePrice = 0
            servicePackageForm.empty()
            services.forEach(service => {
                let serviceParsed = JSON.parse(service)
                let price = serviceParsed.price
                if (serviceParsed.is_group == "0") {
                    if (price) {
                        servicePrice += parseInt(price) * numberPeople
                    } else {
                        servicePrice += 0 * numberPeople
                    }
                } else {
                    if (price) {
                        servicePrice += parseInt(price)
                    } else {
                        servicePrice += 0
                    }

                }
                servicePackageForm.append(`<input type="hidden" name="service_package[]" value="${serviceParsed.id}" />`)
            });

            let objectPrice = 0
            arrayPrice.forEach(element => {
                let elementPrice = element.price
                if (elementPrice) {
                    objectPrice += parseInt(elementPrice) * numberPeople
                } else {
                    objectPrice += 0 * numberPeople
                }
            })

            console.log("total service price = " + servicePrice)
            console.log("total object price = " + objectPrice)
            totalPrice = servicePrice + objectPrice

            $('#price').val(totalPrice)

        }
    }


    function checkRequired(event) {
        let reservationDate = $('#reservation_date').val()

        let sameDateCheckResult = "true"

        let checkDetailPackage = $('#checkDetailPackage').val()
        let today = new Date();
        let dd = String(today.getDate() - 7).padStart(2, '0');
        let mm = String(today.getMonth() + 1).padStart(2, '0'); //January is 0!
        let yyyy = today.getFullYear();
        today = yyyy + '-' + mm + '-' + dd;

        if (reservationDate <= today) {
            event.preventDefault();
            Swal.fire('Cannot create costume package, out of date, Maximum H-1 reservation', '', 'warning');
        } else if (!checkDetailPackage) {
            event.preventDefault();
            Swal.fire('You dont have any activities, please add 1 at least', '', 'warning');
        }

    }


    function removeObject(noDay, noDetail, objectId, objectPrice, generatedId) {
        $(`#${noDay}-${noDetail}`).remove()
        let current = $(`#lastNoDetail${noDay}`).val()
        $(`#lastNoDetail${noDay}`).val(current - 1)

        removePrice(generatedId, objectId)
    }
    //open modal package day

    function openPackageDayModal(noDay) {
        $("#modalHeader").html(`New package day`)
        $("#modalBody").html(
            `<div class="form-group mb-4">
                <label for="package-day" class="mb-2">Day</label>
                <input type="text" value="${noDay}" id="package-day" class="form-control" name="description" placeholder="package day" readonly>
            </div>
            <div class="form-group mb-4">
                <label for="package-day-description" class="mb-2">Description</label>
                <input type="text" id="package-day-description" class="form-control" name="description" placeholder="package day description" required>
            </div>`
        )
        $("#modalFooter").html(
            `<button type="button" class="btn" data-bs-dismiss="modal">
                    <i class="bx bx-x d-block d-sm-none"></i>
                    <span class="d-none d-sm-block">Close</span>
                </button>
                <button type="button" onclick="addPackageDay()" class="btn btn-primary ml-1" data-bs-dismiss="modal">
                    <i class="bx bx-check d-block d-sm-none"></i>
                    <span class="d-none d-sm-block">Save</span>
             </button>`
        )
    }


    // add package day to container
    function addPackageDay() {
        let packageDayDescription = $("#package-day-description").val()
        $("#package-day-container").append(`
        <div class="border shadow-sm p-2 mb-2" id="day-${noDay}">
        <span> Day </span>  <input type="text" value="${noDay}" name="packageDetailData[${noDay}][day]"  class="d-block" readonly> 
        <span> Object count </span> <input disabled value="0" type="text" id="lastNoDetail${noDay}" class="d-block">
        <span> Description </span>  <input value="${packageDayDescription}" name="packageDetailData[${noDay}][packageDayDescription]" class="d-block" >  
        <br>
        <br>
        <a class="btn btn-outline-danger btn-sm" onclick="deletePackageDay('${noDay}')"> <i class="fa fa-trash"> </i> </a>
        <a class="btn btn-outline-success btn-sm" onclick="openDetailPackageModal('${noDay}')" data-bs-toggle="modal" data-bs-target="#modalPackage"> <i class="fa fa-plus"> </i> </a>
         <a class="btn btn-primary btn-sm" href="#" title="Show Route" onclick="getObjects('${noDay}')"><i class="fa fa-road me-2"></i> show route on map</a>
        <table class="table table-border" id="table-day"> 
            <thead>
                <tr>
                    <th>Object code <span class="text-danger">*</span></th>
                    <th>Activity type</th>
                    <th>Activity price</th>
                    <th>Description <span class="text-danger">*</span></th>
                </tr>  
            </thead>
            <tbody id="body-detail-package-${noDay}">

            </tbody>     
        </table>
        </div>`)
        noDay++
    }

    function deletePackageDay(noDay) {
        console.log("day-" + noDay)
        $(`#day-${noDay}`).remove()
    }

    function openDetailPackageModal(noDay) {
        $("#modalHeader").html(`Add Day ${noDay} Detail`)
        $("#modalBody").html(`
        <input type="text" id="detail-package-day" class="form-control" name="detail-package-day" value="${noDay}" readonly placeholder="object" required>
       
        <div class="form-group mb-4">
                    <label for="select-object" class="mb-2">Object</label>
                    <select class="form-select" onchange="addObjectValue(this.value)" required>
                                     <option >Pilih objek</option>
                                    <?php if ($objectData) : ?>
                                        <?php $no = 0; ?>       
                                        <?php foreach ($objectData as $object) : ?>
                                            
                                    <option value="<?= esc(json_encode($object)) ?>"> <?= $object->id ?> - <?= esc($object->name); ?></option>
                                        
                                            <?php $no++; ?>       
                                        <?php endforeach; ?>
                                    <?php else : ?>
                                       
                                    <?php endif; ?>
                     </select>
        </div>
        <input id="detail-package-id-object" type="hidden" required>
        <input id="detail-package-price-object" type="hidden" type="number" value="0" required>
       
        <div class="form-group mb-4">
                    <label for="detail-package-description" class="mb-2">Description</label>
                    <input type="text" id="detail-package-description" class="form-control" name="detail-package-description" placeholder="Detail package description">
        </div>
        `)
        $("#modalFooter").html(
            `<button type="button" class="btn" data-bs-dismiss="modal">
                    <i class="bx bx-x d-block d-sm-none"></i>
                    <span class="d-none d-sm-block">Close</span>
                </button>
                <button type="button" onclick="saveDetailPackageDay(${noDay})" class="btn btn-primary ml-1" data-bs-dismiss="modal">
                    <i class="bx bx-check d-block d-sm-none"></i>
                    <span class="d-none d-sm-block">Save</span>
            </button>`
        )
    }

    function addObjectValue(object) {
        let objectData = JSON.parse(object)
        let objectId = objectData.id
        let objectName = objectData.name
        $("#detail-package-id-object").val(objectId)
        $("#detail-package-description").val("Visit " + objectName)
        let objectPrice = objectData.price == null ? 0 : parseInt(objectData.price)
        $("#detail-package-price-object").val(objectPrice)
    }


    function saveDetailPackageDay(noDay) {
        //get data from modal input
        let noDetail = parseInt($(`#lastNoDetail${noDay}`).val())
        let objectPrice = parseInt($("#detail-package-price-object").val())
        let object_id = $("#detail-package-id-object").val()
        let activity_type = ''
        let activity_price = parseInt($('#detail-package-price-object').val())
        let description = $("#detail-package-description").val()

        const generatedIds = generateId()
        if (object_id.substring(0, 1) == 'A') {
            activity_type = 'Atraksi'
        } else if (object_id.substring(0, 1) == 'C') {
            activity_type = 'Culinary Place'
        } else if (object_id.substring(0, 1) == 'S') {
            activity_type = 'Souvenir Place'
        } else if (object_id.substring(0, 1) == 'W') {
            activity_type = 'Worship Place'
        } else if (object_id.substring(0, 1) == 'H') {
            activity_type = 'Homestay'
        }
        $(`#body-detail-package-${noDay}`).append(`
            <tr id="${noDay}-${noDetail}"> 
              <td><input class="form-control" value="${object_id}" name="packageDetailData[${noDay}][detailPackage][${noDetail}][id_object]" required readonly></td>
              <td><input class="form-control" value="${activity_type}" name="packageDetailData[${noDay}][detailPackage][${noDetail}][activity_type]" readonly></td>
              <td><input class="form-control" value="${activity_price}" name="packageDetailData[${noDay}][detailPackage][${noDetail}][activity_price]" readonly></td>
              <td><input class="form-control" value="${description}" name="packageDetailData[${noDay}][detailPackage][${noDetail}][description]"></td>
              <td><a class="btn btn-danger" onclick="removeObject('${noDay}','${ noDetail }','${object_id}', '${objectPrice}','${generatedIds}')"> <i class="fa fa-x"></i> </a></td>
            </tr>     
            `)
        $(`#lastNoDetail${noDay}`).val(noDetail + 1)
        $('#checkDetailPackage').val('oke')
        // price counting
        addPrice(generatedIds, object_id, objectPrice)
    }

    function generateId() {
        // Menghasilkan bilangan acak dengan rentang 0 sampai 999999
        const randomId = Math.floor(Math.random() * 1000000);
        return randomId;
    }


    function addPrice(generatedId, id, price) {
        arrayPrice.push({
            id: id,
            price: price,
            generatedId: generatedId
        })
        setPrice()
    }

    function removePrice(generatedId, id) {
        arrayPrice = arrayPrice.filter(element => element.generatedId != generatedId);
        setPrice()
    }

    function checkNumberPeople(numberPeople) {
        let result = true
        if (isNaN(numberPeople)) {
            result = false
        } else if (numberPeople < 1) {
            result = 1
        } else {
            result = numberPeople
        }
        return result
    }
</script>

<script>
    FilePond.registerPlugin(
        FilePondPluginFileValidateType,
        FilePondPluginImageExifOrientation,
        FilePondPluginImagePreview,
        FilePondPluginImageResize,
        FilePondPluginMediaPreview,
    );

    // Get a reference to the file input element
    const photo = document.querySelector('input[id="gallery"]');

    // Create a FilePond instance
    const pond = FilePond.create(photo, {
        imageResizeTargetHeight: 720,
        imageResizeUpscale: false,
        credits: false,
    })

    pond.setOptions({
        server: {
            timeout: 3600000,
            process: {
                url: '<?= base_url("upload/photo") ?>',
                onload: (response) => {
                    console.log("processed:", response);
                    return response
                },
                onerror: (response) => {
                    console.log("error:", response);
                    return response
                },
            },
            revert: {
                url: '<?= base_url("upload/photo") ?>',
                onload: (response) => {
                    console.log("reverted:", response);
                    return response
                },
                onerror: (response) => {
                    console.log("error:", response);
                    return response
                },
            },
        }
    });

    // add new service gallery
    // Get a reference to the file input element
    const photoservice = document.querySelector('input[id="galleryservice"]');

    // Create a FilePond instance
    const pondservice = FilePond.create(photoservice, {
        imageResizeTargetHeight: 720,
        imageResizeUpscale: false,
        credits: false,
    })

    pondservice.setOptions({
        server: {
            timeout: 3600000,
            process: {
                url: '<?= base_url("upload/photo") ?>',
                onload: (response) => {
                    console.log("processed:", response);
                    return response
                },
                onerror: (response) => {
                    console.log("error:", response);
                    return response
                },
            },
            revert: {
                url: '<?= base_url("upload/photo") ?>',
                onload: (response) => {
                    console.log("reverted:", response);
                    return response
                },
                onerror: (response) => {
                    console.log("error:", response);
                    return response
                },
            },
        }
    })

    function addNewFacility(val) {
        $('#listFacility').append(`<tr><td><input type="text" class="form-control" name="facility_package[]" required value="${val}"></td></tr>`)
        $('#facility').val('');

    }
</script>
<?= $this->endSection() ?>