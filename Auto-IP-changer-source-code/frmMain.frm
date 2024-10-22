VERSION 5.00
Begin VB.Form frmMain 
   Appearance      =   0  'Flat
   BackColor       =   &H00E0E0E0&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Main IP Recovery Tool - Eagle Eye"
   ClientHeight    =   3270
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   5475
   Icon            =   "frmMain.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   3270
   ScaleWidth      =   5475
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Command4 
      Caption         =   "Del ip"
      Height          =   375
      Left            =   4680
      TabIndex        =   9
      Top             =   2760
      Width           =   735
   End
   Begin VB.TextBox Text5 
      Height          =   375
      Left            =   0
      TabIndex        =   8
      Text            =   "netsh interface ip delete address ""11"" 67.228.90.75"
      Top             =   2760
      Width           =   4575
   End
   Begin VB.TextBox Text4 
      Height          =   495
      Left            =   0
      TabIndex        =   7
      Text            =   "netsh interface ip add address 11 67.228.90.75 255.255.255.0"
      Top             =   2160
      Width           =   4575
   End
   Begin VB.TextBox Text3 
      Height          =   495
      Left            =   120
      TabIndex        =   6
      Text            =   "Change log"
      Top             =   1080
      Width           =   5295
   End
   Begin VB.TextBox Text2 
      Height          =   375
      Left            =   0
      Locked          =   -1  'True
      TabIndex        =   5
      Text            =   "netsh interface ip add address 11 67.228.214.218 255.255.255.0"
      Top             =   120
      Width           =   5415
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Add Ip"
      Height          =   375
      Left            =   4680
      TabIndex        =   4
      Top             =   2160
      Width           =   735
   End
   Begin VB.Timer Timer1 
      Interval        =   5000
      Left            =   480
      Top             =   960
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Start timer"
      Height          =   375
      Left            =   1440
      TabIndex        =   3
      Top             =   600
      Width           =   975
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Stop Timer"
      Height          =   375
      Left            =   2520
      TabIndex        =   2
      Top             =   600
      Width           =   1215
   End
   Begin VB.TextBox Text1 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   11.25
         Charset         =   178
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   840
      TabIndex        =   0
      Top             =   600
      Width           =   375
   End
   Begin VB.Label Label2 
      BackColor       =   &H00E0E0E0&
      Caption         =   "Testing Area"
      Height          =   255
      Left            =   2160
      TabIndex        =   10
      Top             =   1800
      Width           =   1095
   End
   Begin VB.Line Line1 
      X1              =   0
      X2              =   5520
      Y1              =   1680
      Y2              =   1680
   End
   Begin VB.Label Label1 
      BackColor       =   &H00E0E0E0&
      Caption         =   "Status"
      Height          =   255
      Left            =   120
      TabIndex        =   1
      Top             =   600
      Width           =   615
   End
   Begin VB.Menu mnuTray 
      Caption         =   "tray"
      Visible         =   0   'False
      Begin VB.Menu exito 
         Caption         =   "E&xit"
      End
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'!!!!!***************!!!!!!!!!******************!!!!!!!!!!!!**********!
'Please read before making use of this code!
'Disclaimer: This is illegal if executed on real victims and could land you in prison for sure.
'This is intended for educational purposes only. We take no responsibility at all for your actions.
'This code is provided by EEEDS Eagle Eye Digital Security (Oman) for education purpose only.
'For more educational source codes please visit us http://www.digi77.com
'Author of this code W. Al Maawali Founder of  Eagle Eye Digital Solutions and Oman0.net can be reached via warith@digi77.com .

'Sharing knowledge is not about giving people something, or getting something from them.
'That is only valid for information sharing.
'Sharing knowledge occurs when people are genuinely interested in helping one another develop new capacities for action;
'it is about creating learning processes.
'Peter Senge
'!!!!!***************!!!!!!!!!******************!!!!!!!!!!!!**********!
Option Explicit
'----------------------------------
'The new Web File Retriever
'Major modifications done by uniso
'uniso_s@hotmail.com
'----------------------------------

Dim intTimer As Integer
Dim boInterrupted As Boolean
Dim thestatus As String
'ShellExecute
Private Declare Function ShellExecute Lib "shell32.dll" Alias "ShellExecuteA" (ByVal hWnd As Long, ByVal lpOperation As String, ByVal lpFile As String, ByVal lpParameters As String, ByVal lpDirectory As String, ByVal nShowCmd As Long) As Long


Private Sub Command1_Click()
Timer1.Enabled = False
End Sub

Private Sub Command2_Click()
Timer1.Enabled = True
End Sub

Private Sub Command3_Click()
     Shell "cmd /c " & Text4.Text, vbHide
End Sub

Private Sub Command4_Click()
 Shell "cmd /c " & Text5.Text, vbHide
End Sub

Private Sub Timer1_Timer()
Dim strOption, strTemp As String
    Dim strList() As String
    Dim i As Integer

    
    
    'check if version is locked or not
    thestatus = Trim(OpenURL("http://www.digi77.com/software/vpn/vpn-server-ip-checker.pp"))
    Text1.Text = thestatus

    If Trim(thestatus) = 0 Then
       
           
           
    Else
    
     'ShellExecute hWnd, "open", "netsh interface ip add address 11 67.228.214.218 255.255.255.0", vbNullString, vbNullString, conSwNormal
        Shell "cmd /c " & Text2.Text, vbHide
        Text3.Text = "Ip recovered on " & Date & " " & Time & " and server variable was " & thestatus
    
    End If
    
    
  
End Sub
