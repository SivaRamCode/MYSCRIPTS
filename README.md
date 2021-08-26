#:pushpin: Credits goes to everyone involved in this project :thumbsup:#

# MYSCRIPTS
script / AutoScript to install on vps :heart_eyes:

My Todo List And Future Updates
- [:heavy_check_mark:] OpenVPN Install Script
- [:heavy_check_mark:] CentOS 7 Basic Script
- [:heavy_check_mark:] :hearts:CentOS 7 OPENVPN 1000+ User Licence Script:hearts:
- [:heavy_check_mark:] Squid 3 Simple Config >> allow only own ip (Good for vpn)
- [:x:] Squid3 Install Script
- [:x:] Squid3 Install Script
- [:x:] Stunne4 Install Script
- [:x:] Wrap All Together!


For from and edited OpenVPN road warrior installer for Ubuntu, Debian, CentOS and Fedora.

This script will let you set up your own VPN server in no more than a minute, even if you haven't used OpenVPN before. It has been designed to be as unobtrusive and universal as possible.
Installation

Run the script and follow the assistant:

#**OPENVPN INSTALL**#

<code>wget https://git.io/JEBcT -O openvpn-install.sh && bash openvpn-install.sh</code>

:cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone:

#**Squid squid3.5 INSTALL**# :heavy_multiplication_x:Not working at moment. fixing! :heavy_multiplication_x:

<code>wget https://git.io/JEBrP -O Squid3-install.sh && bash Squid3-install.sh</code>

:cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone:

#**CENTOS 7 Basic INSTALL**# << Not Include Openvpn :sweat_drops:

#App List#
Squid
Stunnel
.....

#Additional#
Iftop
Htop
Fail2ban
ddos deflate
....

##NOTE : CHANGE SSH SQUID PORTS IN SCRIPT AS NEEDED##

<code>yum -y update && yum -y install wget && wget https://git.io/JERmn && chmod +x centos7 && ./centos7 && rm -f centos7 && history -c </code>

:cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone:

#**CENTOS 7 OPENVPN INSTALL**# :point_right: ***OpenVPN Server With 1000+ User License*** :point_left:

<code>yum install wget</code>

<code>wget https://raw.githubusercontent.com/SivaRamCode/MYSCRIPTS/main/CENTOS/openvpn.sh && sed -i -e 's/\r$//' openvpn.sh && chmod 755 openvpn.sh && ./openvpn.sh</code>

:cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone::cyclone:

***Squid 3 Simple Config- CENTOS 7***
<code>wget https://raw.githubusercontent.com/SivaRamCode/MYSCRIPTS/main/CENTOS/squidsimple.sh && chmod +x squidsimple.sh && ./squidsimple.sh</code>


###Donations###

If you want to show your appreciation, you can donate via <a href="https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&amp;hosted_button_id=VBAYDL34Z7J6L" rel="nofollow">PayPal</a> or cryptocurrency. Thanks!

![This is an image](https://myoctocat.com/assets/images/base-octocat.svg)
  
<code>
  <div id="smart-button-container">
    <div style="text-align: center"><label for="description">donation </label><input type="text" name="descriptionInput" id="description" maxlength="127" value=""></div>
      <p id="descriptionError" style="visibility: hidden; color:red; text-align: center;">Please enter a description</p>
    <div style="text-align: center"><label for="amount">donation </label><input name="amountInput" type="number" id="amount" value="" ><span> USD</span></div>
      <p id="priceLabelError" style="visibility: hidden; color:red; text-align: center;">Please enter a price</p>
    <div id="invoiceidDiv" style="text-align: center; display: none;"><label for="invoiceid"> </label><input name="invoiceid" maxlength="127" type="text" id="invoiceid" value="" ></div>
      <p id="invoiceidError" style="visibility: hidden; color:red; text-align: center;">Please enter an Invoice ID</p>
    <div style="text-align: center; margin-top: 0.625rem;" id="paypal-button-container"></div>
  </div>
  <script src="https://www.paypal.com/sdk/js?client-id=sb&enable-funding=venmo&currency=USD" data-sdk-integration-source="button-factory"></script>
  <script>
  function initPayPalButton() {
    var description = document.querySelector('#smart-button-container #description');
    var amount = document.querySelector('#smart-button-container #amount');
    var descriptionError = document.querySelector('#smart-button-container #descriptionError');
    var priceError = document.querySelector('#smart-button-container #priceLabelError');
    var invoiceid = document.querySelector('#smart-button-container #invoiceid');
    var invoiceidError = document.querySelector('#smart-button-container #invoiceidError');
    var invoiceidDiv = document.querySelector('#smart-button-container #invoiceidDiv');

    var elArr = [description, amount];

    if (invoiceidDiv.firstChild.innerHTML.length > 1) {
      invoiceidDiv.style.display = "block";
    }

    var purchase_units = [];
    purchase_units[0] = {};
    purchase_units[0].amount = {};

    function validate(event) {
      return event.value.length > 0;
    }

    paypal.Buttons({
      style: {
        color: 'blue',
        shape: 'rect',
        label: 'paypal',
        layout: 'vertical',
        
      },

      onInit: function (data, actions) {
        actions.disable();

        if(invoiceidDiv.style.display === "block") {
          elArr.push(invoiceid);
        }

        elArr.forEach(function (item) {
          item.addEventListener('keyup', function (event) {
            var result = elArr.every(validate);
            if (result) {
              actions.enable();
            } else {
              actions.disable();
            }
          });
        });
      },

      onClick: function () {
        if (description.value.length < 1) {
          descriptionError.style.visibility = "visible";
        } else {
          descriptionError.style.visibility = "hidden";
        }

        if (amount.value.length < 1) {
          priceError.style.visibility = "visible";
        } else {
          priceError.style.visibility = "hidden";
        }

        if (invoiceid.value.length < 1 && invoiceidDiv.style.display === "block") {
          invoiceidError.style.visibility = "visible";
        } else {
          invoiceidError.style.visibility = "hidden";
        }

        purchase_units[0].description = description.value;
        purchase_units[0].amount.value = amount.value;

        if(invoiceid.value !== '') {
          purchase_units[0].invoice_id = invoiceid.value;
        }
      },

      createOrder: function (data, actions) {
        return actions.order.create({
          purchase_units: purchase_units,
        });
      },

      onApprove: function (data, actions) {
        return actions.order.capture().then(function (orderData) {

          // Full available details
          console.log('Capture result', orderData, JSON.stringify(orderData, null, 2));

          // Show a success message within this page, e.g.
          const element = document.getElementById('paypal-button-container');
          element.innerHTML = '';
          element.innerHTML = '<h3>Thank you for your payment!</h3>';

          // Or go to another URL:  actions.redirect('thank_you.html');
          
        });
      },

      onError: function (err) {
        console.log(err);
      }
    }).render('#paypal-button-container');
  }
  initPayPalButton();
  </script>
    </code>
