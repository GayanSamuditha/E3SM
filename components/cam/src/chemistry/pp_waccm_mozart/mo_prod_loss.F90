






      module mo_prod_loss

      use shr_kind_mod, only : r8 => shr_kind_r8

      private
      public :: exp_prod_loss
      public :: imp_prod_loss

      contains

      subroutine exp_prod_loss( prod, loss, y, rxt, het_rates )

      use ppgrid, only : pver

      implicit none

!--------------------------------------------------------------------
! ... dummy args
!--------------------------------------------------------------------
      real(r8), dimension(:,:,:), intent(out) :: &
            prod, &
            loss
      real(r8), intent(in) :: y(:,:,:)
      real(r8), intent(in) :: rxt(:,:,:)
      real(r8), intent(in) :: het_rates(:,:,:)



!--------------------------------------------------------------------
! ... loss and production for Explicit method
!--------------------------------------------------------------------


         loss(:,:,1) = ((rxt(:,:,103) +rxt(:,:,104) +rxt(:,:,105))* y(:,:,3) &
                  +rxt(:,:,131)* y(:,:,22) +rxt(:,:,162)* y(:,:,27) + rxt(:,:,47) &
                  + rxt(:,:,48) + het_rates(:,:,15))* y(:,:,15)
         prod(:,:,1) = 0._r8
         loss(:,:,2) = ((rxt(:,:,92) +rxt(:,:,93))* y(:,:,3) + rxt(:,:,5) &
                  + het_rates(:,:,7))* y(:,:,7)
         prod(:,:,2) = 0._r8
         loss(:,:,3) = ((rxt(:,:,138) +rxt(:,:,139))* y(:,:,22) + het_rates(:,:,19)) &
                 * y(:,:,19)
         prod(:,:,3) = (rxt(:,:,46) +rxt(:,:,74) +rxt(:,:,223)*y(:,:,55))*y(:,:,51) &
                  +.380_r8*rxt(:,:,48)*y(:,:,15) +rxt(:,:,198)*y(:,:,41)*y(:,:,27)
         loss(:,:,4) = (rxt(:,:,106)* y(:,:,3) +rxt(:,:,150)* y(:,:,22) +rxt(:,:,157) &
                 * y(:,:,27) + het_rates(:,:,20))* y(:,:,20)
         prod(:,:,4) = (1.440_r8*rxt(:,:,48) +rxt(:,:,105)*y(:,:,3))*y(:,:,15)
         loss(:,:,5) = (rxt(:,:,199)* y(:,:,22) +rxt(:,:,198)* y(:,:,27) + rxt(:,:,36) &
                  + het_rates(:,:,41))* y(:,:,41)
         prod(:,:,5) = 0._r8
         loss(:,:,6) = (rxt(:,:,100)* y(:,:,3) +rxt(:,:,202)* y(:,:,22) + rxt(:,:,43) &
                  + het_rates(:,:,42))* y(:,:,42)
         prod(:,:,6) = 0._r8
         loss(:,:,7) = (rxt(:,:,95)* y(:,:,3) + rxt(:,:,39) + het_rates(:,:,43)) &
                 * y(:,:,43)
         prod(:,:,7) = 0._r8
         loss(:,:,8) = (rxt(:,:,96)* y(:,:,3) + rxt(:,:,40) + het_rates(:,:,44)) &
                 * y(:,:,44)
         prod(:,:,8) = 0._r8
         loss(:,:,9) = (rxt(:,:,97)* y(:,:,3) + rxt(:,:,41) + het_rates(:,:,45)) &
                 * y(:,:,45)
         prod(:,:,9) = 0._r8
         loss(:,:,10) = (rxt(:,:,98)* y(:,:,3) +rxt(:,:,201)* y(:,:,22) + rxt(:,:,42) &
                  + het_rates(:,:,46))* y(:,:,46)
         prod(:,:,10) = 0._r8
         loss(:,:,11) = (rxt(:,:,99)* y(:,:,3) + rxt(:,:,37) + het_rates(:,:,47)) &
                 * y(:,:,47)
         prod(:,:,11) = 0._r8
         loss(:,:,12) = (rxt(:,:,200)* y(:,:,22) + rxt(:,:,38) + het_rates(:,:,48)) &
                 * y(:,:,48)
         prod(:,:,12) = 0._r8
         loss(:,:,13) = (rxt(:,:,102)* y(:,:,3) + rxt(:,:,44) + het_rates(:,:,49)) &
                 * y(:,:,49)
         prod(:,:,13) = 0._r8
         loss(:,:,14) = (rxt(:,:,101)* y(:,:,3) + rxt(:,:,45) + het_rates(:,:,50)) &
                 * y(:,:,50)
         prod(:,:,14) = 0._r8
         loss(:,:,15) = (rxt(:,:,223)* y(:,:,55) + rxt(:,:,46) + rxt(:,:,74) &
                  + het_rates(:,:,51))* y(:,:,51)
         prod(:,:,15) = (rxt(:,:,138)*y(:,:,22) +rxt(:,:,139)*y(:,:,22))*y(:,:,19) &
                  +.440_r8*rxt(:,:,48)*y(:,:,15)
         loss(:,:,16) = ( + het_rates(:,:,25))* y(:,:,25)
         prod(:,:,16) = 0._r8
         loss(:,:,17) = ( + het_rates(:,:,26))* y(:,:,26)
         prod(:,:,17) = 0._r8

      end subroutine exp_prod_loss

      subroutine imp_prod_loss( prod, loss, y, rxt, het_rates )

      use ppgrid, only : pver

      implicit none

!--------------------------------------------------------------------
! ... dummy args
!--------------------------------------------------------------------
      real(r8), dimension(:), intent(out) :: &
            prod, &
            loss
      real(r8), intent(in) :: y(:)
      real(r8), intent(in) :: rxt(:)
      real(r8), intent(in) :: het_rates(:)



!--------------------------------------------------------------------
! ... loss and production for Implicit method
!--------------------------------------------------------------------


         loss(42) = (rxt(76)* y(2) +rxt(94)* y(3) +rxt(116)* y(9) +rxt(119)* y(10) &
                  +rxt(141)* y(21) +rxt(146)* y(22) +rxt(153)* y(23) +rxt(156)* y(27) &
                  +rxt(182)* y(36) + rxt(3) + rxt(4) + het_rates(1))* y(1)
         prod(42) =rxt(75)*y(4)*y(2)
         loss(32) = (rxt(76)* y(1) + 2._r8*rxt(77)* y(2) +rxt(75)* y(4) +rxt(114) &
                 * y(9) + (rxt(117) +rxt(118))* y(10) +rxt(125)* y(11) +rxt(137) &
                 * y(18) +rxt(145)* y(22) +rxt(152)* y(23) +rxt(155)* y(24) +rxt(163) &
                 * y(29) +rxt(175)* y(32) +rxt(176)* y(33) +rxt(179)* y(34) +rxt(185) &
                 * y(37) +rxt(195)* y(38) +rxt(196)* y(39) +rxt(197)* y(40) &
                  + (rxt(222) +rxt(231))* y(52) +rxt(228)* y(54) + rxt(49) + rxt(50) &
                  + rxt(51) + rxt(62) + rxt(63) + rxt(64) + het_rates(2))* y(2)
         prod(32) = (rxt(1) +2.000_r8*rxt(2) +rxt(55) +rxt(56) +rxt(57) + &
                 2.000_r8*rxt(60) +rxt(67) +rxt(68) +rxt(69) +2.000_r8*rxt(72) + &
                 rxt(89)*y(3) +rxt(90)*y(3) +rxt(111)*y(8) +rxt(220)*y(55) + &
                 rxt(227)*y(54))*y(4) + (rxt(112)*y(9) +rxt(113)*y(10) + &
                 rxt(224)*y(53))*y(8) + (rxt(232)*y(56) +1.150_r8*rxt(233)*y(53)) &
                 *y(57) +rxt(4)*y(1) +rxt(88)*y(3) +rxt(6)*y(9) +rxt(8)*y(10) +rxt(12) &
                 *y(11) +rxt(10)*y(14) +rxt(144)*y(23)*y(21) +rxt(148)*y(22)*y(22) &
                  +rxt(24)*y(29) +rxt(25)*y(30) +rxt(32)*y(37) +rxt(21)*y(59)
         loss(36) = (rxt(94)* y(1) + (rxt(89) +rxt(90))* y(4) + (rxt(92) +rxt(93)) &
                 * y(7) + (rxt(103) +rxt(104) +rxt(105))* y(15) +rxt(106)* y(20) &
                  +rxt(107)* y(32) +rxt(108)* y(38) +rxt(100)* y(42) +rxt(95)* y(43) &
                  +rxt(96)* y(44) +rxt(97)* y(45) +rxt(98)* y(46) +rxt(99)* y(47) &
                  +rxt(102)* y(49) +rxt(101)* y(50) +rxt(91)* y(59) + rxt(88) &
                  + het_rates(3))* y(3)
         prod(36) = (rxt(1) +rxt(109)*y(58))*y(4) +rxt(3)*y(1) +.850_r8*rxt(233)*y(57) &
                 *y(53) +rxt(20)*y(59)
         loss(29) = (rxt(75)* y(2) +rxt(89)* y(3) +rxt(85)* y(6) +rxt(111)* y(8) &
                  +rxt(140)* y(21) +rxt(229)* y(52) + (rxt(226) +rxt(227))* y(54) &
                  +rxt(220)* y(55) +rxt(109)* y(58) + rxt(1) + rxt(2) + rxt(53) &
                  + rxt(55) + rxt(56) + rxt(57) + rxt(60) + rxt(65) + rxt(67) &
                  + rxt(68) + rxt(69) + rxt(72) + het_rates(4))* y(4)
         prod(29) = (rxt(127)*y(11) +rxt(133)*y(16) +rxt(143)*y(21) +rxt(147)*y(22) + &
                 rxt(152)*y(2) +2.000_r8*rxt(153)*y(1) +rxt(154)*y(23) + &
                 rxt(159)*y(27) +rxt(166)*y(29) +rxt(183)*y(36) +rxt(187)*y(37))*y(23) &
                  + (rxt(4) +2.000_r8*rxt(76)*y(2) +2.000_r8*rxt(94)*y(3) + &
                 rxt(116)*y(9) +rxt(119)*y(10) +rxt(141)*y(21) +rxt(146)*y(22) + &
                 rxt(156)*y(27) +rxt(182)*y(36))*y(1) + (rxt(77)*y(2) +rxt(84)*y(6) + &
                 rxt(117)*y(10) +rxt(125)*y(11) +rxt(145)*y(22) +rxt(163)*y(29) + &
                 rxt(185)*y(37))*y(2) + (rxt(165)*y(22) +rxt(169)*y(29) + &
                 rxt(170)*y(29) +rxt(191)*y(37) +rxt(192)*y(37))*y(29) + (rxt(86) + &
                 rxt(87) +2.000_r8*rxt(85)*y(4))*y(6) +rxt(93)*y(7)*y(3) +rxt(83)*y(5) &
                  +rxt(225)*y(53)*y(9) +rxt(13)*y(11) +rxt(129)*y(22)*y(13) &
                  +rxt(193)*y(37)*y(37)
         loss(3) = (rxt(81)* y(1) +rxt(78)* y(2) +rxt(79)* y(4) +rxt(82)* y(51) &
                  + rxt(80) + rxt(83) + het_rates(5))* y(5)
         prod(3) =rxt(89)*y(4)*y(3)
         loss(2) = (rxt(84)* y(2) +rxt(85)* y(4) + rxt(86) + rxt(87) + het_rates(6)) &
                 * y(6)
         prod(2) = (rxt(80) +rxt(82)*y(51) +rxt(78)*y(2) +rxt(79)*y(4) +rxt(81)*y(1)) &
                 *y(5) +rxt(3)*y(1)
         loss(22) = (rxt(111)* y(4) +rxt(112)* y(9) +rxt(113)* y(10) +rxt(224)* y(53) &
                  + rxt(52) + het_rates(8))* y(8)
         prod(22) = (rxt(110)*y(58) +rxt(228)*y(54))*y(2) + (.200_r8*rxt(232)*y(56) + &
                 1.100_r8*rxt(234)*y(52))*y(57) +rxt(226)*y(54)*y(4) +rxt(6)*y(9) &
                  +rxt(221)*y(55)
         loss(33) = (rxt(116)* y(1) +rxt(114)* y(2) +rxt(112)* y(8) +rxt(124)* y(11) &
                  +rxt(132)* y(16) +rxt(115)* y(23) +rxt(167)* y(29) +rxt(188)* y(37) &
                  +rxt(225)* y(53) + rxt(6) + rxt(7) + het_rates(9))* y(9)
         prod(33) = (rxt(109)*y(58) +rxt(111)*y(8))*y(4) + (rxt(8) +rxt(117)*y(2)) &
                 *y(10) +2.000_r8*rxt(92)*y(7)*y(3) +rxt(13)*y(11) +rxt(10)*y(14) &
                  +rxt(230)*y(53)
         loss(35) = (rxt(119)* y(1) + (rxt(117) +rxt(118))* y(2) +rxt(113)* y(8) &
                  +rxt(120)* y(11) +rxt(122)* y(22) +rxt(128)* y(23) +rxt(168)* y(29) &
                  +rxt(189)* y(37) + rxt(8) + het_rates(10))* y(10)
         prod(35) = (rxt(114)*y(2) +rxt(115)*y(23) +rxt(116)*y(1) + &
                 2.000_r8*rxt(124)*y(11) +rxt(132)*y(16) +rxt(167)*y(29) + &
                 rxt(188)*y(37))*y(9) + (rxt(12) +rxt(125)*y(2) +rxt(126)*y(22) + &
                 rxt(127)*y(23))*y(11) + (rxt(15) +rxt(130) +rxt(129)*y(22))*y(13) &
                  + (rxt(9) +rxt(121))*y(14) +rxt(11)*y(12) +rxt(30)*y(34) +rxt(35) &
                 *y(40)
         loss(38) = (rxt(146)* y(1) +rxt(145)* y(2) +rxt(122)* y(10) +rxt(126)* y(11) &
                  +rxt(123)* y(12) +rxt(129)* y(13) +rxt(131)* y(15) +rxt(134)* y(17) &
                  +rxt(136)* y(18) + (rxt(138) +rxt(139))* y(19) +rxt(150)* y(20) &
                  + 2._r8*(rxt(148) +rxt(149))* y(22) +rxt(147)* y(23) +rxt(151) &
                 * y(24) + (rxt(164) +rxt(165))* y(29) +rxt(174)* y(32) +rxt(178) &
                 * y(33) +rxt(180)* y(34) +rxt(186)* y(37) +rxt(194)* y(38) +rxt(199) &
                 * y(41) +rxt(202)* y(42) +rxt(201)* y(46) +rxt(200)* y(48) &
                  + het_rates(22))* y(22)
         prod(38) = (rxt(137)*y(18) +rxt(152)*y(23) +rxt(155)*y(24) +rxt(175)*y(32) + &
                 rxt(176)*y(33) +rxt(195)*y(38) +rxt(196)*y(39))*y(2) &
                  + (rxt(103)*y(15) +rxt(106)*y(20) +2.000_r8*rxt(91)*y(59) + &
                 rxt(107)*y(32) +rxt(108)*y(38))*y(3) + (rxt(115)*y(9) + &
                 rxt(127)*y(11) +2.000_r8*rxt(142)*y(21) +rxt(153)*y(1) + &
                 rxt(160)*y(27))*y(23) +rxt(141)*y(21)*y(1) +rxt(11)*y(12) +rxt(14) &
                 *y(13) +rxt(16)*y(17) +2.000_r8*rxt(22)*y(24) +rxt(27)*y(33) +rxt(33) &
                 *y(39) +rxt(19)*y(59)
         loss(39) = (rxt(125)* y(2) +rxt(124)* y(9) +rxt(120)* y(10) +rxt(135)* y(18) &
                  +rxt(126)* y(22) +rxt(127)* y(23) + rxt(12) + rxt(13) &
                  + het_rates(11))* y(11)
         prod(39) = (rxt(29) +rxt(179)*y(2) +rxt(180)*y(22) +rxt(181)*y(27))*y(34) &
                  + (rxt(9) +rxt(10) +rxt(121))*y(14) + (rxt(118)*y(10) + &
                 rxt(197)*y(40))*y(2) +rxt(119)*y(10)*y(1) +rxt(123)*y(22)*y(12) &
                  +rxt(14)*y(13) +rxt(34)*y(40)
         loss(17) = (rxt(123)* y(22) + rxt(11) + het_rates(12))* y(12)
         prod(17) = (rxt(204) +rxt(210) +rxt(215) +rxt(206)*y(32) +rxt(211)*y(32) + &
                 rxt(217)*y(32))*y(34) + (2.000_r8*rxt(203) +2.000_r8*rxt(209) + &
                 2.000_r8*rxt(214))*y(14) + (rxt(205) +rxt(213) +rxt(216))*y(40) &
                  +rxt(122)*y(22)*y(10) +rxt(135)*y(18)*y(11)
         loss(9) = (rxt(129)* y(22) + rxt(14) + rxt(15) + rxt(130) + het_rates(13)) &
                 * y(13)
         prod(9) =rxt(128)*y(23)*y(10)
         loss(7) = ( + rxt(9) + rxt(10) + rxt(121) + rxt(203) + rxt(209) + rxt(214) &
                  + het_rates(14))* y(14)
         prod(7) =rxt(120)*y(11)*y(10)
         loss(23) = (rxt(132)* y(9) +rxt(133)* y(23) + het_rates(16))* y(16)
         prod(23) = (rxt(103)*y(3) +rxt(131)*y(22) +rxt(162)*y(27))*y(15) &
                  +rxt(134)*y(22)*y(17)
         loss(8) = (rxt(134)* y(22) + rxt(16) + het_rates(17))* y(17)
         prod(8) =rxt(133)*y(23)*y(16)
         loss(27) = (rxt(137)* y(2) +rxt(135)* y(11) +rxt(136)* y(22) +rxt(161)* y(27) &
                  +rxt(184)* y(36) + rxt(17) + rxt(18) + het_rates(18))* y(18)
         prod(27) = (rxt(104)*y(15) +rxt(105)*y(15))*y(3) +rxt(132)*y(16)*y(9) &
                  +rxt(16)*y(17)
         loss(28) = (rxt(141)* y(1) +rxt(140)* y(4) + (rxt(142) +rxt(143) +rxt(144)) &
                 * y(23) + het_rates(21))* y(21)
         prod(28) = (rxt(139)*y(19) +rxt(150)*y(20) +rxt(136)*y(18) +rxt(145)*y(2)) &
                 *y(22) + (rxt(104)*y(15) +rxt(106)*y(20))*y(3) + (rxt(19) + &
                 2.000_r8*rxt(21))*y(59) +rxt(16)*y(17) +2.000_r8*rxt(17)*y(18) &
                  +rxt(157)*y(27)*y(20) +rxt(28)*y(32)
         loss(37) = (rxt(153)* y(1) +rxt(152)* y(2) +rxt(115)* y(9) +rxt(128)* y(10) &
                  +rxt(127)* y(11) +rxt(133)* y(16) + (rxt(142) +rxt(143) +rxt(144)) &
                 * y(21) +rxt(147)* y(22) + 2._r8*rxt(154)* y(23) + (rxt(159) + &
                 rxt(160))* y(27) +rxt(166)* y(29) +rxt(183)* y(36) +rxt(187)* y(37) &
                  + het_rates(23))* y(23)
         prod(37) = (rxt(138)*y(19) +rxt(199)*y(41) +rxt(202)*y(42) +rxt(126)*y(11) + &
                 rxt(146)*y(1) +rxt(151)*y(24) +rxt(164)*y(29) +rxt(186)*y(37))*y(22) &
                  + (rxt(135)*y(11) +rxt(137)*y(2) +rxt(161)*y(27) +rxt(184)*y(36)) &
                 *y(18) + (rxt(15) +rxt(130))*y(13) + (rxt(155)*y(2) +rxt(158)*y(27)) &
                 *y(24) +rxt(104)*y(15)*y(3) +rxt(140)*y(21)*y(4) +rxt(132)*y(16)*y(9) &
                  +rxt(198)*y(41)*y(27)
         loss(14) = (rxt(155)* y(2) +rxt(151)* y(22) +rxt(158)* y(27) + rxt(22) &
                  + het_rates(24))* y(24)
         prod(14) =rxt(149)*y(22)*y(22) +rxt(154)*y(23)*y(23)
         loss(26) = (rxt(91)* y(3) + rxt(19) + rxt(20) + rxt(21) + het_rates(59)) &
                 * y(59)
         prod(26) = (rxt(131)*y(15) +rxt(150)*y(20) +rxt(199)*y(41) +rxt(200)*y(48) + &
                 rxt(201)*y(46) +rxt(202)*y(42) +rxt(123)*y(12) +rxt(129)*y(13) + &
                 rxt(134)*y(17) +rxt(136)*y(18) +rxt(147)*y(23) +rxt(148)*y(22) + &
                 rxt(151)*y(24) +rxt(174)*y(32) +rxt(178)*y(33) +rxt(194)*y(38))*y(22) &
                  + (rxt(207)*y(33) +rxt(208)*y(39) +rxt(212)*y(33) +rxt(218)*y(33) + &
                 rxt(219)*y(39))*y(32) +rxt(144)*y(23)*y(21)
         loss(40) = (rxt(156)* y(1) +rxt(162)* y(15) +rxt(161)* y(18) +rxt(157)* y(20) &
                  + (rxt(159) +rxt(160))* y(23) +rxt(158)* y(24) +rxt(177)* y(33) &
                  +rxt(181)* y(34) +rxt(198)* y(41) + het_rates(27))* y(27)
         prod(40) = (rxt(24) +rxt(163)*y(2) +rxt(164)*y(22) +rxt(167)*y(9) + &
                 2.000_r8*rxt(169)*y(29) +rxt(171)*y(29) +rxt(191)*y(37))*y(29) &
                  + (3.000_r8*rxt(95)*y(43) +2.000_r8*rxt(96)*y(44) + &
                 3.000_r8*rxt(97)*y(45) +rxt(98)*y(46) +4.000_r8*rxt(99)*y(47) + &
                 rxt(107)*y(32))*y(3) + (rxt(199)*y(41) +3.000_r8*rxt(200)*y(48) + &
                 rxt(201)*y(46) +rxt(174)*y(32))*y(22) + (rxt(28) +rxt(175)*y(2)) &
                 *y(32) +2.000_r8*rxt(23)*y(28) +2.000_r8*rxt(26)*y(31) +rxt(27)*y(33) &
                  +rxt(29)*y(34) +rxt(31)*y(35)
         loss(5) = ( + rxt(23) + het_rates(28))* y(28)
         prod(5) = (rxt(206)*y(34) +rxt(207)*y(33) +rxt(211)*y(34) +rxt(212)*y(33) + &
                 rxt(217)*y(34) +rxt(218)*y(33))*y(32) +rxt(181)*y(34)*y(27) &
                  +rxt(170)*y(29)*y(29)
         loss(31) = (rxt(163)* y(2) +rxt(167)* y(9) +rxt(168)* y(10) + (rxt(164) + &
                 rxt(165))* y(22) +rxt(166)* y(23) + 2._r8*(rxt(169) +rxt(170) + &
                 rxt(171) +rxt(172))* y(29) + (rxt(190) +rxt(191) +rxt(192))* y(37) &
                  + rxt(24) + het_rates(29))* y(29)
         prod(31) = (rxt(156)*y(1) +rxt(160)*y(23) +rxt(177)*y(33))*y(27) &
                  + (rxt(176)*y(33) +rxt(179)*y(34))*y(2) +rxt(178)*y(33)*y(22) &
                  +rxt(25)*y(30) +2.000_r8*rxt(173)*y(31) +rxt(30)*y(34)
         loss(4) = ( + rxt(25) + het_rates(30))* y(30)
         prod(4) = (rxt(171)*y(29) +rxt(190)*y(37))*y(29)
         loss(1) = ( + rxt(26) + rxt(173) + het_rates(31))* y(31)
         prod(1) =rxt(172)*y(29)*y(29)
         loss(41) = (rxt(175)* y(2) +rxt(107)* y(3) +rxt(174)* y(22) + (rxt(207) + &
                 rxt(212) +rxt(218))* y(33) + (rxt(206) +rxt(211) +rxt(217))* y(34) &
                  + (rxt(208) +rxt(219))* y(39) + rxt(28) + het_rates(32))* y(32)
         prod(41) = (rxt(157)*y(20) +rxt(162)*y(15) +2.000_r8*rxt(198)*y(41) + &
                 rxt(158)*y(24) +rxt(159)*y(23) +rxt(161)*y(18) +rxt(177)*y(33))*y(27) &
                  +rxt(165)*y(29)*y(22)
         loss(24) = (rxt(176)* y(2) +rxt(178)* y(22) +rxt(177)* y(27) + (rxt(207) + &
                 rxt(212) +rxt(218))* y(32) + rxt(27) + het_rates(33))* y(33)
         prod(24) = (rxt(204) +rxt(210) +rxt(215) +rxt(180)*y(22))*y(34) &
                  +rxt(166)*y(29)*y(23)
         loss(25) = (rxt(179)* y(2) +rxt(180)* y(22) +rxt(181)* y(27) + (rxt(206) + &
                 rxt(211) +rxt(217))* y(32) + rxt(29) + rxt(30) + rxt(204) + rxt(210) &
                  + rxt(215) + het_rates(34))* y(34)
         prod(25) =rxt(168)*y(29)*y(10)
         loss(6) = ( + rxt(31) + het_rates(35))* y(35)
         prod(6) = (rxt(208)*y(39) +rxt(219)*y(39))*y(32) +rxt(192)*y(37)*y(29)
         loss(34) = (rxt(182)* y(1) +rxt(184)* y(18) +rxt(183)* y(23) + het_rates(36)) &
                 * y(36)
         prod(34) = (rxt(32) +rxt(185)*y(2) +rxt(186)*y(22) +rxt(188)*y(9) + &
                 rxt(190)*y(29) +rxt(191)*y(29) +2.000_r8*rxt(193)*y(37))*y(37) &
                  + (rxt(100)*y(42) +rxt(101)*y(50) +rxt(102)*y(49) +rxt(108)*y(38)) &
                 *y(3) + (rxt(202)*y(42) +rxt(194)*y(38))*y(22) +rxt(195)*y(38)*y(2) &
                  +rxt(31)*y(35) +rxt(33)*y(39) +rxt(34)*y(40)
         loss(30) = (rxt(185)* y(2) +rxt(188)* y(9) +rxt(189)* y(10) +rxt(186)* y(22) &
                  +rxt(187)* y(23) + (rxt(190) +rxt(191) +rxt(192))* y(29) &
                  + 2._r8*rxt(193)* y(37) + rxt(32) + het_rates(37))* y(37)
         prod(30) = (rxt(196)*y(39) +rxt(197)*y(40))*y(2) +rxt(182)*y(36)*y(1) &
                  +rxt(35)*y(40)
         loss(16) = (rxt(195)* y(2) +rxt(108)* y(3) +rxt(194)* y(22) + het_rates(38)) &
                 * y(38)
         prod(16) = (rxt(183)*y(23) +rxt(184)*y(18))*y(36)
         loss(18) = (rxt(196)* y(2) + (rxt(208) +rxt(219))* y(32) + rxt(33) &
                  + het_rates(39))* y(39)
         prod(18) = (rxt(205) +rxt(213) +rxt(216))*y(40) +rxt(187)*y(37)*y(23)
         loss(13) = (rxt(197)* y(2) + rxt(34) + rxt(35) + rxt(205) + rxt(213) &
                  + rxt(216) + het_rates(40))* y(40)
         prod(13) =rxt(189)*y(37)*y(10)
         loss(15) = ((rxt(222) +rxt(231))* y(2) +rxt(229)* y(4) +rxt(234)* y(57) &
                  + het_rates(52))* y(52)
         prod(15) = 0._r8
         loss(19) = (rxt(224)* y(8) +rxt(225)* y(9) +rxt(233)* y(57) + rxt(230) &
                  + het_rates(53))* y(53)
         prod(19) = (rxt(53) +rxt(65) +rxt(220)*y(55) +rxt(226)*y(54) +rxt(229)*y(52)) &
                 *y(4) +rxt(223)*y(55)*y(51)
         loss(10) = (rxt(228)* y(2) + (rxt(226) +rxt(227))* y(4) + het_rates(54)) &
                 * y(54)
         prod(10) =rxt(52)*y(8)
         loss(11) = (rxt(220)* y(4) +rxt(223)* y(51) + rxt(221) + het_rates(55)) &
                 * y(55)
         prod(11) = (rxt(49) +rxt(50) +rxt(51) +rxt(62) +rxt(63) +rxt(64) + &
                 rxt(228)*y(54) +rxt(231)*y(52))*y(2) + (rxt(55) +rxt(56) +rxt(57) + &
                 rxt(67) +rxt(68) +rxt(69))*y(4)
         loss(20) = (rxt(232)* y(57) + het_rates(56))* y(56)
         prod(20) = (rxt(230) +rxt(224)*y(8) +rxt(225)*y(9))*y(53) +rxt(222)*y(52) &
                 *y(2) +rxt(227)*y(54)*y(4) +rxt(7)*y(9) +rxt(221)*y(55)
         loss(12) = (rxt(110)* y(2) +rxt(109)* y(4) + het_rates(58))* y(58)
         prod(12) = (rxt(222)*y(2) +.900_r8*rxt(234)*y(57))*y(52) &
                  +.800_r8*rxt(232)*y(57)*y(56)
         loss(21) = (rxt(234)* y(52) +rxt(233)* y(53) +rxt(232)* y(56) &
                  + het_rates(57))* y(57)
         prod(21) = (rxt(53) +rxt(55) +rxt(56) +rxt(57) +rxt(65) +rxt(67) +rxt(68) + &
                 rxt(69))*y(4) + (rxt(49) +rxt(50) +rxt(51) +rxt(62) +rxt(63) + &
                 rxt(64))*y(2) +rxt(52)*y(8) +rxt(7)*y(9)

      end subroutine imp_prod_loss

      end module mo_prod_loss
