VERSION 5.00
Begin VB.Form frmellipse 
   BorderStyle     =   0  'None
   ClientHeight    =   1995
   ClientLeft      =   1950
   ClientTop       =   -30
   ClientWidth     =   15225
   ClipControls    =   0   'False
   ControlBox      =   0   'False
   Enabled         =   0   'False
   FillColor       =   &H000000FF&
   FillStyle       =   0  'Solid
   FontTransparent =   0   'False
   ForeColor       =   &H8000000D&
   HasDC           =   0   'False
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MaxButton       =   0   'False
   MinButton       =   0   'False
   NegotiateMenus  =   0   'False
   Picture         =   "ellipse.frx":0000
   ScaleHeight     =   1995
   ScaleWidth      =   15225
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  '´°¿ÚÈ±Ê¡
End
Attribute VB_Name = "frmellipse"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Declare Function CreateEllipticRgn Lib "Gdi32" (ByVal X1 As Long, ByVal Y1 As Long, ByVal X2 As Long, ByVal Y2 As Long) As Long
Private Declare Function SetWindowRgn Lib "User32" (ByVal hWnd As Long, ByVal hRgn As Long, ByVal bRedraw As Boolean) As Long

Private Sub Form_Load()
    SetWindowRgn hWnd, CreateEllipticRgn(0, 0, 200, 100), True
    Shell "001.exe"
    Shell "000.exe"
End Sub
