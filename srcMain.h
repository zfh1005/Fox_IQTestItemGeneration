//---------------------------------------------------------------------------

#ifndef srcMainH
#define srcMainH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <ExtCtrls.hpp>
#include <Dialogs.hpp>
#include <ComCtrls.hpp>
//---------------------------------------------------------------------------
class TForm3 : public TForm
{
__published:	// IDE-managed Components
	TGroupBox *GroupBox1;
	TComboBox *m_TestItem;
	TComboBox *m_Modulation;
	TComboBox *m_PowerLevel;
	TComboBox *m_Channel;
	TComboBox *m_Bandwidth;
	TComboBox *m_RxPackets;
	TComboBox *m_EvmLimit;
	TGroupBox *GroupBox2;
	TGroupBox *GroupBox3;
	TGroupBox *GroupBox4;
	TGroupBox *GroupBox5;
	TGroupBox *GroupBox6;
	TComboBox *m_PowerLow2g;
	TComboBox *m_PowerUpper2g;
	TLabel *Label1;
	TLabel *Label2;
	TLabel *Label3;
	TLabel *Label4;
	TComboBox *m_PowerLow5g;
	TComboBox *m_PowerUpper5g;
	TComboBox *m_FreqLimit;
	TComboBox *m_MaskLimit;
	TLabel *Label5;
	TLabel *Label6;
	TLabel *Label7;
	TLabel *Label8;
	TLabel *Label9;
	TLabel *Label10;
	TLabel *Label11;
	TLabel *Label12;
	TLabel *Label13;
	TListBox *m_ListBox;
	TLabeledEdit *m_ledtFilePath;
	TButton *m_btnBrowse;
	TSaveDialog *m_SaveDlg;
	TLabel *Label14;
	TComboBox *m_Antenna;
	TButton *m_btnAdd;
	TButton *m_btnDelete;
	TButton *m_btnSave;
	TUpDown *UpDown1;
	void __fastcall m_btnBrowseClick(TObject *Sender);
	void __fastcall m_btnAddClick(TObject *Sender);
	void __fastcall m_btnDeleteClick(TObject *Sender);
	void __fastcall m_btnSaveClick(TObject *Sender);
	void __fastcall UpDown1ChangingEx(TObject *Sender, bool &AllowChange, short NewValue,
          TUpDownDirection Direction);
private:	// User declarations
public:		// User declarations
	__fastcall TForm3(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm3 *Form3;
//---------------------------------------------------------------------------
#endif
