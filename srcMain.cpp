//---------------------------------------------------------------------------

#include <vcl.h>
#include <stdio.h>
#include <IniFiles.hpp>
#include <io.h>
#pragma hdrstop

#include "srcMain.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm3 *Form3;
//---------------------------------------------------------------------------
__fastcall TForm3::TForm3(TComponent* Owner)
	: TForm(Owner)
{
	m_btnSave->Enabled=false;
}
//---------------------------------------------------------------------------
void __fastcall TForm3::m_btnBrowseClick(TObject *Sender)
{
	if(m_SaveDlg->Execute())
	{
		// check if the file exsits
		if (FileExists(m_SaveDlg->FileName))
		{
			/* read the test items*/
			TIniFile *m_Script = new TIniFile(m_SaveDlg->FileName.t_str());
			// create GENERAL section
			m_PowerLow2g->Text = m_Script->ReadString("WIFI_LIMIT","POWER_LOWER_2G","1.5");
			m_PowerUpper2g->Text = m_Script->ReadString("WIFI_LIMIT","POWER_UPPER_2G","1.5");
			m_PowerLow5g->Text = m_Script->ReadString("WIFI_LIMIT","POWER_LOWER_5G","2");
			m_PowerUpper5g->Text = m_Script->ReadString("WIFI_LIMIT","POWER_UPPER_5G","2");
			m_MaskLimit->Text = m_Script->ReadString("WIFI_LIMIT","MASK_PERCENTAGE","2");
			m_FreqLimit->Text = m_Script->ReadString("WIFI_LIMIT","FREQENCY_LIMIT","20");
			delete m_Script;

			FILE *fp = fopen(m_SaveDlg->FileName.t_str(),"r");
			while(fp != NULL && !feof(fp))
			{
				char szReadLine[512]="";
				fgets(szReadLine,sizeof(szReadLine),fp);
				if(strstr(szReadLine,"_VERIFY_") != NULL)
				{
					m_ListBox->Items->Add(szReadLine);
				}
			}
			fclose(fp);

			if(mrNo==MessageDlg("File already exist, overwrite?",mtWarning,TMsgDlgButtons()<<mbYes<<mbNo,0))
				return;
		}
		this->m_ledtFilePath->Text=m_SaveDlg->FileName;
        m_btnSave->Enabled=true;
	}
}
//---------------------------------------------------------------------------
void __fastcall TForm3::m_btnAddClick(TObject *Sender)
{
	char szTestItem[256]={"\0"};
	if(m_TestItem->Text.Pos("TX_VERIFY_EVM"))
	{
		sprintf(szTestItem,"%s %s %s %s #%s $%s @%s",
			m_TestItem->Text.t_str(),
			m_Channel->Text.t_str(),
			m_Modulation->Text.t_str(),
			m_Bandwidth->Text.t_str(),
			m_PowerLevel->Text.t_str(),
			m_EvmLimit->Text.t_str(),
			m_Antenna->Text.t_str());
	}
	else if(m_TestItem->Text.Pos("TX_VERIFY_POWER"))
	{
		sprintf(szTestItem,"%s %s %s %s #%s @%s",
			m_TestItem->Text.t_str(),
			m_Channel->Text.t_str(),
			m_Modulation->Text.t_str(),
			m_Bandwidth->Text.t_str(),
			m_PowerLevel->Text.t_str(),
			m_Antenna->Text.t_str());
	}
	else if(m_TestItem->Text.Pos("TX_VERIFY_MASK"))
	{
		sprintf(szTestItem,"%s %s %s %s #%s @%s",
			m_TestItem->Text.t_str(),
			m_Channel->Text.t_str(),
			m_Modulation->Text.t_str(),
			m_Bandwidth->Text.t_str(),
			m_PowerLevel->Text.t_str(),
			m_Antenna->Text.t_str());
	}
	else if(m_TestItem->Text.Pos("RX_VERIFY_PER"))
	{
		sprintf(szTestItem,"%s %s %s %s #%s &%s @%s",
			m_TestItem->Text.t_str(),
			m_Channel->Text.t_str(),
			m_Modulation->Text.t_str(),
			m_Bandwidth->Text.t_str(),
			m_PowerLevel->Text.t_str(),
			m_RxPackets->Text.t_str(),
			m_Antenna->Text.t_str());
	}
	int iCurIndex=m_ListBox->ItemIndex;
	if(iCurIndex != 0 && iCurIndex < m_ListBox->Items->Count-1)
	{
		m_ListBox->Items->Insert(m_ListBox->ItemIndex+1,szTestItem);
		m_ListBox->ItemIndex=m_ListBox->ItemIndex+1;
	}
	else
	{
		m_ListBox->Items->Add(szTestItem);
		m_ListBox->ItemIndex=m_ListBox->Items->Count-1;
		//m_ListBox->SelCount=m_ListBox->ItemIndex;
	}
	m_ListBox->ClearSelection();
}
//---------------------------------------------------------------------------
void __fastcall TForm3::m_btnDeleteClick(TObject *Sender)
{
	if(m_ListBox->Count==0)
	{
		MessageDlg("No items has been added!",mtError,TMsgDlgButtons()<<mbOK,0);
		return;
	}
	int index = m_ListBox->ItemIndex;
	m_ListBox->Items->Delete(index);
}
//---------------------------------------------------------------------------
void __fastcall TForm3::m_btnSaveClick(TObject *Sender)
{
	if(FileExists(m_ledtFilePath->Text.Trim()))
	{
		DeleteFile(m_ledtFilePath->Text.Trim());
	}
	TIniFile *m_Script = new TIniFile(m_ledtFilePath->Text.Trim());
	// create GENERAL section
	m_Script->WriteString("WIFI_LIMIT","POWER_LOWER_2G",m_PowerLow2g->Text);
	m_Script->WriteString("WIFI_LIMIT","POWER_UPPER_2G",m_PowerUpper2g->Text);
	m_Script->WriteString("WIFI_LIMIT","POWER_LOWER_5G",m_PowerLow5g->Text);
	m_Script->WriteString("WIFI_LIMIT","POWER_UPPER_5G",m_PowerUpper5g->Text);
	m_Script->WriteString("WIFI_LIMIT","MASK_PERCENTAGE",m_MaskLimit->Text);
	m_Script->WriteString("WIFI_LIMIT","FREQENCY_LIMIT",m_FreqLimit->Text);
	delete m_Script;
	FILE *fp = fopen(m_ledtFilePath->Text.Trim().t_str(),"a");
	fprintf(fp,"\n\n");
	fprintf(fp,"// Test Script File \n");
	fprintf(fp,"%s",m_ListBox->Items->Text.Trim().t_str());
	fclose(fp);

}
//---------------------------------------------------------------------------


void __fastcall TForm3::UpDown1ChangingEx(TObject *Sender, bool &AllowChange, short NewValue,
		  TUpDownDirection Direction)
{
	static int nPos = 500;
	if(nPos > UpDown1->Position)
	{
		if(m_ListBox->ItemIndex >0)
		{
			m_ListBox->Items->Move(m_ListBox->ItemIndex,m_ListBox->ItemIndex-1);
		}
	}
	else
	{
		 if(m_ListBox->ItemIndex < m_ListBox->Count-1)
		{
			m_ListBox->Items->Move(m_ListBox->ItemIndex,m_ListBox->ItemIndex-1);
		}
	}
	nPos=UpDown1->Position;
}
//---------------------------------------------------------------------------

