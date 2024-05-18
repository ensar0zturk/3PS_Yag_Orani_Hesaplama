<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="yagorani.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link rel="stylesheet" type="text/css" href="StyleSheet1.css">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div id="social">
        <a href="index.html"><font>3PS |<span>Threes Power Studios</span></font></a>
        
    </div>
    <div id="container">
        <!-- BİLGİLENDİRME KISMI-->  
       <main> <h1>VÜCUT YAĞ ORANI NASIL HESAPLANIR?</h1>
        <h3>Ölçüm yaparken dikkat etmeniz gerekenler:</h3>
        <ul>
            <li>Boyun: adem elması etrafından</li>
            <li>Bel: en ince yerinden</li>
            <li>Kalça (Yalnızca kadınlar için): en geniş yerinden</li>
            <li>kendinizi kasmadan, rahat şekilde ölçmelisiniz.</li>
        </ul>
        <h3>HESAPLAMAYA BAŞLA !</h3>
        <table  >
            <!-- CİNSİYET SEÇİMİ KISMI -->  
            <tr><td><asp:DropDownList ID="drp_cinsiyet" runat="server" Height="60px" Width="250px" AutoPostBack="True" OnSelectedIndexChanged="drp_cinsiyet_SelectedIndexChanged">
                <asp:ListItem Text="-----CİNSİYETİNİZİ----------SEÇİNİZ-----" Value="0"></asp:ListItem>
                <asp:ListItem Text="Erkek" Value="1"></asp:ListItem>
                <asp:ListItem Text="Kadın" Value="2"></asp:ListItem>
                    </asp:DropDownList></td></tr>
           <!-- ERKEK KISMI-->  
            <ens_erkek id="erkek_paneli" runat="server" visible="false">
                <tr><td><asp:TextBox ID="txt_erkek_boy" runat="server" placeholder="Boyunuz (örn 176cm)" Width="250px" Height="60px"></asp:TextBox></td></tr>
                <tr><td><asp:TextBox ID="txt_erkek_boyun" runat="server" placeholder="Boyun Çevresi (örn. 37cm)" Width="250px" Height="60px"></asp:TextBox></td></tr>
                <tr><td><asp:TextBox ID="txt_erkek_bel" runat="server" placeholder="Bel Çevresi (örn. 88cm)" Width="250px" Height="60px"></asp:TextBox></td></tr>
                <tr><td><asp:Button ID="btn_erkek" runat="server" Text="HESAPLA" Width="250px" Height="60px" OnClick="btn_erkek_Click"/></td></tr>
                <tr><td><asp:TextBox ID="lbl_erkek_sonuc" runat="server" placeholder="Yağ Oranınız" Width="250px" Height="60px" Enabled="False"></asp:TextBox></td></tr>
            </ens_erkek>
           <!-- KADIN KISMI-->  
            <ens_kadin id="kadin_paneli" runat="server" visible="false">
                <tr><td><asp:TextBox ID="txt_kadin_boy" runat="server" placeholder="Boyunuz (örn 176cm)" Width="250px" Height="60px"></asp:TextBox></td></tr>
                <tr><td><asp:TextBox ID="txt_kadin_boyun" runat="server" placeholder="Boyun Çevresi (örn. 37cm)" Width="250px" Height="60px"></asp:TextBox></td></tr>
                <tr><td><asp:TextBox ID="txt_kadin_bel" runat="server" placeholder="Bel Çevresi (örn. 88cm)" Width="250px" Height="60px"></asp:TextBox></td></tr>
                 <tr><td><asp:TextBox ID="txt_kadin_kalca" runat="server" placeholder="Kalça Çevresi (örn. 98cm)" Width="250px" Height="60px"></asp:TextBox></td></tr>
                <tr><td><asp:Button ID="btn_kadin" runat="server" Text="HESAPLA" Width="250px" Height="60px" OnClick="btn_kadin_Click"/></td></tr>
                <tr><td><asp:TextBox ID="lbl_kadin_sonuc" runat="server" placeholder="Yağ Oranınız" Width="250px" Height="60px" Enabled="False"></asp:TextBox></td></tr>
            </ens_kadin>
 </table>
            <table cellpadding="15" border="1">
                <tr>
                    <td colspan="2">VÜCUT YAĞ ORANI TABLOSU</td>
                    <td>ERKEK</td>
                    <td>KADIN</td>
                </tr>
                <tr>
                    <td colspan="2">Yaşam için esansiyel</td>
                    <td>%2-5</td>
                    <td>%10-13</td>
                </tr>
                <tr>
                    <td colspan="2">Sporcu</td>
                    <td>%6-13</td>
                    <td>%14-20</td>
                </tr>
                <tr>
                    <td colspan="2">Fit</td>
                    <td>%14-17</td>
                    <td>%21-24</td>
                </tr>
                <tr>
                    <td colspan="2">Ortalama</td>
                    <td>%18-24</td>
                    <td>%25-31</td>
                </tr>
                <tr>
                    <td colspan="2">Çok yağlı veya obez</td>
                    <td>%25+</td>
                    <td>%32+</td>
                </tr>
            </table>
           </main>


        <footer><center>Tüm hakları saklıdır. &copy; | 2024</center></footer>
    </div>
    </form>
</body>
</html>
