/******************************************************************************/
/* FILENAME	: xf.h                                                            */
/*----------------------------------------------------------------------------*/
/* GOAL		  : Offers the femto XF functions                                   */
/*----------------------------------------------------------------------------*/
/* AUTHOR   : Medard Rieder / Pascal Sartoretti                               */
/*----------------------------------------------------------------------------*/
/* DATE:    : original (Medard Rieder 08.2011)                                */
/*            corrections & simplified (Pascal Sartoretti 06.2016)            */
/******************************************************************************/
#ifndef XF_DEF
#define XF_DEF

#include <stdint.h>         // usage of standard types
#include <stdbool.h>        // usage of boolean types

typedef  uint8_t  Event;    // event type


/*----------------------------------------------------------------------------*/
/* depending on usage, change MAXTIMER and MAXEVENT                           */
/*----------------------------------------------------------------------------*/
#define MAXEVENT 15         // number of events in our system 
#define NULLEVENT 0         // no event

/*----------------------------------------------------------------------------*/
typedef struct XF           // the XF structure
{
    Event eventQueue[MAXEVENT];   // the events
    uint8_t in;                   // the events in pointer
    uint8_t out;                  // the events out pointer
} XF;

/******************************************************************************/
/* FUNCTION     : Init the XF structure                                       */
/* INPUT        : -                                                           */
/* OUTPUT       : -                                                           */
/* COMMENTS     : Have to be called once                                      */
/******************************************************************************/
void XF_init();
/******************************************************************************/
/* FUNCTION     : Push an event on the events queue                           */
/* INPUT        : ev - the event number (not 0)                               */
/*                inISR - (true if called in an ISR, else false)              */
/* OUTPUT       : return false if the queue was full, else true               */
/* COMMENTS     : -                                                           */
/******************************************************************************/
bool XF_pushEvent(Event ev);
/******************************************************************************/
/* FUNCTION     : Pop an event on the events queue                            */
/* INPUT        : inISR - (true if called in an ISR, else false)              */
/* OUTPUT       : return the next waiting event if any, else 0                */
/* COMMENTS     : -                                                           */
/******************************************************************************/
Event XF_popEvent(void);

#endif

