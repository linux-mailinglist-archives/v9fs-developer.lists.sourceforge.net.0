Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 052DE214BC4
	for <lists+v9fs-developer@lfdr.de>; Sun,  5 Jul 2020 12:08:54 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1js1Zr-0001VM-MM; Sun, 05 Jul 2020 10:08:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from
 <bounces+17336747-c28a-v9fs-developer=lists.sourceforge.net@em5045.urutrade.com>)
 id 1js1Zp-0001VD-O5
 for v9fs-developer@lists.sourceforge.net; Sun, 05 Jul 2020 10:08:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XSqkQgvwTUHCOO1BwmFcpnFNovDTXr8Bjn+2ttS86nY=; b=hJwi4KPmSa/cIFPuIBvLBORAj5
 Pvi/x2sbuQrYqkk/6JhUeZMGwBYrRxpWf0gzW/2VRVWLcafXBK2VXdqBl/6/a5cgr2gPwX7H/owi8
 HAq2tzLr4g6hqS31OuziWh5n5uGUaN7RszSAnMad5LnAgGTgL9s5Gj76ohCozQWApe5s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Date:Subject:To:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=XSqkQgvwTUHCOO1BwmFcpnFNovDTXr8Bjn+2ttS86nY=; b=M
 95tMHHZg+eba8WauLby/iA5kaM/QhRGwA4A0MrrZReDpX/AsxOPBpbAPgky+XF41lq20Unk6YwBEn
 8kLDBbVg9pl6hnnpTeKJiXRa18KO2y1l3ruVMoKba+fwG99kXi1xyeiBpkdX+W3Vyz/STL2XJ01bn
 OSr4UtlbFeRrn4D8=;
Received: from wrqvdnbd.outbound-mail.sendgrid.net ([149.72.210.189])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1js1Zo-008Ap9-3P
 for v9fs-developer@lists.sourceforge.net; Sun, 05 Jul 2020 10:08:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=urutrade.com; 
 h=from:to:subject:mime-version:content-type; s=s1; 
 bh=XSqkQgvwTUHCOO1BwmFcpnFNovDTXr8Bjn+2ttS86nY=; b=X/M8p/ShV4d3g
 epHxhiPglfA4vqO+urqjlFz/1RtzssNxB+fUNJHrchd9cZ9Zss5jOjg4c1UbC6Ll
 9fvzb1/pBA8Rs7Nw53Ebu8KbCzEGnBQCB0YcPs6rvP4UgEc7AbZLKbFDVuCMW/D1
 YeGG+kFZtEQMALHK8ueoiOQRJsztUs=
Received: by filter2013p1mdw1.sendgrid.net with SMTP id
 filter2013p1mdw1-13969-5F01A694-1C
 2020-07-05 10:08:20.890023421 +0000 UTC m=+475477.903591015
Received: from c (unknown)
 by ismtpd0025p1las1.sendgrid.net (SG) with ESMTP id JGIyXv6yQNGMrhWmc2dmlQ
 for <v9fs-developer@lists.sourceforge.net>;
 Sun, 05 Jul 2020 10:08:20.362 +0000 (UTC)
From: Amazon.co.jp <Amazon@urutrade.com>
To: v9fs-developer <v9fs-developer@lists.sourceforge.net>
Date: Sun, 05 Jul 2020 10:08:21 +0000 (UTC)
Message-ID: <007fc7a7e510$bdebed59$f91db187$@c>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
X-SG-EID: N1XBR1EmuL1ry2MK5urCrs2kFFnNuJB52KRPo0MACB4JbFq2V7WONv2GIdvRCchKHYfbM/im36a9ro
 ywyQTtuthL/bV/dGdMuPFXuTftEH3ATJqDxFYDfaBzsQ2cePU1CryWTI5IX8iQpTF1OIhtTGLIm6+B
 wkltFM653zZkiDyaIVYhz/DPRMBZLkNXcahLuVc2W28KS44akhLQbCYSYPxt347W8kcqRspxDqjj7x
 xP2BT35EJz7cEB5Ap84tqI
X-Spam-Score: 2.8 (++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: sendgrid.net]
 1.2 RCVD_IN_BL_SPAMCOP_NET RBL: Received via a relay in bl.spamcop.net
 [Blocked - see <https://www.spamcop.net/bl.shtml?149.72.210.189>]
 0.0 RCVD_IN_MSPIKE_L5      RBL: Very bad reputation (-5)
 [149.72.210.189 listed in bl.mailspike.net]
 1.3 RCVD_IN_RP_RNBL        RBL: Relay in RNBL,
 https://senderscore.org/blacklistlookup/
 [149.72.210.189 listed in bl.score.senderscore.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
 0.0 RCVD_IN_MSPIKE_BL      Mailspike blacklisted
 0.0 T_REMOTE_IMAGE         Message contains an external image
 -0.6 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1js1Zo-008Ap9-3P
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?iso-2022-jp?b?GyRCJCo7WUonJCRKfUshJE4+cEpzGyhC?=
 =?iso-2022-jp?b?GyRCJHI5OT83GyhC?=
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <v9fs-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=v9fs-developer>
List-Post: <mailto:v9fs-developer@lists.sourceforge.net>
List-Help: <mailto:v9fs-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=subscribe>
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

$B$*;YJ'$$J}K!$N>pJs$r99?7$7$F$/$@$5$$!#(BUpdate default card for your membership.

 
 $B%^%$%9%H%"(B? $B%?%$%`%;!<%k(B? $B%.%U%H7t(B 

 


Amazon$B%W%i%$%`$r$4MxMQD:$-$"$j$,$H$&$4$6$$$^$9!#$*5RMM$N(BAmazon$B%W%i%$%`2q0w;q3J$O!"(B2020/06/09$B$K99?7$r7^$($^$9!#$*D4$Y$7$?$H$3$m!"2qHq$N$*;YJ'$$$K;HMQ$G$-$kM-8z$J%/%l%8%C%H%+!<%I$,%"%+%&%s%H$KEPO?$5$l$F$$$^$;$s!#%/%l%8%C%H%+!<%I>pJs$N99?7!"?7$7$$%/%l%8%C%H%+!<%I$NDI2C$K$D$$$F$O0J2<$N<j=g$r$43NG'$/$@$5$$!#(B



1. $B%"%+%&%s%H%5!<%S%9$+$i(BAmazon$B%W%i%$%`2q0w>pJs$r4IM}$9$k$K%"%/%;%9$7$^$9!#(B


2. Amazon$B%W%i%$%`$KEPO?$7$?(BAmazon.co.jp$B$N%"%+%&%s%H$r;HMQ$7$F%5%$%s%$%s$7$^$9!#(B


3. $B:8B&$KI=<($5$l$F$$$k!V8=:_$N;YJ'J}K!!W$N2<$K$"$k!V;YJ'J}K!$rJQ99$9$k!W$N%j%s%/$r%/%j%C%/$7$^$9!#(B


4. $BM-8z4|8B$N99?7$^$?$O?7$7$$%/%l%8%C%H%+!<%I>pJs$rF~NO$7$F$/$@$5$$!#(B



Amazon$B%W%i%$%`$r7QB3$7$F$4MxMQ$$$?$@$/$?$a$K!"2qHq$N$*;YJ'$$$K$4;XDj$$$?$@$$$?%/%l%8%C%H%+!<%I$,;HMQ$G$-$J$$>l9g$O!"%"%+%&%s%H$KEPO?$5$l$F$$$kJL(B $B$N%/%l%8%C%H%+!<%I$K2qHq$r@A5a$5$;$FD:$-$^$9!#2qHq$N@A5a$,=PMh$J$$>l9g$O!"$*5RMM$N(BAmazon$B%W%i%$%`2q0w;q3J$O<:8z$7!"FCE5$r$4MxMQ$G$-$J$/$J$j$^$9!#(B


Amazon.co.jp$B%+%9%?%^!<%5!<%S%9(B 




 
$B;YJ'J}K!$N>pJs$r99?7$9$k(B 



 


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
