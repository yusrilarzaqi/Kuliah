Private Sub Form3_load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handless MyBase.Load
  DTanggal.Format = DateTimePickerFormat.Custom
  DTanggal.CustomFormat = "dddd,dd/MM/yyyy"
  DTanggal.Value = Format(Now)
End Sub

Private Sub Timer1_Tick(ByVal sender As System.Object, ByVal e As System.EventArgs) Handless Timer1.Tick
  Lbl12Jam.Text = Format(Now, "h:mm:ss tt")
  Lbl24Jam.Text = Format(Now, "hh:mm:ss")
End Sub


Private Sub BukaToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BukaToolStripMenuItem.Click
  Dim kotak_dialog As OpenFileDialog = New OpenFileDialog
  kotak_dialog.Filter = "File Text (*.txt) | *.txt"
  kotak_dialog.ShowDialog()
  Dim fileText As String = My.Computer.FileSystem.ReadAllText(kotak_dialog.FileName)
End Sub


Private Sub BaruToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs)
Handles BaruToolStripMenuItem.Click
 RchTeks.Text = ""
End Sub

Private Sub RegularToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As
  System.EventArgs) Handles RegularToolStripMenuItem.Click
  RchTeks.SelectionFont = New Font(RchTeks.SelectionFont, FontStyle.Regular)
End Sub

Private Sub BoldToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs)
Handles BoldToolStripMenuItem.Click
  RchTeks.SelectionFont = New Font(RchTeks.SelectionFont, FontStyle.Bold)
End Sub

