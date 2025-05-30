! * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * 
!   Copyright by The HDF Group.                                               *
!   All rights reserved.                                                      *
!                                                                             *
!   This file is part of HDF5.  The full HDF5 copyright notice, including     *
!   terms governing use, modification, and redistribution, is contained in    *
!   the COPYING file, which can be found at the root of the source code       *
!   distribution tree, or in https://www.hdfgroup.org/licenses.               *
!   If you do not have access to either file, you may request a copy from     *
!   help@hdfgroup.org.                                                        *
! * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
!
!
! This file is automatically generated by H5match_types.c and contains HDF5 Fortran90 type definitions.
!
       MODULE H5FORTRAN_TYPES
         USE ISO_C_BINDING
         !
         !  HDF5 integers
         !
        INTEGER, PARAMETER :: H5_FORTRAN_NUM_INTEGER_KINDS = 4
        INTEGER, PARAMETER :: HADDR_T = 8
        INTEGER, PARAMETER :: HSIZE_T = 8
        INTEGER, PARAMETER :: HSSIZE_T = 8
        INTEGER, PARAMETER :: OFF_T = 8
        INTEGER, PARAMETER :: SIZE_T = 4
        INTEGER, PARAMETER :: TIME_T = 4
        INTEGER, PARAMETER :: Fortran_INTEGER = 4
        INTEGER, DIMENSION(1:4), PARAMETER :: Fortran_INTEGER_AVAIL_KINDS = (/1,2,4,8/)
        INTEGER, PARAMETER :: Fortran_REAL_C_FLOAT = 4
        INTEGER, PARAMETER :: Fortran_REAL_C_DOUBLE = 8
        INTEGER, PARAMETER :: Fortran_REAL_C_LONG_DOUBLE = 10
        INTEGER, PARAMETER :: HID_T = 8
        INTEGER, PARAMETER :: Fortran_REAL = C_FLOAT
        INTEGER, PARAMETER :: Fortran_DOUBLE = C_DOUBLE
        INTEGER, PARAMETER :: H5R_DSET_REG_REF_BUF_SIZE_F = 12
        INTEGER, PARAMETER :: H5O_MAX_TOKEN_SIZE_F = 16

        INTEGER(SIZE_T), PARAMETER :: OBJECT_NAMELEN_DEFAULT_F = -1

        END MODULE H5FORTRAN_TYPES
