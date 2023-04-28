Imports System.Data
Imports System.Data.OleDb

Public Class FORMBARANG
  Public SQLSTR As String
  Public KONEKSI As New OleDb.OleDbConnection
  Public CMD As New OleDb.OleDbCommand
  Public DABRG As New OleDb.OleDbDataAdapter
  Public DTBRG As New DataTable
  Public KONEKSISTRING As String
  Public LOKASI As String

  Private Sub FORMBARANG_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
    LOKASI = System.Environment.CurrentDirectory
    KONEKSISTRING = "PROVIDER = MICROSOFT.JET.OLEDB.4.0;DATA SOURCE = " & LOKASI & "\DBINV.MDB"
    KONEKSI = New OleDb.OleDbConnection(KONEKSISTRING) 
    KONEKSI.Open()
  End Sub
  
  Sub BLANKFORM()
    TXTKODEBRG.Text = ""
    TXTNAMABRG.Text = ""
    TXTHRGBELI.Text = 0
    TXTHRGJUAL.Text = 0
    TXTJMLAWAL.Text = 0
    TXTKODEBRG.Focus()
  End Sub

  Sub DGV()
    SQLSTR = "SELECT * FROM BARANG"
    DABRG = New OleDb.OleDbDataAdapter(SQLSTR, KONEKSI)
    DTBRG.Clear()
    DABRG.Fill(DTBRG)
    DGVBRG.DataSource = DTBRG
  End Sub

  Private Sub FORMBARANG_Activated(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Activated
    BLANKFORM()
    DGV()
  End Sub

  Private Sub BTSIMPAN_Click(ByVal sender As System.Object,ByVal e As System.EventArgs) Handles BTSIMPAN.Click
    SQLSTR = "SELECT * FROM BARANG WHERE KODEBRG='" & TXTKODEBRG.Text & "'"
    DABRG = New OleDb.OleDbDataAdapter(SQLSTR, KONEKSI)
    DTBRG.Clear()
    DABRG.Fill(DTBRG)
    DGVBRG.DataSource = DTBRG

    If DTBRG.Rows.Count > 0 Then
      SQLSTR = "UPDATE BARANG SET KODEBRG='" & TXTKODEBRG.Text & "',NAMABRG='" & TXTNAMABRG.Text & _
        "',HRGBELI=" & TXTHRGBELI.Text & ",HRGJUAL=" & TXTHRGJUAL.Text & ",JMLAWAL=" & TXTJMLAWAL.Text & _
        " WHERE KODEBRG='" & TXTKODEBRG.Text & "'"
      CMD = new OleDb.OleDbCommand(SQLSTR, KONEKSI)
      CMD.ExecuteNonQuery()
    Else
      SQLSTR = "INSERT INTO BARANG VALUES ('" & TXTKODEBRG.Text & "', '" & TXTNAMABRG.Text & "'," & _
        TXTHRGBELI.Text & "," & TXTHRGJUAL.Text & "," & TXTJMLAWAL.Text & ",0,0,0)"
      CMD = new OleDb.OleDbCommand(SQLSTR, KONEKSI)
      CMD.ExecuteNonQuery()
    End If
    BLANKFORM()
    DGV()
  End Sub

  Private Sub TXTKODEBRG_Leave(ByVal sender As Object, ByVal e As System.EventArgs) Handles TXTKODEBRG.Leave
    SQLSTR = "SELECT * FROM BARANG WHERE KODEBRG='" & TXTKODEBRG.Text & "'"
    DABRG = New OleDb.OleDbDataAdapter(SQLSTR, KONEKSI)
    DTBRG.Clear()
    DABRG.Fill(DTBRG)
    DGVBRG.DataSource = DTBRG

    If DTBRG.Rows.Count > 0 Then
      TXTNAMABRG.Text = DGVBRG.Rows.Item(DGVBRG.CurrentRow.Index).Cells(1).Value
      TXTHRGBELI.Text = DGVBRG.Rows.Item(DGVBRG.CurrentRow.Index).Cells(2).Value
      TXTHRGJUAL.Text = DGVBRG.Rows.Item(DGVBRG.CurrentRow.Index).Cells(3).Value
      TXTJMLAWAL.Text = DGVBRG.Rows.Item(DGVBRG.CurrentRow.Index).Cells(4).Value
    End If
    DGV()
  End Sub

  Private Sub BTHAPUS_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BTHAPUS.Click
    DIM X As String
    DIM XKODEBRG = As String
    XKODEBRG = TXTKODEBRG.Text
    X = MsgBox("DATA BARANG " & TXTNAMABRG.Text & " JADI DIHAPUS !", MsgBoxStyle.YesNo)

    If X = vbYes Then
      SQLSTR = "DELETE FORM BARANG WHERE KODEBRG='" & XKODEBRG & "'"
      CMD = new OleDb.OleDbCommand(SQLSTR, KONEKSI)
      CMD.ExecuteNonQuery()
    End If
    BLANKFORM()
    DGV()
  End Sub

  Private Sub BTBLANK_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BTBLANK.Click
    BLANKFORM()
  End Sub

  Private Sub BTCLOSE_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BTCLOSE.Click
    Close()
  End Sub

  Private Sub FORMBARANG_Leave(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles FORMBARANG.Leave
    KONEKSI.Clsoe()
  End Sub
End Class
