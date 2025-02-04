$(document).ready(function() {
    var currentIndex = -1;
    var taxes = -1;
    var rentforvehicles = {};
    var vehiclerentals = {};
    var vehicles = {};
    var minrentday = -1;
    var maxrentday = -1;

    var myRentalsPage = false;

    var orjinalPrice = -1;
    var selectedModel = "";
    var selectedPrice = -1;
    var selectedTax = -1;
    var selectedAllPrice = -1;
    var selectedCategory = "";
    var selectedDay = 1;
    var selected = false;

    var database = {}
    var localesData = {}

    function Update(index, bool) {
        if (!bool) {
            $(".not-vehicles-contain").hide();
            $(".spawn-vehicle").hide();
            var categories = vehiclerentals[index - 1].categories;
            $(".categorys").empty();
    
            var allcarscategoryHtml =
                '<div class="all-cars cates">' +
                '<i class="fa-solid fa-car"></i>' +
                '<strong>' + localesData["AllVehicles-HTML"] + '</strong>' +
                '</div>';
            $(".categorys").append(allcarscategoryHtml);
            $(".all-cars").addClass('active');
            categories.forEach(function(categoryName) {
                if (rentforvehicles[categoryName]) {
                    var category = rentforvehicles[categoryName];
                    var categoryHtml =
                        '<div class="' + categoryName + ' cates">' +
                        '<i class="' + category.icon + '"></i>' +
                        '<strong>' + categoryName.replace(/-/g, " "); + '</strong>' +
                        '</div>';
                    $(".categorys").append(categoryHtml);
                }
            });
            $(".vehicles-contain").empty();
            vehiclerentals.forEach(function(rental, index) {
                if (index + 1 === currentIndex) {
                    rental.categories.forEach(function(categoryName) {
                        if (rentforvehicles[categoryName]) {
                            var category = rentforvehicles[categoryName];
                            category.vehicles.forEach(function(vehicleObject) {
                                var vehicle = vehicles[vehicleObject.model];
                                if (vehicle) {
                                    var isFavorite = (database && database.favorites && database.favorites[vehicleObject.model]);
                                    var vectorImage = (isFavorite) ? "vector_.png" : "vector.png";
                                    var vehicleHtml = '<div class="' + vehicleObject.model + ' vehicle"';
                                    if (isFavorite) {
                                        vehicleHtml += ' data-favorite="' + isFavorite + '"';
                                    }
                                    vehicleHtml += '>' +
                                        '<img class="vehicle-image" src="images/vehicles/' + vehicleObject.model + '.png" draggable="false">' +
                                        '<h1>' + vehicle.title.toUpperCase() + '</h1>' +
                                        '<h2>' + vehicle.category.toUpperCase() + '</h2>' +
                                        '<img class="colors" src="images/colors.png" draggable="false">' +
                                        '<div class="border"></div>' +
                                        '<img class="vector" src="images/' + vectorImage + '" draggable="false">' +
                                        '<div class="select" data-price="' + vehicleObject.price + '" data-category="' + categoryName + '">' +
                                        '<strong>' + localesData["Select-HTML"] + '</strong>' +
                                        '</div>' +
                                        '</div>';
                                
                                    $(".vehicles-contain").append(vehicleHtml);
                                    $(".vehicles-contain .vehicle").each(function() {
                                        var isFavorite = $(this).data('favorite');
                                        if (isFavorite) {
                                            $(this).addClass('favorite');
                                        }
                                    });
                                }
                            });
                        }
                    });
                }
            });
            $(".vehicle.favorite").prependTo(".vehicles-contain");
        } else {
            $(".spawn-vehicle").show();
            var categories = [];

            database.vehicles.forEach(function(vehicle) {
                if (vehicle.index === currentIndex) {
                    var categoryName = vehicle.category;
                    if (!categories.includes(categoryName)) {
                        categories.push(categoryName);
                    }
                }
            });

            $(".categorys").empty();

            var allcarscategoryHtml =
                '<div class="all-cars cates">' +
                '<i class="fa-solid fa-car"></i>' +
                '<strong>' + localesData["AllVehicles-HTML"] + '</strong>' +
                '</div>';
            $(".categorys").append(allcarscategoryHtml);
            $(".all-cars").addClass('active');

            categories.forEach(function(categoryName) {
                if (rentforvehicles[categoryName]) {
                    var category = rentforvehicles[categoryName];
                    var categoryHtml =
                        '<div class="' + categoryName + ' cates">' +
                        '<i class="' + category.icon + '"></i>' +
                        '<strong>' + categoryName.replace(/-/g, " "); + '</strong>' +
                        '</div>';
                    $(".categorys").append(categoryHtml);
                }
            });

            $(".vehicles-contain").empty();
            database.vehicles.forEach(function(vehicle) {
                if (vehicle.index === currentIndex) {
                    var vehicleInfos = vehicles[vehicle.model];
                    if (vehicleInfos) {
                        var category = rentforvehicles[vehicle.category];
                        if (category) {
                            var vehicleObject = category.vehicles.find(function(item) {
                                return item.model === vehicle.model;
                            });
                            if (vehicleObject) {
                                var vehicleHtml =
                                    '<div class="' + vehicle.model + ' vehicle">' +
                                    '<img class="vehicle-image" src="images/vehicles/' + vehicle.model + '.png" draggable="false">' +
                                    '<h1>' + vehicleInfos.title.toUpperCase() + '</h1>' +
                                    '<h2>' + vehicle.category.toUpperCase() + '</h2>' +
                                    '<img class="colors" src="images/color.png" draggable="false">' +
                                    '<div class="border"></div>' +
                                    '<div class="select" data-price="' + vehicleObject.price + '" data-category="' + vehicle.category + '">' +
                                    '<strong>' + localesData["Select-HTML"] + '</strong>' +
                                    '</div>' +
                                    '</div>';
                
                                $(".vehicles-contain").append(vehicleHtml);
                                
                                var vehicleDaysHtml =
                                    '<div class="vehicle-days-contain">' +
                                    '<img class="days-image" src="images/days.png" draggable="false">' +
                                    '<img class="days-time" src="images/time.png" draggable="false">' +
                                    '<h3>' + vehicle.days + " " + localesData["Day-HTML"] + '</h3>' +
                                    '</div>';
                
                                $("." + vehicle.model + ".vehicle .border").after(vehicleDaysHtml);
                            }
                        }
                    }
                }
            });
            if ($(".vehicles-contain").find("div").length <= 0) {
                $(".not-vehicles-contain").show();
            }
        }
    }

    function UpdateSelected(categoryName) {
        if (myRentalsPage) {
            $(".vehicles-contain").empty();
            if (categoryName !== "all-cars") {
                database.vehicles.forEach(function(vehicle) {
                    var vehicleInfos = vehicles[vehicle.model];
                    if (vehicleInfos) {
                        var category = rentforvehicles[vehicle.category];
                        if (category) {
                            if (categoryName === vehicle.category) {
                                var vehicleObject = category.vehicles.find(function(item) {
                                    return item.model === vehicle.model;
                                });
                                if (vehicleObject) {
                                    if (vehicle.index === currentIndex) {
                                        var vehicleHtml =
                                        '<div class="' + vehicle.model + ' vehicle">' +
                                        '<img class="vehicle-image" src="images/vehicles/' + vehicle.model + '.png" draggable="false">' +
                                        '<h1>' + vehicleInfos.title.toUpperCase() + '</h1>' +
                                        '<h2>' + vehicle.category.toUpperCase() + '</h2>' +
                                        '<img class="colors" src="images/color.png" draggable="false">' +
                                        '<div class="border"></div>' +
                                        '<div class="select" data-price="' + vehicleObject.price + '" data-category="' + vehicle.category + '">' +
                                        '<strong>' + localesData["Select-HTML"] + '</strong>' +
                                        '</div>' +
                                        '</div>';
                    
                                        $(".vehicles-contain").append(vehicleHtml);
                                    
                                        var vehicleDaysHtml =
                                            '<div class="vehicle-days-contain">' +
                                            '<img class="days-image" src="images/days.png" draggable="false">' +
                                            '<img class="days-time" src="images/time.png" draggable="false">' +
                                            '<h3>' + vehicle.days + " " + localesData["Day-HTML"] + '</h3>' +
                                            '</div>';
                        
                                        $("." + vehicle.model + ".vehicle .border").after(vehicleDaysHtml);
                                    }
                                }
                            }
                        }
                    }
                });
            } else {
                database.vehicles.forEach(function(vehicle) {
                    if (vehicle.index === currentIndex) {
                        var vehicleInfos = vehicles[vehicle.model];
                        if (vehicleInfos) {
                            var category = rentforvehicles[vehicle.category];
                            if (category) {
                                var vehicleObject = category.vehicles.find(function(item) {
                                    return item.model === vehicle.model;
                                });
                                if (vehicleObject) {
                                    var vehicleHtml =
                                        '<div class="' + vehicle.model + ' vehicle">' +
                                        '<img class="vehicle-image" src="images/vehicles/' + vehicle.model + '.png" draggable="false">' +
                                        '<h1>' + vehicleInfos.title.toUpperCase() + '</h1>' +
                                        '<h2>' + vehicle.category.toUpperCase() + '</h2>' +
                                        '<img class="colors" src="images/color.png" draggable="false">' +
                                        '<div class="border"></div>' +
                                        '<div class="select" data-price="' + vehicleObject.price + '" data-category="' + vehicle.category + '">' +
                                        '<strong>' + localesData["Select-HTML"] + '</strong>' +
                                        '</div>' +
                                        '</div>';
                    
                                    $(".vehicles-contain").append(vehicleHtml);
                                    
                                    var vehicleDaysHtml =
                                        '<div class="vehicle-days-contain">' +
                                        '<img class="days-image" src="images/days.png" draggable="false">' +
                                        '<img class="days-time" src="images/time.png" draggable="false">' +
                                        '<h3>' + vehicle.days + " " + localesData["Day-HTML"] + '</h3>' +
                                        '</div>';
                    
                                    $("." + vehicle.model + ".vehicle .border").after(vehicleDaysHtml);
                                }
                            }
                        }
                    }
                });
            }
        } else {
            $(".vehicles-contain").empty();
            if (categoryName !== "all-cars") {
                var category = rentforvehicles[categoryName];
                category.vehicles.forEach(function(vehicleObject) {
                    var vehicle = vehicles[vehicleObject.model];
                    if (vehicle) {
                        var isFavorite = (database && database.favorites && database.favorites[vehicleObject.model]);
                        var vectorImage = (isFavorite) ? "vector_.png" : "vector.png";
                        var vehicleHtml = '<div class="' + vehicleObject.model + ' vehicle"';
                        if (isFavorite) {
                            vehicleHtml += ' data-favorite="' + isFavorite + '"';
                        }
                        vehicleHtml += '>' +
                            '<img class="vehicle-image" src="images/vehicles/' + vehicleObject.model + '.png" draggable="false">' +
                            '<h1>' + vehicle.title.toUpperCase() + '</h1>' +
                            '<h2>' + vehicle.category.toUpperCase() + '</h2>' +
                            '<img class="colors" src="images/colors.png" draggable="false">' +
                            '<div class="border"></div>' +
                            '<img class="vector" src="images/' + vectorImage + '" draggable="false">' +
                            '<div class="select" data-price="' + vehicleObject.price + '" data-category="' + categoryName + '">' +
                            '<strong>' + localesData["Select-HTML"] + '</strong>' +
                            '</div>' +
                            '</div>';

                        $(".vehicles-contain").append(vehicleHtml);
                        $(".vehicles-contain .vehicle").each(function() {
                            var isFavorite = $(this).data('favorite');
                            if (isFavorite) {
                                $(this).addClass('favorite');
                            }
                        });
                    }
                });
                $(".vehicle.favorite").prependTo(".vehicles-contain");
            } else {
                $(".vehicles-contain").empty();
                vehiclerentals.forEach(function(rental, index) {
                    if (index + 1 === currentIndex) {
                        rental.categories.forEach(function(categoryName) {
                            if (rentforvehicles[categoryName]) {
                                var category = rentforvehicles[categoryName];
                                category.vehicles.forEach(function(vehicleObject) {
                                    var vehicle = vehicles[vehicleObject.model];
                                    if (vehicle) {
                                        var isFavorite = (database && database.favorites && database.favorites[vehicleObject.model]);
                                        var vectorImage = (isFavorite) ? "vector_.png" : "vector.png";
                                        var vehicleHtml = '<div class="' + vehicleObject.model + ' vehicle"';
                                        if (isFavorite) {
                                            vehicleHtml += ' data-favorite="' + isFavorite + '"';
                                        }
                                        vehicleHtml += '>' +
                                            '<img class="vehicle-image" src="images/vehicles/' + vehicleObject.model + '.png" draggable="false">' +
                                            '<h1>' + vehicle.title.toUpperCase() + '</h1>' +
                                            '<h2>' + vehicle.category.toUpperCase() + '</h2>' +
                                            '<img class="colors" src="images/colors.png" draggable="false">' +
                                            '<div class="border"></div>' +
                                            '<img class="vector" src="images/' + vectorImage + '" draggable="false">' +
                                            '<div class="select" data-price="' + vehicleObject.price + '" data-category="' + categoryName + '">' +
                                            '<strong>' + localesData["Select-HTML"] + '</strong>' +
                                            '</div>' +
                                            '</div>';
                                    
                                        $(".vehicles-contain").append(vehicleHtml);
                                        $(".vehicles-contain .vehicle").each(function() {
                                            var isFavorite = $(this).data('favorite');
                                            if (isFavorite) {
                                                $(this).addClass('favorite');
                                            }
                                        });
                                    }
                                });
                            }
                        });
                    }
                });
                $(".vehicle.favorite").prependTo(".vehicles-contain");
            }
        }
    }

    function Close() {
        $(".background-contain").css("animation", "slideRight 0.5s forwards");
        $('.background-contain').one('animationend', function() {
            if (myRentalsPage) {
                myRentalsPage = false;
                OPRentalsPage()
                SelectedSaw()
            }
            $(".main").hide();
        });
        $.post("https://Jakrino_Vehicle_Rental/Close");
    }

    function ResetPriceTable() {
        selected = false
        selectedDay = minrentday
        $('.middle-contain h4').text(selectedDay + " " + localesData["Days-HTML"]);
        $('.payment-infos h1').text(localesData["NotSelected-HTML"]);
        if (myRentalsPage) {
            $('.payment-infos h2').text(selectedDay + " " + localesData["Days-HTML"] + " " + localesData["Expand-HTML"]);
        } else {
            $('.payment-infos h2').text(selectedDay + " " + localesData["Days-HTML"] + " " + localesData["Rental-HTML"]);
        }
        $('.payment-infos a').text('$0');
        $('.payment-infos h4').text('-$0');
        $('.payment-infos h5').text('-$0');
    }

    function SelectedSaw() {
        $('.my-rentals').hover(
            function() {
                $(this).css('border', '0.1094vw solid #DC143C');
                $(this).find('img').attr('src', 'images/opened-rentals.png');
                $(this).find('.my-rental-cars-title').css('color', 'white');
            },
            function() {
                $(this).css('border', '.1094vw solid #363636');
                $(this).find('img').attr('src', 'images/rentals.png');
                $(this).find('.my-rental-cars-title').css('color', '#898989');
            }
        );
    }

    function OPRentalsPage(bool) {
        if (bool) {
            ResetPriceTable()
            $('.my-rentals').css('border', '0.1094vw solid #DC143C');
            $('.my-rentals img').attr('src', 'images/opened-rentals.png');
            $('.my-rentals .my-rental-cars-title').css('color', 'white');
            $(".exit-esc-contain").css("display", "none");
            $(".return-esc-contain").css("display", "flex");
            $('.rent-time-contain strong').text(localesData["RentTitleExpand-HTML"]);
            myRentalsPage = true
            $('.my-rentals').hover( function() {}, function() {} );
        } else {
            myRentalsPage = false;
            $('.my-rentals').css('border', '0.1094vw solid #363636');
            $('.my-rentals img').attr('src', 'images/rentals.png');
            $('.my-rentals .my-rental-cars-title').css('color', '#898989');
            Update(currentIndex);
            ResetPriceTable();
            $(".return-esc-contain").css("display", "none");
            $(".exit-esc-contain").css("display", "flex");
            $('.rent-time-contain strong').text(localesData["RentTitle-HTML"]);
            $.post("https://Jakrino_Vehicle_Rental/Return");
        }
        if (myRentalsPage) {
            $('.payment-infos h2').text(selectedDay + " " + localesData["Days-HTML"] + " " + localesData["Expand-HTML"]);
        } else {
            $('.payment-infos h2').text(selectedDay + " " + localesData["Days-HTML"] + " " + localesData["Rental-HTML"]);
        }
    }

    $('#input').on('keyup', function() {
        var searchText = $(this).val().toLowerCase();
        $('.vehicle').each(function() {
            var text = $(this).find('h1').text().toLowerCase();
            if (text.indexOf(searchText) !== -1) {
                $(this).show();
            } else {
                $(this).hide();
            }
        });
    });

    $(document).on('click', '.left-arrow', function() {
        if (selected) {
            if (selectedDay - 1 >= minrentday) {
                selectedDay = selectedDay - 1

                var price = orjinalPrice * selectedDay
                $('.payment-infos h4').text('-$' + price);
        
                var discountedPrice = price * (taxes / 100);
                $('.payment-infos h5').text('-$' + discountedPrice);
                var allprice = price + discountedPrice
                $('.payment-infos a').text('$' + allprice);
    
                selectedPrice = price
                selectedTax = discountedPrice
                selectedAllPrice = allprice
                if (myRentalsPage) {
                    $('.payment-infos h2').text(selectedDay + " " + localesData["Days-HTML"] + " " + localesData["Expand-HTML"]);
                } else {
                    $('.payment-infos h2').text(selectedDay + " " + localesData["Days-HTML"] + " " + localesData["Rental-HTML"]);
                }
                $('.middle-contain h4').text(selectedDay + " " + localesData["Days-HTML"]);
            }
        }
    });

    $(document).on('click', '.right-arrow', function() {
        if (selected) {
            if (selectedDay + 1 <= maxrentday) {
                selectedDay = selectedDay + 1

                var price = orjinalPrice * selectedDay
                $('.payment-infos h4').text('-$' + price);
        
                var discountedPrice = price * (taxes / 100);
                $('.payment-infos h5').text('-$' + discountedPrice);
                var allprice = price + discountedPrice
                $('.payment-infos a').text('$' + allprice);
    
                selectedPrice = price
                selectedTax = discountedPrice
                selectedAllPrice = allprice
                if (myRentalsPage) {
                    $('.payment-infos h2').text(selectedDay + " " + localesData["Days-HTML"] + " " + localesData["Expand-HTML"]);
                } else {
                    $('.payment-infos h2').text(selectedDay + " " + localesData["Days-HTML"] + " " + localesData["Rental-HTML"]);
                }
                $('.middle-contain h4').text(selectedDay + " " + localesData["Days-HTML"]);
            }
        }
    });

    $(document).on('click', '.exit', function() {
        Close();
    });

    $(document).on('click', '.return', function() {
        OPRentalsPage()
        SelectedSaw()
    });

    $(document).on('click', '.vector', function() {
        var $vehicle = $(this).closest('.vehicle');
        var isFavorite = $vehicle.data('favorite');
    
        isFavorite = !isFavorite;
    
        if (isFavorite) {
            var $image = $(this);
            $image.attr('src', "images/vector_.png");
            $vehicle.addClass('favorite');
        } else {
            var $image = $(this);
            $image.attr('src', "images/vector.png");
            $vehicle.removeClass('favorite');
        }
    
        $vehicle.data('favorite', isFavorite);
        var firstClassName = $vehicle.attr('class').split(' ')[0];
        $.post("https://Jakrino_Vehicle_Rental/AddFavorite", JSON.stringify({
            model: firstClassName,
            isFavorite: isFavorite
        }), function() {});
        
        $(".vehicle.favorite").prependTo(".vehicles-contain");
    });

    $(document).on('click', '.cates', function() {
        ResetPriceTable()
        var className = $(this).attr('class').split(' ')[0];
        $('.categorys div').removeClass('active deactive');
        $('.' + className).addClass('active');
        $('.categorys div').not('.' + className).addClass('deactive');
        $('.' + className).removeClass('deactive');
        UpdateSelected(className);
        $.post("https://Jakrino_Vehicle_Rental/ChangedCategory");
    });

    $(document).on('click', '.select', function() {
        last = $(this)
        selected = true
        selectedDay = minrentday
        $('.middle-contain h4').text(selectedDay + " " + localesData["Days-HTML"]);
        if (myRentalsPage) {
            $('.payment-infos h2').text(selectedDay + " " + localesData["Days-HTML"] + " " + localesData["Expand-HTML"]);
        } else {
            $('.payment-infos h2').text(selectedDay + " " + localesData["Days-HTML"] + " " + localesData["Rental-HTML"]);
        }
        orjinalPrice = $(this).data('price');

        var className = $(this).attr('class').split(' ')[0];
        $('.vehicle').removeClass('selected notselected');
        $(this).closest('.vehicle').addClass('selected');
        $('.vehicle').not('.' + className).addClass('notselected');
        $(this).closest('.vehicle').removeClass('notselected');
        var $closestVehicle = $(this).closest('.vehicle');
        var firstClassName = $closestVehicle.attr('class').split(' ')[0];

        $('.select').html("<strong>" + localesData["Select-HTML"] + "</strong>");
        $(this).html("<strong>" + localesData["Selected-HTML"] + "</strong>");
        
        $('.payment-infos h1').text(vehicles[firstClassName].title);
        var price = orjinalPrice * selectedDay
        $('.payment-infos h4').text('-$' + price);

        var discountedPrice = price * (taxes / 100);
        $('.payment-infos h5').text('-$' + discountedPrice);
        var allprice = price + discountedPrice
        $('.payment-infos a').text('$' + allprice);
    
        selectedModel = firstClassName
        selectedPrice = price
        selectedTax = discountedPrice
        selectedAllPrice = allprice
        selectedCategory = $(this).data('category');

        $.post("https://Jakrino_Vehicle_Rental/Select", JSON.stringify({
            model: firstClassName,
            index: currentIndex
        }), function() {});
    });

    $(document).on('click', '.payment-type-bank', function() {
        if (selected) {
            if (myRentalsPage) {
                $.post("https://Jakrino_Vehicle_Rental/Expand", JSON.stringify({
                    model: selectedModel,
                    price: selectedPrice,
                    tax: selectedTax,
                    allprice: selectedAllPrice,
                    category: selectedCategory,
                    index: currentIndex,
                    days: selectedDay,
                    type: "bank"
                }), function() {});
                Close()
            } else {
                $.post("https://Jakrino_Vehicle_Rental/Buy", JSON.stringify({
                    model: selectedModel,
                    price: selectedPrice,
                    tax: selectedTax,
                    allprice: selectedAllPrice,
                    category: selectedCategory,
                    index: currentIndex,
                    days: selectedDay,
                    type: "bank"
                }), function() {});
                Close()
            }
        }
    });

    $(document).on('click', '.payment-type-cash', function() {
        if (selected) {
            if (myRentalsPage) {
                $.post("https://Jakrino_Vehicle_Rental/Expand", JSON.stringify({
                    model: selectedModel,
                    price: selectedPrice,
                    tax: selectedTax,
                    allprice: selectedAllPrice,
                    category: selectedCategory,
                    index: currentIndex,
                    days: selectedDay,
                    type: "cash"
                }), function() {});
                Close()
            } else {
                $.post("https://Jakrino_Vehicle_Rental/Buy", JSON.stringify({
                    model: selectedModel,
                    price: selectedPrice,
                    tax: selectedTax,
                    allprice: selectedAllPrice,
                    category: selectedCategory,
                    index: currentIndex,
                    days: selectedDay,
                    type: "cash"
                }), function() {});
                Close()
            }
        }
    });

    $(document).on('click', '.my-rentals', function() {
        if (myRentalsPage) {
            OPRentalsPage()
            SelectedSaw()
        } else {
            $.post("https://Jakrino_Vehicle_Rental/MyRentals");
        }
    });

    $(document).on('click', '.spawn-vehicle', function() {
        if (myRentalsPage) {
            if (selected) {
                Close()
                $.post("https://Jakrino_Vehicle_Rental/Close");
                $.post("https://Jakrino_Vehicle_Rental/SpawnVehicle", JSON.stringify({
                    model: selectedModel,
                    index: currentIndex
                }), function() {});
            }
        }
    });

    window.addEventListener('message', function(event) {
        var { type, rentforv, vehicler, allvehicles, tax, index, minrd, maxrd, callback, data, locals } = event.data;
        $(".background-contain").css("animation", "slideLeft 0.5s forwards");
        if (type === 'open') {
            currentIndex = index;
            $(".main").show();
            Update(index);
            ResetPriceTable();
        } else if (type === 'close') {
            Close();
        } else if (type === 'update') {
            if (callback) {
                database = callback;
            }
            minrentday = minrd;
            maxrentday = maxrd;
            selectedDay = minrd;
            rentforvehicles = rentforv;
            vehicles = allvehicles;
            vehiclerentals = vehicler;
            taxes = tax;
            localesData = locals;
            $(".search-by-name input").attr("placeholder", locals["Search-HTML"]);
            $(".my-rental-cars-title").html(locals["MyRentalsTitle-HTML"]);
            $(".my-rental-cars-desc").html(locals["MyRentalsDesc-HTML"]);
            $(".spawn-vehicle h1").html(locals["SpawnTitle-HTML"]);
            $(".spawn-vehicle h2").html(locals["SpawnDesc-HTML"]);
            $(".payment-infos strong").html(locals["Payment-HTML"]);
            $(".payment-infos h3").html(locals["TAX-HTML"]);
            $(".payment-infos h6").html(locals["Total-HTML"]);
            $(".payment-type-bank strong").html(locals["PayBank-HTML"]);
            $(".payment-type-cash strong").html(locals["PayCash-HTML"]);
            $(".rent-time-contain strong").html(locals["RentTitle-HTML"]);
            $(".rent-time-contain h1").html(locals["RentDesc-HTML"]);
            $(".not-have-text").html(locals["NotHave-HTML"]);
        } else if (type === 'openonemore') {
            OPRentalsPage(true)
            database = callback
            Update(database, true)
            $('.my-rentals').off('mouseenter mouseleave');
        } else if (type === 'updatedata') {
            database = data;
        }
    });

    document.addEventListener('keydown', function(event) {
        if (event.key === 'Escape') {
            if (myRentalsPage) {
                myRentalsPage = false;
                OPRentalsPage()
                SelectedSaw()
            } else {
                Close();
            }
        }
    });

    $(".vehicle.favorite").prependTo(".vehicles-contain");
});
