#ifndef GUIVIPII_H
#define GUIVIPII_H

#include "guivelf.h"

DECLARE_EVENT_TYPE(STATUS_BAR_PIXIE, 810)

class GuiVipII: public GuiVelf
{
public:

	GuiVipII(const wxString& title, const wxPoint& pos, const wxSize& size, Mode mode_, wxString dataDir, wxString iniDir);
	~GuiVipII() {};

	void readVipIIConfig();
    void writeVipIIDirConfig();
    void writeVipIIConfig();
    void readVipIIWindowConfig();
    void writeVipIIWindowConfig();

	void onRamSWVipII(wxCommandEvent&event);
	void onRamSWTextII(wxCommandEvent&event);
	void pixieBarSize(wxCommandEvent &event);
	void pixieBarSizeEvent();

private:

	DECLARE_EVENT_TABLE()
};

#endif // GUIVIPII_H
