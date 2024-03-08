/* When the user clicks on the button,
toggle between hiding and showing the dropdown content */
function doDropMenu()
{
    document.getElementById("filterDropdownMenu").classList.toggle("showFilters");
    document.getElementById("Up Arrow").classList.toggle("rotateArrow");
    document.getElementById("filters").classList.toggle("activatedFilters");
    document.getElementById("filters").classList.toggle("activatedFilters:hover");
}

//Make query with type of item
//fkType = type of item
function GetSelected(fkType)
{

    //Create an Array.
    var selected = new Array();

    try{
        //Reference the Table.
        var tblFilters = document.getElementById("tblFilters");

        //Reference all the CheckBoxes in Table.
        var chks = tblFilters.getElementsByTagName("input");

        console.log(document.cookie);

        // Loop and push the checked CheckBox value in Array.
        for (var i = 0; i < chks.length; i++) {
            if (chks[i].checked) {
                selected.push(chks[i].value);
            }
        }
        //Display the selected CheckBox values.
if (selected.length > 0) {
    var filter = "";
    var nbItems = 0
    var item = "";
    for (item of selected){
        if (nbItems == 0) {
            filter += " AND (fkMarque=" + item;
        }else{
            filter += " OR fkMarque=" + item;
        }
        nbItems++;
    }
    filter += ")"
    $query = "SELECT idArticle, artBrand, artModel, artPrice, artDescription, artImage, fkType, fkMarque FROM t_articles WHERE (fkType=" + fkType + ")" + filter;
    document.cookie = "query=" + $query;
        }else{
            //Make count query
            $nbArticles = "SELECT count(*) from t_articles WHERE fkType=" + fkType;

            document.cookie = "query=" + $query;
        }

    }catch(error){
        //Default query
        console.log("No Table filters");
        $query = "SELECT idArticle, artBrand, artModel, artPrice, artDescription, artImage, fkType, fkMarque FROM t_articles WHERE (fkType=" + fkType + ")";
        document.cookie = "query=" + $query;
    }
    location.reload();
    console.log(document.cookie);
}

