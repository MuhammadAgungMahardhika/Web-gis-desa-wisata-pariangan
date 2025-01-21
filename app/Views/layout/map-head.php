<div class="card-header">
    <div class="row align-items-center">
        <div class="col-4">
            <h5 class="card-title">Google Maps with Location</h5>
        </div>
        <div class="col-8 mb-4 text-center">

            <!-- manual location -->
            <a id="manualLocation" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Current Location" class="btn icon btn-primary mx-1" onclick="currentLocation()">
                <span class="material-symbols-outlined">my_location</span>
            </a>
            <!-- current location -->
             <a id="currentLocation" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Set Manual Location"   class="btn icon btn-primary mx-1" id="manual-position" onclick="manualLocation()">
                  <span class="material-symbols-outlined">pin_drop</span>
             </a>
             <!-- Leggend button -->
            <span id="legendButton">
                <a data-bs-toggle="tooltip" data-bs-placement="bottom" title="Show Legend" class="btn icon btn-primary mx-1" id="legend-map" onclick="legend();">
                    <span class="material-symbols-outlined">visibility</span>
                </a>
            </span>

                <!-- dropdown view object -->
            <div class="btn-group mx-1">
                <div class="dropdown">
                  <button class="btn icon btn-primary dropdown-toggle" title="View area layers" type="button" id="dropdownMenuButton" data-bs-toggle="dropdown" aria-haspopup="true"
                  aria-expanded="false">
                  <i style="height:1.72rem;width:1.5rem" class="fa-solid fa-layer-group" aria-hidden="true"></i>
                  </button>
                  <!--   
                   <option value="country">Country</option>
                   <option value="province" selected>Province</option>
                   <option value="city">City/Regency</option>
                   <option value="subdistrict">Sub District</option>
                   <option value="village">Tourism Village</option> 
                   -->
                  <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                      <a class="dropdown-item" href="#">
                        <div class="form-check">
                          <div class="checkbox">
                              <input type="checkbox" onchange="checkAreaGeom()" id="subdistrictGeom" class="form-check-input" >
                              <label for="subdistrictGeom">Subdistrict</label>
                          </div>
                        </div>
                      </a>
                      <a class="dropdown-item" href="#">
                        <div class="form-check">
                          <div class="checkbox">
                              <input type="checkbox" onchange="checkAreaGeom()" id="cityGeom" class="form-check-input" >
                              <label for="cityGeom">Citty</label>
                          </div>
                        </div>
                      </a>
                      <a class="dropdown-item" href="#">
                        <div class="form-check">
                          <div class="checkbox">
                              <input type="checkbox" onchange="checkAreaGeom()" id="provinceGeom" class="form-check-input" >
                              <label for="provinceGeom">Province</label>
                          </div>
                        </div>
                      </a>
                      <a class="dropdown-item" href="#">               
                          <div class="form-check">
                            <div class="checkbox">
                                <input type="checkbox" onchange="checkAreaGeom()" id="countryGeom" class="form-check-input" >
                                <label for="countryGeom">Country</label>
                              </div>
                          </div>
                      </a>
                
                  </div>
                </div>
            </div>
  
            <!-- dropdown view object -->
            <div class="btn-group mx-1">
                <div class="dropdown">
                  <button class="btn icon btn-primary dropdown-toggle" title="View objects" type="button" id="dropdownMenuButton" data-bs-toggle="dropdown" aria-haspopup="true"
                  aria-expanded="false">
                   <span class="material-symbols-outlined">select_all</span>
                  </button>
                
                  <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                      <a class="dropdown-item" href="#">               
                          <div class="form-check">
                            <div class="checkbox">
                                <input type="checkbox" onchange="showAllMarker()" id="atractionCheck" class="form-check-input" >
                                <label for="atractionCheck">Atraction</label>
                              </div>
                          </div>
                      </a>
                      <a class="dropdown-item" href="#">
                        <div class="form-check">
                          <div class="checkbox">
                              <input type="checkbox" onchange="showAllMarker()" id="eventCheck" class="form-check-input" >
                              <label for="eventCheck">Event</label>
                          </div>
                        </div>
                      </a>
                      <a class="dropdown-item" href="#">
                        <div class="form-check">
                          <div class="checkbox">
                              <input type="checkbox" onchange="showAllMarker()" id="culinaryCheck" class="form-check-input" >
                              <label for="culinaryCheck">Culinary place</label>
                          </div>
                        </div>
                      </a>
                      <a class="dropdown-item" href="#">
                        <div class="form-check">
                          <div class="checkbox">
                              <input type="checkbox" onchange="showAllMarker()" id="souvenirCheck" class="form-check-input" >
                              <label for="souvenirCheck">Souvenir place</label>
                          </div>
                        </div>
                      </a>
                      <a class="dropdown-item" href="#">
                        <div class="form-check">
                          <div class="checkbox">
                              <input type="checkbox" onchange="showAllMarker()" id="worshipCheck" class="form-check-input" >
                              <label for="worshipCheck">Worship place</label>
                          </div>
                        </div>
                      </a>
                      <a class="dropdown-item" href="#">
                        <div class="form-check">
                          <div class="checkbox">
                              <input type="checkbox" onchange="showAllMarker()" id="facilityCheck" class="form-check-input" >
                              <label for="facilityCheck">Facility place</label>
                          </div>
                        </div>
                      </a>
                      <a class="dropdown-item" href="#">
                        <div class="form-check">
                          <div class="checkbox">
                              <input type="checkbox" onchange="showAllMarker()" id="homestayCheck" class="form-check-input" >
                              <label for="homestayCheck">Homestay place</label>
                          </div>
                        </div>
                      </a>
                  </div>
                </div>
            </div>
        </div>
        <div class="col-6"></div>
        <?php 
            $currentUrlPath = $_SERVER['REQUEST_URI'];  
            if (strpos($currentUrlPath, 'detail') === false && strpos($currentUrlPath, 'manage_package') === false)
            {
                echo '
                <div class="col-6">
                    <div class="input-group">
                        <label class="input-group-text" for="area_geom">Area Level</label>
                        <select class="form-select" id="area_geom" onchange="changeAreaGeom()">
                            <option value="country">Country</option>
                            <option value="province" selected>Province</option>
                            <option value="city">City/Regency</option>
                            <option value="subdistrict">Sub District</option>
                            <option value="village">Tourism Village</option>
                        </select>
                    </div>
                </div>';
            }
        ?>

    </div>
</div>
