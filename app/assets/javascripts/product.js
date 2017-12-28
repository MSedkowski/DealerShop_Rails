// function addProductField() {
//
//     //create Date object
//     var date = new Date();
//
//     //get number of milliseconds since midnight Jan 1, 1970
//     //and use it for address key
//     var mSec = date.getTime();
//
//     //Replace 0 with milliseconds
//     idAttributProduct =
//         "supply_supplies_warehouses_attributes_0_warehouse_id".replace("0", mSec);
//     nameAttributProduct =
//         "supply[supplies_warehouses_attributes][0][warehouse_id]".replace("0", mSec);
//
//     idAttributAmount =
//         "supply_supplies_warehouses_attributes_0_amount".replace("0", mSec);
//     nameAttributAmount =
//         "supply[supplies_warehouses_attributes][0][amount]".replace("0", mSec);
//
//     //create <li> tag
//     var li = document.createElement("li");
//
//     //create label for Kind, set it's for attribute,
//     //and append it to <li> element
//     var labelProduct = document.createElement("label");
//     labelProduct.setAttribute("for", idAttributProduct);
//     var productLabelText = document.createTextNode("Wybierz product");
//     labelProduct.appendChild(productLabelText);
//     li.appendChild(labelProduct);
//
//     //create input for Kind, set it's type, id and name attribute,
//     //and append it to <li> element
//     var inputProduct = document.getElementsByName(nameAttributProduct);
//     inputProduct.setAttribute("id", idAttributProduct);
//     inputProduct.setAttribute("name", nameAttributProduct);
//     inputProduct.setAttribute("class", "initialized");
//     li.append(inputProduct);
//
//     //create label for Street, set it's for attribute,
//     //and append it to <li> element
//     var labelAmount = document.createElement("label");
//     labelAmount.setAttribute("for", idAttributAmount);
//     var amountLabelText = document.createTextNode("Ilość");
//     labelAmount.appendChild(amountLabelText);
//     li.appendChild(labelAmount);
//
//     //create input for Street, set it's type, id and name attribute,
//     //and append it to <li> element
//     var inputAmount = document.createElement("INPUT");
//     inputAmount.setAttribute("type", "text");
//     inputAmount.setAttribute("id", idAttributAmount);
//     inputAmount.setAttribute("name", nameAttributAmount);
//     li.appendChild(inputAmount);
//
//     //add created <li> element with its child elements
//     //(label and input) to myList (<ul>) element
//     document.getElementById("productList").appendChild(li);
//
//     //show address header
//     $("#addressHeader").show();
// }
//
