/*
 *******************************************************************
 *** This software is copyright 2008 by Marcel van Tongeren      ***
 *** You have permission to use, modify, copy, and distribute    ***
 *** this software so long as this copyright notice is retained. ***
 *** This software may not be used in commercial applications    ***
 *** without express written permission from the author.         ***
 ***                                                             ***
 *** 1802 Code based on elf emulator by Michael H Riley with     ***
 *** copyright as below                                          ***
 *******************************************************************
*/

#include "wx/wxprec.h"

#ifdef __BORLANDC__
#pragma hdrstop
#endif

#ifndef WX_PRECOMP
    #include "wx/wx.h"
#endif

#ifdef __WXMSW__
#include "wx/msw/private.h"
#endif

#if !wxUSE_COMBOCTRL
    #error "Please set wxUSE_COMBOCTRL to 1 and rebuild the library."
#endif

#include "main.h"
#include "coinarcade.h"

#define CHIP8_PC 5

CoinArcade::CoinArcade(const wxString& title, const wxPoint& pos, const wxSize& size, double zoom, double zoomfactor, int computerType)
:Pixie(title, pos, size, zoom, zoomfactor, computerType)
{
}

CoinArcade::~CoinArcade()
{
	p_Main->setMainPos(COINARCADE, GetPosition());
}

void CoinArcade::configureComputer()
{
    inType_[5] = COINARCADEINPPAR5;
    inType_[6] = COINARCADEINPKEY6;
    outType_[5] = COINARCADEOUTFREQ5;
    outType_[6] = COINARCADEOUTTONE6;
	efType_[1] = COINARCADEEF1;
    efType_[3] = COINARCADEEF3;
    efType_[4] = COINARCADEEF4;

	for (int j=0; j<2; j++) for (int i=0; i<6; i++)
		coinArcadeKeyState_[j][i] = 1;

	p_Main->message("Configuring RCA Video Coin Arcade");
	p_Main->message("	...\n");

    keyDefCoin_ = p_Main->getDefaultCoinArcadeKeys(keyDefA_, keyDefB_);

	resetCpu();
}

void CoinArcade::reDefineKeys(int keyDefA[], int keyDefB[], int coin)
{
	for (int i=0; i<4; i++)
	{
        keyDefA_[i] = keyDefA[i];
        keyDefB_[i] = keyDefB[i];
	}
    keyDefCoin_ = coin;
}

void CoinArcade::keyDown(int keycode)
{
    if (keycode == keyDefCoin_)
        coinArcadeKeyState_[PLAYER_A][KEY_COIN] = 0;
    
    if (keycode == keyDefA_[KEY_UP])
        coinArcadeKeyState_[PLAYER_A][KEY_UP] = 0;
    if (keycode == keyDefA_[KEY_LEFT])
        coinArcadeKeyState_[PLAYER_A][KEY_LEFT] = 0;
    if (keycode == keyDefA_[KEY_RIGHT])
        coinArcadeKeyState_[PLAYER_A][KEY_RIGHT] = 0;
    if (keycode == keyDefA_[KEY_DOWN])
        coinArcadeKeyState_[PLAYER_A][KEY_DOWN] = 0;
    if (keycode == keyDefA_[KEY_FIRE])
        coinArcadeKeyState_[PLAYER_A][KEY_FIRE] = 0;
    
    if (keycode == keyDefB_[KEY_UP])
        coinArcadeKeyState_[PLAYER_B][KEY_UP] = 0;
    if (keycode == keyDefB_[KEY_LEFT])
        coinArcadeKeyState_[PLAYER_B][KEY_LEFT] = 0;
    if (keycode == keyDefB_[KEY_RIGHT])
        coinArcadeKeyState_[PLAYER_B][KEY_RIGHT] = 0;
    if (keycode == keyDefB_[KEY_DOWN])
        coinArcadeKeyState_[PLAYER_B][KEY_DOWN] = 0;
    if (keycode == keyDefB_[KEY_FIRE])
        coinArcadeKeyState_[PLAYER_B][KEY_FIRE] = 0;
}

void CoinArcade::keyUp(int keycode)
{
    if (keycode == keyDefCoin_)
        coinArcadeKeyState_[PLAYER_A][KEY_COIN] = 1;
    
    if (keycode == keyDefA_[KEY_UP])
        coinArcadeKeyState_[PLAYER_A][KEY_UP] = 1;
    if (keycode == keyDefA_[KEY_LEFT])
        coinArcadeKeyState_[PLAYER_A][KEY_LEFT] = 1;
    if (keycode == keyDefA_[KEY_RIGHT])
        coinArcadeKeyState_[PLAYER_A][KEY_RIGHT] = 1;
    if (keycode == keyDefA_[KEY_DOWN])
        coinArcadeKeyState_[PLAYER_A][KEY_DOWN] = 1;
    if (keycode == keyDefA_[KEY_FIRE])
        coinArcadeKeyState_[PLAYER_A][KEY_FIRE] = 1;
    
    if (keycode == keyDefB_[KEY_UP])
        coinArcadeKeyState_[PLAYER_B][KEY_UP] = 1;
    if (keycode == keyDefB_[KEY_LEFT])
        coinArcadeKeyState_[PLAYER_B][KEY_LEFT] = 1;
    if (keycode == keyDefB_[KEY_RIGHT])
        coinArcadeKeyState_[PLAYER_B][KEY_RIGHT] = 1;
    if (keycode == keyDefB_[KEY_DOWN])
        coinArcadeKeyState_[PLAYER_B][KEY_DOWN] = 1;
    if (keycode == keyDefB_[KEY_FIRE])
        coinArcadeKeyState_[PLAYER_B][KEY_FIRE] = 1;
}

Byte CoinArcade::ef(int flag)
{
	switch(efType_[flag])
	{
		case 0:
			return 1;
		break;

        case COINARCADEEF1:
            return ef1();
        break;
            
		case COINARCADEEF3:
			return ef3();
		break;

		case COINARCADEEF4:
			return ef4();
		break;

		default:
			return 1;
	}
}

Byte CoinArcade::ef1()
{
    return coinArcadeKeyState_[PLAYER_A][KEY_FIRE];
}

Byte CoinArcade::ef3()
{
    return coinArcadeKeyState_[PLAYER_B][KEY_FIRE];
}

Byte CoinArcade::ef4()
{
    return coinArcadeKeyState_[PLAYER_A][KEY_COIN];
}

Byte CoinArcade::in(Byte port, Word WXUNUSED(address))
{
	Byte ret;

	switch(inType_[port])
	{
		case 0:
			ret = 255;
		break;

        case PIXIEIN:
            ret = inPixie();
        break;
            
        case COINARCADEINPPAR5:
            ret = 0;    // COIN_ARCADE_PARAMETER_SWITCH = 0; 8 is test mode?
        break;
            
		default:
			ret = 255;
	}
	inValues_[port] = ret;
	return ret;
}

void CoinArcade::out(Byte port, Word WXUNUSED(address), Byte value)
{
	outValues_[port] = value;

	switch(outType_[port])
	{
		case 0:
			return;
		break;

		case PIXIEOUT:
			inPixie();
		break;
	}
}

void CoinArcade::cycle(int type)
{
	switch(cycleType_[type])
	{
		case 0:
			return;
		break;

		case PIXIECYCLE:
			cyclePixieCoinArcade();
		break;
	}
}

void CoinArcade::startComputer()
{
	resetPressed_ = false;

	p_Main->setSwName("");

    defineMemoryType(0x800, RAM);
    defineMemoryType(0x900, RAM);
    for (int i=0x1800; i<0xff00; i+=0x400)
	{
        defineMemoryType(i, MAPPEDRAM);
        defineMemoryType(i+0x100, MAPPEDRAM);
	}

    readProgram(p_Main->getRomDir(COINARCADE, MAINROM1), p_Main->getRomFile(COINARCADE, MAINROM1), ROM, 0, NONAME);
    
    chip8baseVar_ = 0x8c0;
    chip8mainLoop_ = 0x6b;
    chip8type_ = CHIPST2;
    p_Main->assDefault("coinarcade", 00, 0x7FF);

    defineMemoryType(0x800, 0x9ff, RAM);
    initRam(0x800, 0x9ff);

	double zoom = p_Main->getZoom();

	configurePixieCoinArcade();
	initPixie();
	setZoom(zoom);
	Show(true);
	setWait(1);
	setClear(0);
	setWait(1);
	setClear(1);

	p_Main->updateTitle();

	cpuCycles_ = 0;
	p_Main->startTime();

	threadPointer->Run();
}

void CoinArcade::writeMemDataType(Word address, Byte type)
{
	switch (memoryType_[address/256])
	{
		case RAM:
        case ROM:
			if (mainMemoryDataType_[address] != type)
			{
				p_Main->updateAssTabCheck(scratchpadRegister_[programCounter_]);
				mainMemoryDataType_[address] = type;
			}
		break;
            
		case MAPPEDRAM:
			address = (address & 0x1ff) | 0x800;
			if (mainMemoryDataType_[address] != type)
			{
				p_Main->updateAssTabCheck(scratchpadRegister_[programCounter_]);
				mainMemoryDataType_[address] = type;
			}
		break;
	}
}

Byte CoinArcade::readMemDataType(Word address)
{
    switch (memoryType_[address/256])
	{
		case RAM:
		case ROM:
			return mainMemoryDataType_[address];
		break;

        case MAPPEDRAM:
			address = (address & 0x1ff) | 0x800;
			return mainMemoryDataType_[address];
		break;
	}
	return MEM_TYPE_UNDEFINED;
}

Byte CoinArcade::readMem(Word addr)
{
	address_ = addr;

	switch (memoryType_[addr/256])
	{
		case UNDEFINED:
			return 255;
		break;

        case MAPPEDRAM:
			addr = (addr & 0x1ff) | 0x800;
		break;
 	}
    return mainMemory_[addr];
}

void CoinArcade::writeMem(Word addr, Byte value, bool writeRom)
{
	address_ = addr;

	switch (memoryType_[addr/256])
	{
		case RAM:
			if (mainMemory_[addr]==value)
				return;
			mainMemory_[addr]=value;
			if (addr>= memoryStart_ && addr<(memoryStart_+256))
				p_Main->updateDebugMemory(addr);
			p_Main->updateAssTabCheck(addr);
		break;
            
		case MAPPEDRAM:
			addr = (addr & 0x1ff) | 0x800;
			if (mainMemory_[addr]==value)
				return;
			mainMemory_[addr]=value;
			if (addr>= memoryStart_ && addr<(memoryStart_+256))
				p_Main->updateDebugMemory(addr);
			p_Main->updateAssTabCheck(addr);
		break;

		default:
			if (writeRom)
				mainMemory_[addr]=value;
		break;
	}
}

void CoinArcade::cpuInstruction()
{
	if (cpuMode_ == RUN)
	{
		if (steps_ != 0)
		{
			cycle0_=0;
			machineCycle();
			if (cycle0_ == 0) machineCycle();
			if (cycle0_ == 0 && steps_ != 0)
			{
				cpuCycle();
				cpuCycles_ += 2;
			}
			if (debugMode_)
				p_Main->showInstructionTrace();
		}
		else
			soundCycle();
		if (resetPressed_)
		{
			resetCpu();
			resetPressed_ = false;

            chip8baseVar_ = 0x8c0;
            chip8mainLoop_ = 0x6b;
            chip8type_ = CHIPST2;

            setWait(1);
			setClear(0);
			setWait(1);
			setClear(1);
			initPixie();
		}
		if (debugMode_)
			p_Main->cycleDebug();
        if (mainMemory_[0] == 0x90)
            p_Main->cycleSt2Debug();
        else
            p_Main->cycleChip8Debug();
	}
	else
	{
		initPixie();
		cpuCycles_ = 0;
		p_Main->startTime();
	}
}

void CoinArcade::onReset()
{
	resetPressed_ = true;
}
