/******************************************************************************/
/* FILENAME	: xf.h                                                            */
/*----------------------------------------------------------------------------*/
/* GOAL		  : Offers the femto XF functions (for PIC CPU)                     */
/*----------------------------------------------------------------------------*/
/* AUTHOR   : Medard Rieder / Pascal Sartoretti                               */
/*----------------------------------------------------------------------------*/
/* DATE:    : original (Medard Rieder 08.2011)                                */
/*            corrections & simplified (Pascal Sartoretti 06.2016)            */
/******************************************************************************/
#include <stdbool.h>              // boolean types
#include "xf.h"

XF theXF;                         // really the XF

/******************************************************************************/
/* FUNCTION     : Init the XF structure                                       */
/* INPUT        : -                                                           */
/* OUTPUT       : -                                                           */
/* COMMENTS     : Have to be called once                                      */
/******************************************************************************/
void XF_init()
{
    int i;
    for (i=0; i<MAXEVENT; i++)
    {
        theXF.eventQueue[i] = NULLEVENT;
    }
    theXF.in = 0;
    theXF.out = 0;
}

/******************************************************************************/
/* FUNCTION     : Push an event on the events queue                           */
/* INPUT        : ev - the event number (not 0)                               */
/*                inISR - (true if called in an ISR, else false)              */
/* OUTPUT       : return false if the queue was full, else true               */
/* COMMENTS     : -                                                           */
/******************************************************************************/
bool XF_pushEvent(Event ev)
{
  uint8_t temp;
    
    temp = (theXF.in+1) % (uint8_t)sizeof(theXF.eventQueue);
    if(temp == theXF.out)
    {      
      return false;
    }
    theXF.eventQueue[theXF.in] = ev;
    theXF.in = temp;
    return true;
}

/******************************************************************************/
/* FUNCTION     : Pop an event on the events queue                            */
/* INPUT        : inISR - (true if called in an ISR, else false)              */
/* OUTPUT       : return the next waiting event if any, else 0                */
/* COMMENTS     : -                                                           */
/******************************************************************************/
Event XF_popEvent()
{
    Event ev;
    ev = NULLEVENT;
    if(theXF.in == theXF.out)
    {
      return ev;
    }
    ev = theXF.eventQueue[theXF.out];
    theXF.out = (theXF.out + 1)%(uint8_t)sizeof(theXF.eventQueue);
    return ev;    
}
