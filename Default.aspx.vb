Imports System.Net
Imports System.IO
Imports Newtonsoft.Json
Imports Newtonsoft.Json.Linq
Imports System.Web.Script.Serialization
Imports System.Text
Imports System.Data



Partial Class _Default

    Inherits System.Web.UI.Page
    Dim poruthams_bride As Double
    Dim poruthams_groom As Double

    Dim la_posn_bride As Integer
    Dim cha_posn_bride As Integer
    Dim shu_posn_bride As Integer
    Dim ku_posn_bride As Integer
    Dim shi_posn_bride As Integer
    Dim ra_posn_bride As Integer
    Dim sa_posn_bride As Integer
    Dim ma_posn_bride As Integer
    Dim maa_posn_bride As Integer
    Dim bu_posn_bride As Integer
    Dim gu_posn_bride As Integer

    Dim la_posn_groom As Integer
    Dim cha_posn_groom As Integer
    Dim shu_posn_groom As Integer
    Dim ku_posn_groom As Integer
    Dim shi_posn_groom As Integer
    Dim ra_posn_groom As Integer
    Dim sa_posn_groom As Integer
    Dim ma_posn_groom As Integer
    Dim maa_posn_groom As Integer
    Dim bu_posn_groom As Integer
    Dim gu_posn_groom As Integer
    Dim la_start_posn_b As Integer
    Dim la_start_posn_g As Integer
    Dim cha_start_posn As Integer
    Dim returnvalue As Double
    ' Dim tob As String = [String].Format("{0}", Request.Form("tob_a"))
    ' Dim tob As String = [String].Format("{0}", Request.QueryString("tob_a"))


    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        If Not IsPostBack Then
            Calendar1.Visible = False
            Calendar2.Visible = False

        End If

    End Sub
    Private Function calculate_papasamyam_bride() As Integer

        poruthams_bride = 0
        returnvalue = 0
        'Dim laposn As Integer
        returnvalue = calcuate_la(la_posn_bride + 6)
        poruthams_bride = poruthams_bride + returnvalue
        returnvalue = calcuate_la(la_posn_bride + 7)
        poruthams_bride = poruthams_bride + returnvalue
        returnvalue = calcuate_cha(cha_posn_bride + 6)
        poruthams_bride = poruthams_bride + returnvalue
        returnvalue = calcuate_cha(cha_posn_bride + 7)
        poruthams_bride = poruthams_bride + returnvalue
        returnvalue = calcuate_shu(shu_posn_bride + 6)
        poruthams_bride = poruthams_bride + returnvalue
        returnvalue = calcuate_shu(shu_posn_bride + 7)
        poruthams_bride = poruthams_bride + returnvalue
        '===============================

        '================================
        If la_posn_bride + 6 = shi_posn_bride Then
            poruthams_bride = poruthams_bride + 1
        End If
        If la_posn_bride + 6 = ra_posn_bride Then
            poruthams_bride = poruthams_bride + 1
        End If
        If la_posn_bride + 6 = sa_posn_bride Then
            poruthams_bride = poruthams_bride + 1
        End If
        If la_posn_bride + 6 = ma_posn_bride Then
            poruthams_bride = poruthams_bride + 1
        End If
        '========================
        If la_posn_bride + 7 = shi_posn_bride Then
            poruthams_bride = poruthams_bride + 1
        End If
        If la_posn_bride + 7 = ra_posn_bride Then
            poruthams_bride = poruthams_bride + 1
        End If
        If la_posn_bride + 7 = sa_posn_bride Then
            poruthams_bride = poruthams_bride + 1
        End If
        If la_posn_bride + 7 = ma_posn_bride Then
            poruthams_bride = poruthams_bride + 1
        End If
        '===============
        '===============CHA


        If cha_posn_bride + 6 = shi_posn_bride Then
            poruthams_bride = poruthams_bride + 0.5
        End If
        If cha_posn_bride + 6 = ra_posn_bride Then
            poruthams_bride = poruthams_bride + 0.5
        End If
        If cha_posn_bride + 6 = sa_posn_bride Then
            poruthams_bride = poruthams_bride + 0.5
        End If
        If cha_posn_bride + 6 = ma_posn_bride Then
            poruthams_bride = poruthams_bride + 0.5
        End If
        '========================
        If cha_posn_bride + 7 = shi_posn_bride Then
            poruthams_bride = poruthams_bride + 0.5
        End If
        If cha_posn_bride + 7 = ra_posn_bride Then
            poruthams_bride = poruthams_bride + 0.5
        End If
        If cha_posn_bride + 7 = sa_posn_bride Then
            poruthams_bride = poruthams_bride + 0.5
        End If
        If cha_posn_bride + 7 = ma_posn_bride Then
            poruthams_bride = poruthams_bride + 0.5
        End If
        '========================
        '========================
        '========================
        '==============================
        If shu_posn_bride + 6 = shi_posn_bride Then
            poruthams_bride = poruthams_bride + 0.25
        End If
        If shu_posn_bride + 6 = ra_posn_bride Then
            poruthams_bride = poruthams_bride + 0.25
        End If
        If shu_posn_bride + 6 = sa_posn_bride Then
            poruthams_bride = poruthams_bride + 0.25
        End If
        If shu_posn_bride + 6 = ma_posn_bride Then
            poruthams_bride = poruthams_bride + 0.25
        End If
        '========================
        If shu_posn_bride + 7 = shi_posn_bride Then
            poruthams_bride = poruthams_bride + 0.25
        End If
        If shu_posn_bride + 7 = ra_posn_bride Then
            poruthams_bride = poruthams_bride + 0.25
        End If
        If shu_posn_bride + 7 = sa_posn_bride Then
            poruthams_bride = poruthams_bride + 0.25
        End If
        If shu_posn_bride + 7 = ma_posn_bride Then
            poruthams_bride = poruthams_bride + 0.25
        End If
        '========================


        Return 0
    End Function
    'Dim laposn As Integer
    Function calcuate_shu(ByVal laposn As Integer) As Integer
        Dim current_porutham As Double
        current_porutham = 0
        If laposn = 13 Then
            If shi_posn_bride = 1 Then
                current_porutham = current_porutham + 0.25
            End If
            If ra_posn_bride = 1 Then
                current_porutham = current_porutham + 0.25
            End If
            If sa_posn_bride = 1 Then
                current_porutham = current_porutham + 0.25
            End If
            If ma_posn_bride = 1 Then
                current_porutham = current_porutham + 0.25
            End If
        End If

        If laposn = 14 Then
            If shi_posn_bride = 2 Then
                current_porutham = current_porutham + 0.25
            End If
            If ra_posn_bride = 2 Then
                current_porutham = current_porutham + 0.25
            End If
            If sa_posn_bride = 2 Then
                current_porutham = current_porutham + 0.25
            End If
            If ma_posn_bride = 2 Then
                current_porutham = current_porutham + 0.25
            End If
        End If
        If laposn = 15 Then
            If shi_posn_bride = 3 Then
                current_porutham = current_porutham + 0.25
            End If
            If ra_posn_bride = 3 Then
                current_porutham = current_porutham + 0.25
            End If
            If sa_posn_bride = 3 Then
                current_porutham = current_porutham + 0.25
            End If
            If ma_posn_bride = 3 Then
                current_porutham = current_porutham + 0.25
            End If
        End If

        If laposn = 16 Then
            If shi_posn_bride = 4 Then
                current_porutham = current_porutham + 0.25
            End If
            If ra_posn_bride = 4 Then
                current_porutham = current_porutham + 0.25
            End If
            If sa_posn_bride = 4 Then
                current_porutham = current_porutham + 0.25
            End If
            If ma_posn_bride = 4 Then
                current_porutham = current_porutham + 0.25
            End If
        End If
        If laposn = 17 Then
            If shi_posn_bride = 5 Then
                current_porutham = current_porutham + 0.25
            End If
            If ra_posn_bride = 5 Then
                current_porutham = current_porutham + 0.25
            End If
            If sa_posn_bride = 5 Then
                current_porutham = current_porutham + 0.25
            End If
            If ma_posn_bride = 5 Then
                current_porutham = current_porutham + 0.25
            End If
        End If
        If laposn = 18 Then
            If shi_posn_bride = 6 Then
                current_porutham = current_porutham + 0.25
            End If
            If ra_posn_bride = 6 Then
                current_porutham = current_porutham + 0.25
            End If
            If sa_posn_bride = 6 Then
                current_porutham = current_porutham + 0.25
            End If
            If ma_posn_bride = 6 Then
                current_porutham = current_porutham + 0.25
            End If
        End If
        If laposn = 19 Then
            If shi_posn_bride = 7 Then
                current_porutham = current_porutham + 0.25
            End If
            If ra_posn_bride = 7 Then
                current_porutham = current_porutham + 0.25
            End If
            If sa_posn_bride = 7 Then
                current_porutham = current_porutham + 0.25
            End If
            If ma_posn_bride = 7 Then
                current_porutham = current_porutham + 0.25
            End If
        End If
        If laposn = 20 Then
            If shi_posn_bride = 8 Then
                current_porutham = current_porutham + 0.25
            End If
            If ra_posn_bride = 8 Then
                current_porutham = current_porutham + 0.25
            End If
            If sa_posn_bride = 8 Then
                current_porutham = current_porutham + 0.25
            End If
            If ma_posn_bride = 8 Then
                current_porutham = current_porutham + 0.25
            End If
        End If



        Return current_porutham

    End Function
    Function calcuate_cha(ByVal laposn As Integer) As Integer
        Dim current_porutham As Double
        current_porutham = 0
        If laposn = 13 Then
            If shi_posn_bride = 1 Then
                current_porutham = current_porutham + 0.5
            End If
            If ra_posn_bride = 1 Then
                current_porutham = current_porutham + 0.5
            End If
            If sa_posn_bride = 1 Then
                current_porutham = current_porutham + 0.5
            End If
            If ma_posn_bride = 1 Then
                current_porutham = current_porutham + 0.5
            End If
        End If

        If laposn = 14 Then
            If shi_posn_bride = 2 Then
                current_porutham = current_porutham + 0.5
            End If
            If ra_posn_bride = 2 Then
                current_porutham = current_porutham + 0.5
            End If
            If sa_posn_bride = 2 Then
                current_porutham = current_porutham + 0.5
            End If
            If ma_posn_bride = 2 Then
                current_porutham = current_porutham + 0.5
            End If
        End If
        If laposn = 15 Then
            If shi_posn_bride = 3 Then
                current_porutham = current_porutham + 0.5
            End If
            If ra_posn_bride = 3 Then
                current_porutham = current_porutham + 0.5
            End If
            If sa_posn_bride = 3 Then
                current_porutham = current_porutham + 0.5
            End If
            If ma_posn_bride = 3 Then
                current_porutham = current_porutham + 0.5
            End If
        End If

        If laposn = 16 Then
            If shi_posn_bride = 4 Then
                current_porutham = current_porutham + 0.5
            End If
            If ra_posn_bride = 4 Then
                current_porutham = current_porutham + 0.5
            End If
            If sa_posn_bride = 4 Then
                current_porutham = current_porutham + 0.5
            End If
            If ma_posn_bride = 4 Then
                current_porutham = current_porutham + 0.5
            End If
        End If
        If laposn = 17 Then
            If shi_posn_bride = 5 Then
                current_porutham = current_porutham + 0.5
            End If
            If ra_posn_bride = 5 Then
                current_porutham = current_porutham + 0.5
            End If
            If sa_posn_bride = 5 Then
                current_porutham = current_porutham + 0.5
            End If
            If ma_posn_bride = 5 Then
                current_porutham = current_porutham + 0.5
            End If
        End If
        If laposn = 18 Then
            If shi_posn_bride = 6 Then
                current_porutham = current_porutham + 0.5
            End If
            If ra_posn_bride = 6 Then
                current_porutham = current_porutham + 0.5
            End If
            If sa_posn_bride = 6 Then
                current_porutham = current_porutham + 0.5
            End If
            If ma_posn_bride = 6 Then
                current_porutham = current_porutham + 0.5
            End If
        End If
        If laposn = 19 Then
            If shi_posn_bride = 7 Then
                current_porutham = current_porutham + 0.5
            End If
            If ra_posn_bride = 7 Then
                current_porutham = current_porutham + 0.5
            End If
            If sa_posn_bride = 7 Then
                current_porutham = current_porutham + 0.5
            End If
            If ma_posn_bride = 7 Then
                current_porutham = current_porutham + 0.5
            End If
        End If
        If laposn = 20 Then
            If shi_posn_bride = 8 Then
                current_porutham = current_porutham + 0.5
            End If
            If ra_posn_bride = 8 Then
                current_porutham = current_porutham + 0.5
            End If
            If sa_posn_bride = 8 Then
                current_porutham = current_porutham + 0.5
            End If
            If ma_posn_bride = 8 Then
                current_porutham = current_porutham + 0.5
            End If
        End If



        Return current_porutham

    End Function
    Function calcuate_la(ByVal laposn As Integer) As Integer
        'laposn = la_posn_bride + 6
        Dim current_porutham As Double
        current_porutham = 0
        If laposn = 13 Then
            If shi_posn_bride = 1 Then
                current_porutham = current_porutham + 1
            End If
            If ra_posn_bride = 1 Then
                current_porutham = current_porutham + 1
            End If
            If sa_posn_bride = 1 Then
                current_porutham = current_porutham + 1
            End If
            If ma_posn_bride = 1 Then
                current_porutham = current_porutham + 1
            End If
        End If

        If laposn = 14 Then
            If shi_posn_bride = 2 Then
                current_porutham = current_porutham + 1
            End If
            If ra_posn_bride = 2 Then
                current_porutham = current_porutham + 1
            End If
            If sa_posn_bride = 2 Then
                current_porutham = current_porutham + 1
            End If
            If ma_posn_bride = 2 Then
                current_porutham = current_porutham + 1
            End If
        End If
        If laposn = 15 Then
            If shi_posn_bride = 3 Then
                current_porutham = current_porutham + 1
            End If
            If ra_posn_bride = 3 Then
                current_porutham = current_porutham + 1
            End If
            If sa_posn_bride = 3 Then
                current_porutham = current_porutham + 1
            End If
            If ma_posn_bride = 3 Then
                current_porutham = current_porutham + 1
            End If
        End If

        If laposn = 16 Then
            If shi_posn_bride = 4 Then
                current_porutham = current_porutham + 1
            End If
            If ra_posn_bride = 4 Then
                current_porutham = current_porutham + 1
            End If
            If sa_posn_bride = 4 Then
                current_porutham = current_porutham + 1
            End If
            If ma_posn_bride = 4 Then
                current_porutham = current_porutham + 1
            End If
        End If
        If laposn = 17 Then
            If shi_posn_bride = 5 Then
                current_porutham = current_porutham + 1
            End If
            If ra_posn_bride = 5 Then
                current_porutham = current_porutham + 1
            End If
            If sa_posn_bride = 5 Then
                current_porutham = current_porutham + 1
            End If
            If ma_posn_bride = 5 Then
                current_porutham = current_porutham + 1
            End If
        End If
        If laposn = 18 Then
            If shi_posn_bride = 6 Then
                current_porutham = current_porutham + 1
            End If
            If ra_posn_bride = 6 Then
                current_porutham = current_porutham + 1
            End If
            If sa_posn_bride = 6 Then
                current_porutham = current_porutham + 1
            End If
            If ma_posn_bride = 6 Then
                current_porutham = current_porutham + 1
            End If
        End If
        If laposn = 19 Then
            If shi_posn_bride = 7 Then
                current_porutham = current_porutham + 1
            End If
            If ra_posn_bride = 7 Then
                current_porutham = current_porutham + 1
            End If
            If sa_posn_bride = 7 Then
                current_porutham = current_porutham + 1
            End If
            If ma_posn_bride = 7 Then
                current_porutham = current_porutham + 1
            End If
        End If
        If laposn = 20 Then
            If shi_posn_bride = 8 Then
                current_porutham = current_porutham + 1
            End If
            If ra_posn_bride = 8 Then
                current_porutham = current_porutham + 1
            End If
            If sa_posn_bride = 8 Then
                current_porutham = current_porutham + 1
            End If
            If ma_posn_bride = 8 Then
                current_porutham = current_porutham + 1
            End If
        End If

        Return current_porutham

    End Function
    '==================================-------------
    Function calcuate_cha_g(ByVal laposn As Integer) As Integer
        Dim current_porutham As Double
        current_porutham = 0
        If laposn = 13 Then
            If shi_posn_groom = 1 Then
                current_porutham = current_porutham + 0.5
            End If
            If ra_posn_groom = 1 Then
                current_porutham = current_porutham + 0.5
            End If
            If sa_posn_groom = 1 Then
                current_porutham = current_porutham + 0.5
            End If
            If ma_posn_groom = 1 Then
                current_porutham = current_porutham + 0.5
            End If
        End If

        If laposn = 14 Then
            If shi_posn_groom = 2 Then
                current_porutham = current_porutham + 0.5
            End If
            If ra_posn_groom = 2 Then
                current_porutham = current_porutham + 0.5
            End If
            If sa_posn_groom = 2 Then
                current_porutham = current_porutham + 0.5
            End If
            If ma_posn_groom = 2 Then
                current_porutham = current_porutham + 0.5
            End If
        End If
        If laposn = 15 Then
            If shi_posn_groom = 3 Then
                current_porutham = current_porutham + 0.5
            End If
            If ra_posn_groom = 3 Then
                current_porutham = current_porutham + 0.5
            End If
            If sa_posn_groom = 3 Then
                current_porutham = current_porutham + 0.5
            End If
            If ma_posn_groom = 3 Then
                current_porutham = current_porutham + 0.5
            End If
        End If

        If laposn = 16 Then
            If shi_posn_groom = 4 Then
                current_porutham = current_porutham + 0.5
            End If
            If ra_posn_groom = 4 Then
                current_porutham = current_porutham + 0.5
            End If
            If sa_posn_groom = 4 Then
                current_porutham = current_porutham + 0.5
            End If
            If ma_posn_groom = 4 Then
                current_porutham = current_porutham + 0.5
            End If
        End If
        If laposn = 17 Then
            If shi_posn_groom = 5 Then
                current_porutham = current_porutham + 0.5
            End If
            If ra_posn_groom = 5 Then
                current_porutham = current_porutham + 0.5
            End If
            If sa_posn_groom = 5 Then
                current_porutham = current_porutham + 0.5
            End If
            If ma_posn_groom = 5 Then
                current_porutham = current_porutham + 0.5
            End If
        End If
        If laposn = 18 Then
            If shi_posn_groom = 6 Then
                current_porutham = current_porutham + 0.5
            End If
            If ra_posn_groom = 6 Then
                current_porutham = current_porutham + 0.5
            End If
            If sa_posn_groom = 6 Then
                current_porutham = current_porutham + 0.5
            End If
            If ma_posn_groom = 6 Then
                current_porutham = current_porutham + 0.5
            End If
        End If
        If laposn = 19 Then
            If shi_posn_groom = 7 Then
                current_porutham = current_porutham + 0.5
            End If
            If ra_posn_groom = 7 Then
                current_porutham = current_porutham + 0.5
            End If
            If sa_posn_groom = 7 Then
                current_porutham = current_porutham + 0.5
            End If
            If ma_posn_groom = 7 Then
                current_porutham = current_porutham + 0.5
            End If
        End If
        If laposn = 20 Then
            If shi_posn_groom = 8 Then
                current_porutham = current_porutham + 0.5
            End If
            If ra_posn_groom = 8 Then
                current_porutham = current_porutham + 0.5
            End If
            If sa_posn_groom = 8 Then
                current_porutham = current_porutham + 0.5
            End If
            If ma_posn_groom = 8 Then
                current_porutham = current_porutham + 0.5
            End If
        End If



        Return current_porutham

    End Function
    Function calcuate_la_g(ByVal laposn As Integer) As Integer
        'laposn = la_posn_bride + 6
        Dim current_porutham As Double
        current_porutham = 0
        If laposn = 13 Then
            If shi_posn_groom = 1 Then
                current_porutham = current_porutham + 1
            End If
            If ra_posn_groom = 1 Then
                current_porutham = current_porutham + 1
            End If
            If sa_posn_groom = 1 Then
                current_porutham = current_porutham + 1
            End If
            If ma_posn_groom = 1 Then
                current_porutham = current_porutham + 1
            End If
        End If

        If laposn = 14 Then
            If shi_posn_groom = 2 Then
                current_porutham = current_porutham + 1
            End If
            If ra_posn_groom = 2 Then
                current_porutham = current_porutham + 1
            End If
            If sa_posn_groom = 2 Then
                current_porutham = current_porutham + 1
            End If
            If ma_posn_groom = 2 Then
                current_porutham = current_porutham + 1
            End If
        End If
        If laposn = 15 Then
            If shi_posn_groom = 3 Then
                current_porutham = current_porutham + 1
            End If
            If ra_posn_groom = 3 Then
                current_porutham = current_porutham + 1
            End If
            If sa_posn_groom = 3 Then
                current_porutham = current_porutham + 1
            End If
            If ma_posn_groom = 3 Then
                current_porutham = current_porutham + 1
            End If
        End If

        If laposn = 16 Then
            If shi_posn_groom = 4 Then
                current_porutham = current_porutham + 1
            End If
            If ra_posn_groom = 4 Then
                current_porutham = current_porutham + 1
            End If
            If sa_posn_groom = 4 Then
                current_porutham = current_porutham + 1
            End If
            If ma_posn_groom = 4 Then
                current_porutham = current_porutham + 1
            End If
        End If
        If laposn = 17 Then
            If shi_posn_groom = 5 Then
                current_porutham = current_porutham + 1
            End If
            If ra_posn_groom = 5 Then
                current_porutham = current_porutham + 1
            End If
            If sa_posn_groom = 5 Then
                current_porutham = current_porutham + 1
            End If
            If ma_posn_groom = 5 Then
                current_porutham = current_porutham + 1
            End If
        End If
        If laposn = 18 Then
            If shi_posn_groom = 6 Then
                current_porutham = current_porutham + 1
            End If
            If ra_posn_groom = 6 Then
                current_porutham = current_porutham + 1
            End If
            If sa_posn_groom = 6 Then
                current_porutham = current_porutham + 1
            End If
            If ma_posn_groom = 6 Then
                current_porutham = current_porutham + 1
            End If
        End If
        If laposn = 19 Then
            If shi_posn_groom = 7 Then
                current_porutham = current_porutham + 1
            End If
            If ra_posn_groom = 7 Then
                current_porutham = current_porutham + 1
            End If
            If sa_posn_groom = 7 Then
                current_porutham = current_porutham + 1
            End If
            If ma_posn_groom = 7 Then
                current_porutham = current_porutham + 1
            End If
        End If
        If laposn = 20 Then
            If shi_posn_groom = 8 Then
                current_porutham = current_porutham + 1
            End If
            If ra_posn_groom = 8 Then
                current_porutham = current_porutham + 1
            End If
            If sa_posn_groom = 8 Then
                current_porutham = current_porutham + 1
            End If
            If ma_posn_groom = 8 Then
                current_porutham = current_porutham + 1
            End If
        End If

        Return current_porutham

    End Function
    '===================================-------------
    Private Function calculate_papasamyam_groom() As Integer

        poruthams_groom = 0

        returnvalue = calcuate_la_g(la_posn_groom + 6)
        poruthams_groom = poruthams_groom + returnvalue

        returnvalue = calcuate_cha_g(cha_posn_groom + 6)
        poruthams_groom = poruthams_groom + returnvalue



        If la_posn_groom + 6 = shi_posn_groom Then
            poruthams_groom = poruthams_groom + 1
        End If
        If la_posn_groom + 6 = ra_posn_groom Then
            poruthams_groom = poruthams_groom + 1
        End If
        If la_posn_groom + 6 = sa_posn_groom Then
            poruthams_groom = poruthams_groom + 1
        End If
        If la_posn_groom + 6 = ma_posn_groom Then
            poruthams_groom = poruthams_groom + 1
        End If
        '========

        If cha_posn_groom + 6 = shi_posn_groom Then
            poruthams_groom = poruthams_groom + 0.5
        End If
        If cha_posn_groom + 6 = ra_posn_groom Then
            poruthams_groom = poruthams_groom + 0.5
        End If
        If cha_posn_groom + 6 = sa_posn_groom Then
            poruthams_groom = poruthams_groom + 0.5
        End If
        If cha_posn_groom + 6 = ma_posn_groom Then
            poruthams_groom = poruthams_groom + 0.5
        End If

        Return 0
    End Function
    Dim chovva_bride As String
    Dim chovva_groom As String
    Dim shudda_bride As String
    Dim shudda_groom As String
    Function chovva_bride_ifyes(ByVal posncheck As Integer) As Integer

        If posncheck = 13 Then
            If ku_posn_bride = 1 Then
                chovva_bride = "YES"
            End If
        End If
        If posncheck = 14 Then
            If ku_posn_bride = 2 Then
                chovva_bride = "YES"
            End If
        End If
        If posncheck = 15 Then
            If ku_posn_bride = 3 Then
                chovva_bride = "YES"
            End If
        End If
        If posncheck = 16 Then
            If ku_posn_bride = 4 Then
                chovva_bride = "YES"
            End If
        End If
        If posncheck = 17 Then
            If ku_posn_bride = 5 Then
                chovva_bride = "YES"
            End If
        End If
        If posncheck = 18 Then
            If ku_posn_bride = 6 Then
                chovva_bride = "YES"
            End If
        End If
        If posncheck = 19 Then
            If ku_posn_bride = 7 Then
                chovva_bride = "YES"
            End If
        End If

        Return 0
    End Function
    Private Function calculate_chovva_bride() As Integer

        chovva_bride_ifyes(la_posn_bride + 6)
        chovva_bride_ifyes(la_posn_bride + 7)
        chovva_bride_ifyes(cha_posn_bride + 6)
        chovva_bride_ifyes(cha_posn_bride + 7)


        If la_posn_bride + 6 = ku_posn_bride Then
            chovva_bride = "YES"
        End If
        If la_posn_bride + 7 = ku_posn_bride Then
            chovva_bride = "YES"
        End If
        If cha_posn_bride + 6 = ku_posn_bride Then
            chovva_bride = "YES"
        End If
        If cha_posn_bride + 7 = ku_posn_bride Then
            chovva_bride = "YES"
        End If
        Return 0
    End Function
    Function chovva_groom_ifyes(ByVal posncheck As Integer) As Integer

        If posncheck = 13 Then
            If ku_posn_groom = 1 Then
                chovva_groom = "YES"
            End If
        End If
        If posncheck = 14 Then
            If ku_posn_groom = 2 Then
                chovva_groom = "YES"
            End If
        End If
        If posncheck = 15 Then
            If ku_posn_groom = 3 Then
                chovva_groom = "YES"
            End If
        End If
        If posncheck = 16 Then
            If ku_posn_groom = 4 Then
                chovva_groom = "YES"
            End If
        End If
        If posncheck = 17 Then
            If ku_posn_groom = 5 Then
                chovva_groom = "YES"
            End If
        End If
        If posncheck = 18 Then
            If ku_posn_groom = 6 Then
                chovva_groom = "YES"
            End If
        End If
        If posncheck = 19 Then
            If ku_posn_groom = 7 Then
                chovva_groom = "YES"
            End If
        End If

        Return 0
    End Function
    Private Function calculate_chovva_groom() As Integer
        chovva_groom_ifyes(la_posn_groom + 6)
        chovva_groom_ifyes(cha_posn_groom + 6)
        If la_posn_groom + 6 = ku_posn_groom Then
            chovva_groom = "YES"
        End If
        If cha_posn_groom + 6 = ku_posn_groom Then
            chovva_groom = "YES"
        End If
        Return 0
    End Function
    Function shudda_calcuate_cha_g(ByVal laposn As Integer) As Integer

        If laposn = 13 Then
            If ku_posn_groom = 1 Then
                shudda_groom = "NO"
            End If
            If ma_posn_groom = 1 Then
                shudda_groom = "NO"
            End If
            If shi_posn_groom = 1 Then
                shudda_groom = "NO"
            End If
            If sa_posn_groom = 1 Then
                shudda_groom = "NO"
            End If
            If ra_posn_groom = 1 Then
                shudda_groom = "NO"
            End If
        End If
        If laposn = 14 Then
            If ku_posn_groom = 2 Then
                shudda_groom = "NO"
            End If
            If ma_posn_groom = 2 Then
                shudda_groom = "NO"
            End If
            If shi_posn_groom = 2 Then
                shudda_groom = "NO"
            End If
            If sa_posn_groom = 2 Then
                shudda_groom = "NO"
            End If
            If ra_posn_groom = 2 Then
                shudda_groom = "NO"
            End If
        End If
        If laposn = 15 Then
            If ku_posn_groom = 3 Then
                shudda_groom = "NO"
            End If
            If ma_posn_groom = 3 Then
                shudda_groom = "NO"
            End If
            If shi_posn_groom = 3 Then
                shudda_groom = "NO"
            End If
            If sa_posn_groom = 3 Then
                shudda_groom = "NO"
            End If
            If ra_posn_groom = 3 Then
                shudda_groom = "NO"
            End If
        End If
        If laposn = 16 Then
            If ku_posn_groom = 4 Then
                shudda_groom = "NO"
            End If
            If ma_posn_groom = 4 Then
                shudda_groom = "NO"
            End If
            If shi_posn_groom = 4 Then
                shudda_groom = "NO"
            End If
            If sa_posn_groom = 4 Then
                shudda_groom = "NO"
            End If
            If ra_posn_groom = 4 Then
                shudda_groom = "NO"
            End If
        End If
        If laposn = 17 Then
            If ku_posn_groom = 5 Then
                shudda_groom = "NO"
            End If
            If ma_posn_groom = 5 Then
                shudda_groom = "NO"
            End If
            If shi_posn_groom = 5 Then
                shudda_groom = "NO"
            End If
            If sa_posn_groom = 5 Then
                shudda_groom = "NO"
            End If
            If ra_posn_groom = 5 Then
                shudda_groom = "NO"
            End If
        End If
        If laposn = 18 Then
            If ku_posn_groom = 6 Then
                shudda_groom = "NO"
            End If
            If ma_posn_groom = 6 Then
                shudda_groom = "NO"
            End If
            If shi_posn_groom = 6 Then
                shudda_groom = "NO"
            End If
            If sa_posn_groom = 6 Then
                shudda_groom = "NO"
            End If
            If ra_posn_groom = 6 Then
                shudda_groom = "NO"
            End If
        End If
        If laposn = 19 Then
            If ku_posn_groom = 7 Then
                shudda_groom = "NO"
            End If
            If ma_posn_groom = 7 Then
                shudda_groom = "NO"
            End If
            If shi_posn_groom = 7 Then
                shudda_groom = "NO"
            End If
            If sa_posn_groom = 7 Then
                shudda_groom = "NO"
            End If
            If ra_posn_groom = 7 Then
                shudda_groom = "NO"
            End If
        End If
        If laposn = 20 Then
            If ku_posn_groom = 8 Then
                shudda_groom = "NO"
            End If
            If ma_posn_groom = 8 Then
                shudda_groom = "NO"
            End If
            If shi_posn_groom = 8 Then
                shudda_groom = "NO"
            End If
            If sa_posn_groom = 8 Then
                shudda_groom = "NO"
            End If
            If ra_posn_groom = 8 Then
                shudda_groom = "NO"
            End If
        End If



        Return 0

    End Function
    Function shudda_calcuate_la_g(ByVal laposn As Integer) As Integer
        'laposn = la_posn_bride + 6


        If laposn = 13 Then
            If ku_posn_groom = 1 Then
                shudda_groom = "NO"
            End If
            If ma_posn_groom = 1 Then
                shudda_groom = "NO"
            End If
            If shi_posn_groom = 1 Then
                shudda_groom = "NO"
            End If
            If sa_posn_groom = 1 Then
                shudda_groom = "NO"
            End If
            If ra_posn_groom = 1 Then
                shudda_groom = "NO"
            End If

        End If

        If laposn = 14 Then
            If ku_posn_groom = 2 Then
                shudda_groom = "NO"
            End If
            If ma_posn_groom = 2 Then
                shudda_groom = "NO"
            End If
            If shi_posn_groom = 2 Then
                shudda_groom = "NO"
            End If
            If sa_posn_groom = 2 Then
                shudda_groom = "NO"
            End If
            If ra_posn_groom = 2 Then
                shudda_groom = "NO"
            End If
        End If
        If laposn = 15 Then
            If ku_posn_groom = 3 Then
                shudda_groom = "NO"
            End If
            If ma_posn_groom = 3 Then
                shudda_groom = "NO"
            End If
            If shi_posn_groom = 3 Then
                shudda_groom = "NO"
            End If
            If sa_posn_groom = 3 Then
                shudda_groom = "NO"
            End If
            If ra_posn_groom = 3 Then
                shudda_groom = "NO"
            End If
        End If

        If laposn = 16 Then
            If ku_posn_groom = 4 Then
                shudda_groom = "NO"
            End If
            If ma_posn_groom = 4 Then
                shudda_groom = "NO"
            End If
            If shi_posn_groom = 4 Then
                shudda_groom = "NO"
            End If
            If sa_posn_groom = 4 Then
                shudda_groom = "NO"
            End If
            If ra_posn_groom = 4 Then
                shudda_groom = "NO"
            End If
        End If
        If laposn = 17 Then
            If ku_posn_groom = 5 Then
                shudda_groom = "NO"
            End If
            If ma_posn_groom = 5 Then
                shudda_groom = "NO"
            End If
            If shi_posn_groom = 5 Then
                shudda_groom = "NO"
            End If
            If sa_posn_groom = 5 Then
                shudda_groom = "NO"
            End If
            If ra_posn_groom = 5 Then
                shudda_groom = "NO"
            End If
        End If
        If laposn = 18 Then
            If ku_posn_groom = 6 Then
                shudda_groom = "NO"
            End If
            If ma_posn_groom = 6 Then
                shudda_groom = "NO"
            End If
            If shi_posn_groom = 6 Then
                shudda_groom = "NO"
            End If
            If sa_posn_groom = 6 Then
                shudda_groom = "NO"
            End If
            If ra_posn_groom = 6 Then
                shudda_groom = "NO"
            End If
        End If
        If laposn = 19 Then
            If ku_posn_groom = 7 Then
                shudda_groom = "NO"
            End If
            If ma_posn_groom = 7 Then
                shudda_groom = "NO"
            End If
            If shi_posn_groom = 7 Then
                shudda_groom = "NO"
            End If
            If sa_posn_groom = 7 Then
                shudda_groom = "NO"
            End If
            If ra_posn_groom = 7 Then
                shudda_groom = "NO"
            End If
        End If
        If laposn = 20 Then
            If ku_posn_groom = 8 Then
                shudda_groom = "NO"
            End If
            If ma_posn_groom = 8 Then
                shudda_groom = "NO"
            End If
            If shi_posn_groom = 8 Then
                shudda_groom = "NO"
            End If
            If sa_posn_groom = 8 Then
                shudda_groom = "NO"
            End If
            If ra_posn_groom = 8 Then
                shudda_groom = "NO"
            End If
        End If

        Return 0

    End Function
    Function shudda_calcuate_cha(ByVal laposn As Integer) As Integer

        If laposn = 13 Then
            If ku_posn_bride = 1 Then
                shudda_bride = "NO"
            End If
            If ma_posn_bride = 1 Then
                shudda_bride = "NO"
            End If
            If shi_posn_bride = 1 Then
                shudda_bride = "NO"
            End If
            If sa_posn_bride = 1 Then
                shudda_bride = "NO"
            End If
            If ra_posn_bride = 1 Then
                shudda_bride = "NO"
            End If
        End If
        If laposn = 14 Then
            If ku_posn_bride = 2 Then
                shudda_bride = "NO"
            End If
            If ma_posn_bride = 2 Then
                shudda_bride = "NO"
            End If
            If shi_posn_bride = 2 Then
                shudda_bride = "NO"
            End If
            If sa_posn_bride = 2 Then
                shudda_bride = "NO"
            End If
            If ra_posn_bride = 2 Then
                shudda_bride = "NO"
            End If
        End If
        If laposn = 15 Then
            If ku_posn_bride = 3 Then
                shudda_bride = "NO"
            End If
            If ma_posn_bride = 3 Then
                shudda_bride = "NO"
            End If
            If shi_posn_bride = 3 Then
                shudda_bride = "NO"
            End If
            If sa_posn_bride = 3 Then
                shudda_bride = "NO"
            End If
            If ra_posn_bride = 3 Then
                shudda_bride = "NO"
            End If
        End If
        If laposn = 16 Then
            If ku_posn_bride = 4 Then
                shudda_bride = "NO"
            End If
            If ma_posn_bride = 4 Then
                shudda_bride = "NO"
            End If
            If shi_posn_bride = 4 Then
                shudda_bride = "NO"
            End If
            If sa_posn_bride = 4 Then
                shudda_bride = "NO"
            End If
            If ra_posn_bride = 4 Then
                shudda_bride = "NO"
            End If
        End If
        If laposn = 17 Then
            If ku_posn_bride = 5 Then
                shudda_bride = "NO"
            End If
            If ma_posn_bride = 5 Then
                shudda_bride = "NO"
            End If
            If shi_posn_bride = 5 Then
                shudda_bride = "NO"
            End If
            If sa_posn_bride = 5 Then
                shudda_bride = "NO"
            End If
            If ra_posn_bride = 5 Then
                shudda_bride = "NO"
            End If
        End If
        If laposn = 18 Then
            If ku_posn_bride = 6 Then
                shudda_bride = "NO"
            End If
            If ma_posn_bride = 6 Then
                shudda_bride = "NO"
            End If
            If shi_posn_bride = 6 Then
                shudda_bride = "NO"
            End If
            If sa_posn_bride = 6 Then
                shudda_bride = "NO"
            End If
            If ra_posn_bride = 6 Then
                shudda_bride = "NO"
            End If
        End If
        If laposn = 19 Then
            If ku_posn_bride = 7 Then
                shudda_bride = "NO"
            End If
            If ma_posn_bride = 7 Then
                shudda_bride = "NO"
            End If
            If shi_posn_bride = 7 Then
                shudda_bride = "NO"
            End If
            If sa_posn_bride = 7 Then
                shudda_bride = "NO"
            End If
            If ra_posn_bride = 7 Then
                shudda_bride = "NO"
            End If
        End If
        If laposn = 20 Then
            If ku_posn_bride = 8 Then
                shudda_bride = "NO"
            End If
            If ma_posn_bride = 8 Then
                shudda_bride = "NO"
            End If
            If shi_posn_bride = 8 Then
                shudda_bride = "NO"
            End If
            If sa_posn_bride = 8 Then
                shudda_bride = "NO"
            End If
            If ra_posn_bride = 8 Then
                shudda_bride = "NO"
            End If
        End If



        Return 0

    End Function
    Function shudda_calcuate_la(ByVal laposn As Integer) As Integer
        'laposn = la_posn_bride + 6


        If laposn = 13 Then
            If ku_posn_bride = 1 Then
                shudda_bride = "NO"
            End If
            If ma_posn_bride = 1 Then
                shudda_bride = "NO"
            End If
            If shi_posn_bride = 1 Then
                shudda_bride = "NO"
            End If
            If sa_posn_bride = 1 Then
                shudda_bride = "NO"
            End If
            If ra_posn_bride = 1 Then
                shudda_bride = "NO"
            End If
        End If

        If laposn = 14 Then
            If ku_posn_bride = 2 Then
                shudda_bride = "NO"
            End If
            If ma_posn_bride = 2 Then
                shudda_bride = "NO"
            End If
            If shi_posn_bride = 2 Then
                shudda_bride = "NO"
            End If
            If sa_posn_bride = 2 Then
                shudda_bride = "NO"
            End If
            If ra_posn_bride = 2 Then
                shudda_bride = "NO"
            End If
        End If
        If laposn = 15 Then
            If ku_posn_bride = 3 Then
                shudda_bride = "NO"
            End If
            If ma_posn_bride = 3 Then
                shudda_bride = "NO"
            End If
            If shi_posn_bride = 3 Then
                shudda_bride = "NO"
            End If
            If sa_posn_bride = 3 Then
                shudda_bride = "NO"
            End If
            If ra_posn_bride = 3 Then
                shudda_bride = "NO"
            End If
        End If

        If laposn = 16 Then
            If ku_posn_bride = 4 Then
                shudda_bride = "NO"
            End If
            If ma_posn_bride = 4 Then
                shudda_bride = "NO"
            End If
            If shi_posn_bride = 4 Then
                shudda_bride = "NO"
            End If
            If sa_posn_bride = 4 Then
                shudda_bride = "NO"
            End If
            If ra_posn_bride = 4 Then
                shudda_bride = "NO"
            End If
        End If
        If laposn = 17 Then
            If ku_posn_bride = 5 Then
                shudda_bride = "NO"
            End If
            If ma_posn_bride = 5 Then
                shudda_bride = "NO"
            End If
            If shi_posn_bride = 5 Then
                shudda_bride = "NO"
            End If
            If sa_posn_bride = 5 Then
                shudda_bride = "NO"
            End If
            If ra_posn_bride = 5 Then
                shudda_bride = "NO"
            End If
        End If
        If laposn = 18 Then
            If ku_posn_bride = 6 Then
                shudda_bride = "NO"
            End If
            If ma_posn_bride = 6 Then
                shudda_bride = "NO"
            End If
            If shi_posn_bride = 6 Then
                shudda_bride = "NO"
            End If
            If sa_posn_bride = 6 Then
                shudda_bride = "NO"
            End If
            If ra_posn_bride = 6 Then
                shudda_bride = "NO"
            End If
        End If
        If laposn = 19 Then
            If ku_posn_bride = 7 Then
                shudda_bride = "NO"
            End If
            If ma_posn_bride = 7 Then
                shudda_bride = "NO"
            End If
            If shi_posn_bride = 7 Then
                shudda_bride = "NO"
            End If
            If sa_posn_bride = 7 Then
                shudda_bride = "NO"
            End If
            If ra_posn_bride = 7 Then
                shudda_bride = "NO"
            End If
        End If
        If laposn = 20 Then
            If ku_posn_bride = 8 Then
                shudda_bride = "NO"
            End If
            If ma_posn_bride = 8 Then
                shudda_bride = "NO"
            End If
            If shi_posn_bride = 8 Then
                shudda_bride = "NO"
            End If
            If sa_posn_bride = 8 Then
                shudda_bride = "NO"
            End If
            If ra_posn_bride = 8 Then
                shudda_bride = "NO"
            End If
        End If

        Return 0

    End Function
    Private Function calculate_shuddha_bride() As Integer

        '+++++++++++++++++++++++++++++++++++++++++++++++
        returnvalue = shudda_calcuate_la(la_posn_bride + 6)

        returnvalue = shudda_calcuate_la(la_posn_bride + 7)
        returnvalue = shudda_calcuate_cha(cha_posn_bride + 6)
        returnvalue = shudda_calcuate_cha(cha_posn_bride + 7)
        '+++++++++++++++++++++++++++++++++++++++++++++++

        If la_posn_bride + 6 = ku_posn_bride Then
            shudda_bride = "NO"
        End If
        If la_posn_bride + 6 = shi_posn_bride Then
            shudda_bride = "NO"
        End If
        If la_posn_bride + 6 = ma_posn_bride Then
            shudda_bride = "NO"
        End If
        If la_posn_bride + 6 = sa_posn_bride Then
            shudda_bride = "NO"
        End If
        If la_posn_bride + 6 = ra_posn_bride Then
            shudda_bride = "NO"
        End If
        '========================
        If la_posn_bride + 7 = ku_posn_bride Then
            shudda_bride = "NO"
        End If
        If la_posn_bride + 7 = shi_posn_bride Then
            shudda_bride = "NO"
        End If
        If la_posn_bride + 7 = ma_posn_bride Then
            shudda_bride = "NO"
        End If
        If la_posn_bride + 7 = sa_posn_bride Then
            shudda_bride = "NO"
        End If
        If la_posn_bride + 7 = ra_posn_bride Then
            shudda_bride = "NO"
        End If
        '========================
        '==============================
        If cha_posn_bride + 6 = ku_posn_bride Then
            shudda_bride = "NO"
        End If
        If cha_posn_bride + 6 = shi_posn_bride Then
            shudda_bride = "NO"
        End If
        If cha_posn_bride + 6 = ma_posn_bride Then
            shudda_bride = "NO"
        End If
        If cha_posn_bride + 6 = sa_posn_bride Then
            shudda_bride = "NO"
        End If
        If cha_posn_bride + 6 = ra_posn_bride Then
            shudda_bride = "NO"
        End If
        '========================
        If cha_posn_bride + 7 = ku_posn_bride Then
            shudda_bride = "NO"
        End If
        If cha_posn_bride + 7 = shi_posn_bride Then
            shudda_bride = "NO"
        End If
        If cha_posn_bride + 7 = ma_posn_bride Then
            shudda_bride = "NO"
        End If
        If cha_posn_bride + 7 = sa_posn_bride Then
            shudda_bride = "NO"
        End If
        If cha_posn_bride + 7 = ra_posn_bride Then
            shudda_bride = "NO"
        End If
        '========================


        Return 0
    End Function
    Private Function calculate_shuddha_groom() As Integer

        '+++++++++++++++++++++++++++++++++++++++++++++++
        returnvalue = shudda_calcuate_la_g(la_posn_groom + 6)
        returnvalue = shudda_calcuate_cha_g(cha_posn_groom + 6)

        '+++++++++++++++++++++++++++++++++++++++++++++++

        If la_posn_groom + 6 = ku_posn_groom Then
            shudda_groom = "NO"
        End If
        If la_posn_groom + 6 = shi_posn_groom Then
            shudda_groom = "NO"
        End If
        If la_posn_groom + 6 = ma_posn_groom Then
            shudda_groom = "NO"
        End If
        If la_posn_groom + 6 = sa_posn_groom Then
            shudda_groom = "NO"
        End If
        If la_posn_groom + 6 = ra_posn_groom Then
            shudda_groom = "NO"
        End If

        '==============================
        If cha_posn_groom + 6 = ku_posn_groom Then
            shudda_bride = "NO"
        End If
        If cha_posn_groom + 6 = shi_posn_groom Then
            shudda_bride = "NO"
        End If
        If cha_posn_groom + 6 = ma_posn_groom Then
            shudda_bride = "NO"
        End If
        If cha_posn_groom + 6 = sa_posn_groom Then
            shudda_bride = "NO"
        End If
        If cha_posn_groom + 6 = ra_posn_groom Then
            shudda_bride = "NO"
        End If
        '========================


        Return 0
    End Function

    Private Function Display_results() As Integer
        Label25.Text = poruthams_bride
        Label26.Text = poruthams_groom
        Label32.Text = "No Match"
        If chovva_bride = "" Then
            chovva_bride = "NO"
        End If
        If chovva_groom = "" Then
            chovva_groom = "NO"
        End If
        If poruthams_bride > 0 Then
            shudda_bride = "NO"
        End If
        If poruthams_groom > 0 Then
            shudda_groom = "NO"
        End If
        Label27.Text = chovva_bride
        Label28.Text = chovva_groom
        Label29.Text = shudda_bride
        Label30.Text = shudda_groom

        If chovva_bride = chovva_groom Then
            If shudda_bride = shudda_groom Then
                If poruthams_bride = poruthams_groom Then
                    Label32.Text = "Match"
                End If
                If poruthams_bride < poruthams_groom Then
                    Label32.Text = "Match"
                End If
            End If
        End If


        Return 0

    End Function

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click






        Dim getbride As String
        Dim getgroom As String
        getbride = getporuthampositions(TextBox2.Text, TextBox3.Text, DropDownList1.SelectedValue, tbllat1.Text, tbllong1.Text, 0)
        getgroom = getporuthampositions(TextBox1.Text, TextBox10.Text, DropDownList2.SelectedValue, TextBox6.Text, TextBox8.Text, 1)

        Dim bridearray() As String
        Dim groomarray() As String

        bridearray = getbride.Split(",")
        groomarray = getgroom.Split(",")

        la_posn_bride = CInt(bridearray(0))
        cha_posn_bride = CInt(bridearray(1))
        shu_posn_bride = CInt(bridearray(2))
        ku_posn_bride = CInt(bridearray(3))
        shi_posn_bride = CInt(bridearray(4))
        ra_posn_bride = CInt(bridearray(5))
        sa_posn_bride = CInt(bridearray(6))
        ma_posn_bride = CInt(bridearray(7))
        maa_posn_bride = CInt(bridearray(8))
        bu_posn_bride = CInt(bridearray(9))
        gu_posn_bride = CInt(bridearray(10))

        la_posn_groom = CInt(groomarray(0))
        cha_posn_groom = CInt(groomarray(1))
        shu_posn_groom = CInt(groomarray(2))
        ku_posn_groom = CInt(groomarray(3))
        shi_posn_groom = CInt(groomarray(4))
        ra_posn_groom = CInt(groomarray(5))
        sa_posn_groom = CInt(groomarray(6))
        ma_posn_groom = CInt(groomarray(7))
        maa_posn_groom = CInt(groomarray(8))
        bu_posn_groom = CInt(groomarray(9))
        gu_posn_groom = CInt(groomarray(10))




        returnvalue = calculate_papasamyam_bride() 'ok
        returnvalue = calculate_papasamyam_groom() 'ok
        returnvalue = calculate_chovva_bride() 'ok
        returnvalue = calculate_chovva_groom() 'ok
        returnvalue = calculate_shuddha_bride() 'ok
        returnvalue = calculate_shuddha_groom() 'ok
        Display_results()
    End Sub

    Public Function Calculate_Gulikan(ByVal type As Integer) As Integer
        Dim myDate As DateTime
        Dim dayOfWeek As String
        Dim time_birth As String = "0:00"


        If type = 0 Then 'bride
            myDate = Calendar1.SelectedDate
            dayOfWeek = myDate.DayOfWeek.ToString()
            time_birth = "2005-05-05 " + TextBox3.Text
        End If

        If type = 1 Then 'groom
            myDate = Calendar2.SelectedDate
            dayOfWeek = myDate.DayOfWeek.ToString()
            time_birth = "2005-05-05 " + TextBox10.Text
        End If

        


        'TextBox9.Text = dayOfWeek.ToString()



        Dim oDate As DateTime = DateTime.Parse(time_birth)
        'MsgBox(oDate.Hour & " " & oDate.Minute & "  " & oDate.Year)
        Dim time_birth_int As Integer = oDate.Hour


        Dim day_night As String

        Select Case time_birth_int
            Case 6 To 18
                day_night = "Day"

            Case Else
                day_night = "Night"
        End Select

        Dim houseposn As Integer

        Select Case dayOfWeek
            Case "Sunday"
                If day_night = "day" Then
                    houseposn = ((26 * 24) / 60) + 6
                Else
                    houseposn = ((10 * 24) / 60) + 6
                End If
            Case "Monday"
                If day_night = "day" Then
                    houseposn = ((22 * 24) / 60) + 6


                Else
                    houseposn = ((6 * 24) / 60) + 6

                End If

            Case "Tuesday"
                If day_night = "day" Then

                    houseposn = ((18 * 24) / 60) + 6

                Else
                    houseposn = ((2 * 24) / 60) + 6

                End If

            Case "Wednesday"
                If day_night = "day" Then

                    houseposn = ((14 * 24) / 60) + 6

                Else
                    houseposn = ((26 * 24) / 60) + 6

                End If
            Case "Thursday"
                If day_night = "day" Then

                    houseposn = ((10 * 24) / 60) + 6

                Else
                    houseposn = ((22 * 24) / 60) + 6

                End If
            Case "Friday"
                If day_night = "day" Then

                    houseposn = ((6 * 24) / 60) + 6

                Else
                    houseposn = ((18 * 24) / 60) + 6

                End If
            Case "Saturday"
                If day_night = "day" Then

                    houseposn = ((2 * 24) / 60) + 6

                Else
                    houseposn = ((14 * 24) / 60) + 6

                End If


            Case Else


        End Select




        'position

        Dim pos As New Integer()


        If houseposn = 5 Then
            pos = 1
        ElseIf houseposn = 6 Then
            pos = 1


        ElseIf houseposn = 3 Then

            pos = 2
        ElseIf houseposn = 4 Then

            pos = 2

        ElseIf houseposn = 1 Then

            pos = 3
        ElseIf houseposn = 2 Then

            pos = 3


        ElseIf houseposn = 23 Then

            pos = 4
        ElseIf houseposn = 24 Then

            pos = 4

        ElseIf houseposn = 21 Then

            pos = 5
        ElseIf houseposn = 22 Then

            pos = 5
        ElseIf houseposn = 19 Then

            pos = 6
        ElseIf houseposn = 20 Then

            pos = 6
        ElseIf houseposn = 17 Then

            pos = 7
        ElseIf houseposn = 18 Then

            pos = 7
        ElseIf houseposn = 15 Then

            pos = 8
        ElseIf houseposn = 16 Then


            pos = 8

        ElseIf houseposn = 13 Then

            pos = 9
        ElseIf houseposn = 14 Then

            pos = 9
        ElseIf houseposn = 11 Then

            pos = 10
        ElseIf houseposn = 12 Then

            pos = 10
        ElseIf houseposn = 9 Then

            pos = 11
        ElseIf houseposn = 10 Then

            pos = 11
        ElseIf houseposn = 7 Then

            pos = 12
        ElseIf houseposn = 8 Then

            pos = 12
        End If

        Return pos

    End Function

    
    Public Function getporuthampositions(ByVal dob As String, ByVal tob As String, ByVal zone As String, ByVal lat As String, ByVal lon As String, ByVal type As Integer) As String
        Dim result As String
        Dim request As WebRequest = WebRequest.Create("https://horoscopeapi.herokuapp.com/api/v1/horoscope")
        request.Method = "POST"
        Dim postData As String



        postData = "date=" + dob + "&time=" + tob + "&zone=" + zone + "&lat=" + lat + "&lon=" + lon + ""
        Dim byteArray As Byte() = Encoding.UTF8.GetBytes(postData)
        request.ContentType = "application/x-www-form-urlencoded"
        request.ContentLength = byteArray.Length
        Dim dataStream As Stream = request.GetRequestStream()
        dataStream.Write(byteArray, 0, byteArray.Length)
        dataStream.Close()
        Dim response As WebResponse = request.GetResponse()
        Console.WriteLine(CType(response, HttpWebResponse).StatusDescription)
        dataStream = response.GetResponseStream()
        Dim reader As New StreamReader(dataStream)
        Dim responseFromServer As String = reader.ReadToEnd()
        If responseFromServer = "0" Then
            MsgBox("Login Failed")
        Else
            MsgBox(responseFromServer)
        End If
        reader.Close()
        dataStream.Close()
        response.Close()
        Dim la_p As Integer = 0
        Dim cha_p As Integer = 0
        Dim shu_p As Integer = 0
        Dim ku_p As Integer = 0
        Dim ra_p As Integer = 0
        Dim bu_p As Integer = 0
        Dim gu_p As Integer = 0
        Dim sha_p As Integer = 0
        Dim sa_p As Integer = 0
        Dim shi_p As Integer = 0
        Dim maa_p As Integer = 0



        Try
            Dim responseobj As Object = New JavaScriptSerializer().Deserialize(Of Object)(responseFromServer)

            la_p = responseobj("data")("As")
            cha_p = responseobj("data")("Mo")
            shu_p = responseobj("data")("Ve")
            ku_p = responseobj("data")("Ma")
            ra_p = responseobj("data")("Su")
            bu_p = responseobj("data")("Me")
            gu_p = responseobj("data")("Ju")
            sha_p = responseobj("data")("Sa")
            sa_p = responseobj("data")("Ra")
            shi_p = responseobj("data")("Ke")

            maa_p = Calculate_Gulikan(type)

            'maa_p  should be calculated  ======= ????????



        Catch ex As Exception
            ' in case the structure of the object is not what we expected.
        End Try

        result = la_p.ToString + "," + cha_p.ToString + "," + shu_p.ToString + "," + ku_p.ToString + "," + shi_p.ToString + "," + ra_p.ToString +
            "," + sa_p.ToString + "," + sha_p.ToString + "," + maa_p.ToString + "," + bu_p.ToString + "," + gu_p.ToString

        Return result
    End Function




    Protected Sub FindCoordinates(sender As Object, e As EventArgs) Handles TextBox7.TextChanged

        Dim url As String = "http://maps.google.com/maps/api/geocode/xml?address=" + TextBox7.Text + "&sensor=false"
        Dim request As WebRequest = WebRequest.Create(url)
        Using response As WebResponse = DirectCast(request.GetResponse(), HttpWebResponse)
            Using reader As New StreamReader(response.GetResponseStream(), Encoding.UTF8)
                Dim dsResult As New DataSet()
                dsResult.ReadXml(reader)



                Dim dtCoordinates As New DataTable()

                dtCoordinates.Columns.AddRange(New DataColumn(3) {New DataColumn("Id", GetType(Integer)), New DataColumn("Address", GetType(String)), New DataColumn("Latitude", GetType(String)), New DataColumn("Longitude", GetType(String))})

                For Each row As DataRow In dsResult.Tables("result").Rows
                    Dim geometry_id As String = dsResult.Tables("geometry").[Select]("result_id = " + row("result_id").ToString())(0)("geometry_id").ToString()
                    Dim location As DataRow = dsResult.Tables("location").[Select](Convert.ToString("geometry_id = ") & geometry_id)(0)

                    ' TextBox1.Text = dsResult.Tables["lat"].ToString;
                    ' TextBox2.Text = location["lng"];

                    dtCoordinates.Rows.Add(row("result_id"), row("formatted_address"), location("lat"), location("lng"))
                Next
                GridView1.DataSource = dtCoordinates
                GridView1.DataBind()

                tbllat1.Text = GridView1.Rows(0).Cells(2).Text

                tbllong1.Text = GridView1.Rows(0).Cells(3).Text


            End Using
        End Using
    End Sub



    Protected Sub Calendar1_SelectionChanged(sender As Object, e As EventArgs) Handles Calendar1.SelectionChanged

        Dim date2 As String = ""
        date2 = Calendar1.SelectedDate.ToString("yyyy/MM/dd")

        TextBox2.Text = date2







        Calendar1.Visible = False

    End Sub

    Protected Sub find_coordinates(sender As Object, e As EventArgs) Handles TextBox5.TextChanged

        Dim url As String = "http://maps.google.com/maps/api/geocode/xml?address=" + TextBox5.Text + "&sensor=false"
        Dim request As WebRequest = WebRequest.Create(url)
        Using response As WebResponse = DirectCast(request.GetResponse(), HttpWebResponse)
            Using reader As New StreamReader(response.GetResponseStream(), Encoding.UTF8)
                Dim dsResult As New DataSet()
                dsResult.ReadXml(reader)



                Dim dtCoordinates As New DataTable()

                dtCoordinates.Columns.AddRange(New DataColumn(3) {New DataColumn("Id", GetType(Integer)), New DataColumn("Address", GetType(String)), New DataColumn("Latitude", GetType(String)), New DataColumn("Longitude", GetType(String))})

                For Each row As DataRow In dsResult.Tables("result").Rows
                    Dim geometry_id As String = dsResult.Tables("geometry").[Select]("result_id = " + row("result_id").ToString())(0)("geometry_id").ToString()
                    Dim location As DataRow = dsResult.Tables("location").[Select](Convert.ToString("geometry_id = ") & geometry_id)(0)

                    ' TextBox1.Text = dsResult.Tables["lat"].ToString;
                    ' TextBox2.Text = location["lng"];

                    dtCoordinates.Rows.Add(row("result_id"), row("formatted_address"), location("lat"), location("lng"))
                Next
                GridView2.DataSource = dtCoordinates
                GridView2.DataBind()

                TextBox6.Text = GridView2.Rows(0).Cells(2).Text

                TextBox8.Text = GridView2.Rows(0).Cells(3).Text


            End Using
        End Using

    End Sub

    Protected Sub Calendar2_SelectionChanged(sender As Object, e As EventArgs) Handles Calendar2.SelectionChanged

        Dim date2 As String = ""
        date2 = Calendar2.SelectedDate.ToString("yyyy/MM/dd")

        TextBox1.Text = date2

        Calendar2.Visible = False

    End Sub

    Protected Sub ImageButton1_Click(sender As Object, e As ImageClickEventArgs) Handles ImageButton1.Click

        If Calendar1.Visible = False Then
            Calendar1.Visible = True
        Else
            Calendar1.Visible = False
        End If


    End Sub

    Protected Sub ImageButton2_Click(sender As Object, e As ImageClickEventArgs) Handles ImageButton2.Click

        If Calendar2.Visible = False Then
            Calendar2.Visible = True
        Else
            Calendar2.Visible = False
        End If

    End Sub

   
End Class
