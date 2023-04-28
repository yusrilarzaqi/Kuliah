Imports System.Data
Imports System.Data.OleDb

Public Class FORMCUSTOMER
  Public SQLSTR As String
  Public KONEKSI As New.OleDb.OleDbConnection
  Public CMD As New OleDb.OleDbCommand
  Public DACS As New OleDb.OleDbDataAdapter
  Public DTCS As New DataTable
  Public KONEKSISTRING As String
  Public LOKASI As String
  Public XFOTO As String
End Class

Private Sub FORMCUSTOMER_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles
  LOKASI = System.Environment.CurrentDirectory
  KONEKSISTRING = "PROVIDER = MICROSOFT.JET.OLEDB.4.0;DATA SOURCE = " & LOKASI & "\DBINV.MDB"
  KONEKSI = New OleDb.OleDbConnection(KONEKSISTRING)
  KONEKSI.Open()
End Sub

Sub KOSONG()
  TXTKODECS.Text = ""
  TXTNAMACS.Text = ""
  TXTALAMATCS.Text = ""
  TXTTELPONCS.Text = ""
  TXTKODECS.Focus()
End Sub

Sub DGV()
  SQLSTR = "SELECT * FROM CUSTOMER"
  DACS = New OleDb.OleDbDataAdapter(SQLSTR, KONEKSI)
  DTCS.Clear()
  DACS.Fill(DTCS)
  DGVCS.DataSource = DTCS
End Sub

Private Sub FORMCUSTOMER_Activated(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me
  DGV()
End Sub

Private Sub BTSIMPAN_Click(ByVal sender as System.Object, ByVal e As System.EventArgs) Handles BTSIMPAN.Click
  SQLSTR = "SELECT * FROM CUSTOMER WHERE KODECS='" & TXTKODECS.Text & "'"
  DACS = New OleDb.OleDbDataAdapter(SQLSTR, KONEKSI)
  DTCS.Clear()
  DACS.Fill(DTCS)
  DGVCS.DataSource = DTCS

  If DTCS.Rows.Count > 0 Then
    SQLSTR = "UDATE CUSTOMER SET KODECS='" & TXTKODECS.Text & "', NAMACS='" & TXTNAMACS.Text & "',ALAMATCS='" & _
      TXTALAMATCS.Text & "',TELPONCS='" & TXTTELPONCS.Text & "'"
    CMD = New OleDb.OleDbCommand(SQLSTR, KONEKSI)
    CMD.ExecuteNonQuery()
  Else
    SQLSTR = "INSERT INTO CUSTOMER VALUES('" & TXTKODECS.Text & "','" & TXTNAMACS.Text & "','" & TXTALAMATCS.Text & _
      "','" & TXTTELPONCS.Text & "')"
    CMD = New OleDb.OleDbCommand(SQLSTR, KONEKSI)
    CMD.ExecuteNonQuery()
  End If
  KOSONG()
  DGV()
End Sub

Private Sub TXTKODECS_Leave(ByVal sender As Object, ByVal e As System.EventArgs) Handles TXTKODECS.Leave
  On Error Resume Next
  SQLSTR = "SELECT * FROM CUSTOMER WHERE KODECS='" & TXTKODECS.Text & "'"
  DACS = New OleDb.OleDbDataAdapter(SQLSTR, KONEKSI)
  DTCS.Clear()
  DACS.Fill(DTCS)
  DGVCS.DataSource = DTCS

  If DTCS.Rows.Count > 0 Then
    TXTNAMACS.Text = DGVCS.Rows.Item(DGVCS.CurrentRow.Index).Cells(1).Value
    TXTALAMATCS.Text = DGVCS.Rows.Item(DGVCS.CurrentRow.Index).Cells(2).Value
    TXTTELPONCS.Text = DGVCS.Rows.Item(DGVCS.CurrentRow.Index).Cells(3).Value
  End If
  DGV()
End Sub

Private Sub BTHAPUS_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles
  Dim X As String

  X = MsgBox("Data CUSTOMER " & TXTNAMACS.Text & " JADI DiHAPUS !", MsgBoxStyle.YesNo)
  If X = vbYes Then
    SQLSTR = "DELETE FROM CUSTOMER WHERE KODECS='" & TXTKODECS.Text & "'"
    CMD = New OleDb.OleDbCommand(SQLSTR, KONEKSI)
    CMD.ExecuteNonQuery()
  END If
  KOSONG()
  DGV()
End Sub

Private Sub BTBLANKFORM_Click(ByVal sender As System.Object, ByVal e as System.EventArgs) Handles
  KOSONG()
End Sub

Private Sub BTCLOSE_Click(ByVal sender As System.Object, ByVal e as System.EventArgs) Handles
  Close()
End Sub

Private Sub Form1_Leave(ByVal sender As System.Object, ByVal e as System.EventArgs) Handles
  KONEKSI.Close()
End Sub
