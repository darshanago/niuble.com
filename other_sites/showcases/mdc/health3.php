<?php include './header.php';?>
    
            <div id="page_title">
                <div class="layout clearfix">
                    <h1 class="center marginTop10 marginBottom10">Finden Sie den besten Anlagevorschlag fur Ihr Profil</h1>
                </div>
            <?php include './sec_navigation.php';?>
            </div>

        <!-- Content Begin -->
        <div id="contentLayout" class="separator">
            <div id="healthlayout" class="layout clearfix fulllayout">
                <div>
                    <span class="b_mdc_note textBody">Bitte erganzen Sie die Angaben zu Ihrem Portfolio!</span>
                </div>
                <div class="clearfix">
                        <table cellpadding="0" cellspacing="0" class="table">
                            <thead>
                                <td class="name">Security/Name</td>
                                <td class="valor">Valor</td>
                                <td class="position">Position</td>
                                <td class="letzter">Letzter Preis</td>
                                <td class="wahrung">Wahrung</td>
                                <td class="wert">Wert in CHF</td>
                                <td class="operator noborder"></td>
                            </thead>
                            <tr>
                                <td class="name"><input type="text" class="accepted" value="DEUTSCHE BANK N"/></td>
                                <td class="valor"><input type="text" class="accepted" value="514000"/></td>
                                <td class="position"><input type="text" value="4500"/></td>
                                <td class="letzter">21,50</td>
                                <td class="wahrung">EUR</td>
                                <td class="wert">96750,00</td>
                                <td class="operator noborder">
                                    <input class="iconButton confirm" type="button"/>
                                    <input class="iconButton cancel" type="button"/>
                                    <input class="iconButton rearrange" type="button"/>
                                    <input class="iconButton remove" type="button"/>
                                </td>
                            </tr>
                            <tr class="editor waiting">
                                <td class="name"><input type="text" class="checkable" value="Name, Valor, ISIN"/></td>
                                <td class="valor"><input type="text" class="checkable" value="Valor"/></td>
                                <td class="position"><input type="text" value="Anzahl"/></td>
                                <td class="letzter">0,00</td>
                                <td class="wahrung">-</td>
                                <td class="wert">0,00</td>
                                <td class="operator noborder">
                                    <input class="iconButton confirm" type="button"/>
                                    <input class="iconButton cancel" type="button"/>
                                    <input class="iconButton rearrange" type="button"/>
                                    <input class="iconButton remove" type="button"/>
                                </td>
                            </tr>
                            <tr class="editor waiting">
                                <td class="name"><input type="text" class="checkable" value="Name, Valor, ISIN"/></td>
                                <td class="valor"><input type="text" class="checkable" value="Valor"/></td>
                                <td class="position"><input type="text" value="Anzahl"/></td>
                                <td class="letzter">0,00</td>
                                <td class="wahrung">-</td>
                                <td class="wert">0,00</td>
                                <td class="operator noborder">
                                    <input class="iconButton confirm" type="button"/>
                                    <input class="iconButton cancel" type="button"/>
                                    <input class="iconButton rearrange" type="button"/>
                                    <input class="iconButton remove" type="button"/>
                                </td>
                            </tr>
                            <tr class="editor waiting">
                                <td class="name"><input type="text" class="checkable" value="Name, Valor, ISIN"/></td>
                                <td class="valor"><input type="text" class="checkable" value="Valor"/></td>
                                <td class="position"><input type="text" value="Anzahl"/></td>
                                <td class="letzter">0,00</td>
                                <td class="wahrung">-</td>
                                <td class="wert">0,00</td>
                                <td class="operator noborder">
                                    <input class="iconButton confirm" type="button"/>
                                    <input class="iconButton cancel" type="button"/>
                                    <input class="iconButton rearrange" type="button"/>
                                    <input class="iconButton remove" type="button"/>
                                </td>
                            </tr>
                            <tr class="editor waiting">
                                <td class="name"><input type="text" class="checkable" value="Name, Valor, ISIN"/></td>
                                <td class="valor"><input type="text" class="checkable" value="Valor"/></td>
                                <td class="position"><input type="text" value="Anzahl"/></td>
                                <td class="letzter">0,00</td>
                                <td class="wahrung">-</td>
                                <td class="wert">0,00</td>
                                <td class="operator noborder">
                                    <input class="iconButton confirm" type="button"/>
                                    <input class="iconButton cancel" type="button"/>
                                    <input class="iconButton rearrange" type="button"/>
                                    <input class="iconButton remove" type="button"/>
                                </td>
                            </tr>
                            <tr>
                                <td class="name">HSBC HOLDINGS PLC (HSBA.L)</td>
                                <td class="valor">540528</td>
                                <td class="position">600</td>
                                <td class="letzter">492,55</td>
                                <td class="wahrung">EUR</td>
                                <td class="wert">295,530,00</td>
                                <td class="operator noborder">
                                    <input class="iconButton edit" type="button"/>
                                </td>
                            </tr>
                            <tr class="noborder">
                                <td class="notice noborder"><a href="#">Fur eine neue Zeile bitte hier klicken</a></td>
                                <td class="operator noborder">
                                    <input class="iconButton editall" type="button"/>
                                </td>
                            </tr>
                        </table>
                </div>
            </div>
        </div>

        <div id="crumb">
            <div class="layout">
                Home / <span class="active">Portfolio Health Check</span>
            </div>
        </div>
<?php include './footer.php';?>
