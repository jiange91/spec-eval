/*
 * $Id: splitter.h,v 1.9 2002/02/28 10:54:44 spoel Exp $
 * 
 *                This source code is part of
 * 
 *                 G   R   O   M   A   C   S
 * 
 *          GROningen MAchine for Chemical Simulations
 * 
 *                        VERSION 3.1
 * Copyright (c) 1991-2001, University of Groningen, The Netherlands
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation; either version 2
 * of the License, or (at your option) any later version.
 * 
 * If you want to redistribute modifications, please consider that
 * scientific software is very special. Version control is crucial -
 * bugs must be traceable. We will be happy to consider code for
 * inclusion in the official distribution, but derived work must not
 * be called official GROMACS. Details are found in the README & COPYING
 * files - if they are missing, get the official version at www.gromacs.org.
 * 
 * To help us fund GROMACS development, we humbly ask that you cite
 * the papers on the package - you can find them in the top README file.
 * 
 * For more info, check our website at http://www.gromacs.org
 * 
 * And Hey:
 * Gromacs Runs One Microsecond At Cannonball Speeds
 */
static char *SRCID_splitter_h = "$Id: splitter.h,v 1.9 2002/02/28 10:54:44 spoel Exp $";
extern void split_top(bool bVerbose,int nnodes,t_topology *top,real *capacity);
/* Split the topology (blocks and forces, based on charge groups 
 * and shake blocks.
 * The capacity is releated to the capacity of each node. If all numbers are 
 * equal, load will be distributed equally. If not some (the higher ones)
 * will get more than others. The sum of capacities should be 1.
 */

extern void gen_sblocks(bool bVerbose,int natoms,t_idef *idef,t_block *sblock,
			bool bSettle);
/* Generate shake blocks from the constraint list. Set bSettle to yes for shake
 * blocks including settles. You normally do not want this.
 */