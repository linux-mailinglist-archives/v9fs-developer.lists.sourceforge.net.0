Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A25C721537E
	for <lists+v9fs-developer@lfdr.de>; Mon,  6 Jul 2020 09:50:50 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jsLto-0006Nr-0d; Mon, 06 Jul 2020 07:50:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from
 <bounces+17355503-b537-v9fs-developer=lists.sourceforge.net@em5029.noobmk.com>)
 id 1jsLtm-0006NE-Kb
 for v9fs-developer@lists.sourceforge.net; Mon, 06 Jul 2020 07:50:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+6nE7X3C0PIgtNE6VFgc2kIcuaRHddegg3wUgMlAK1c=; b=abLyFmJljsNkzxdZzDHY49zi6s
 fL1NHdOfDyqzCdjgE2TTw/X2UEBFfaC3Dw4xrgrSNB3wPLsXeGgYo4F8wWnJjLUYiW5sPorlYTPE4
 B7AIDhx9Iw9aT5wUjavxXmAXso0zx/zxE7yKFfdNyZpzPbK8SpfosZWXt4qseYkQl3sE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Date:Subject:To:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=+6nE7X3C0PIgtNE6VFgc2kIcuaRHddegg3wUgMlAK1c=; b=Q
 wxIvWqpEVgslIX7zWukb4bp0biUnvQ05aErzlCD2DMKhn1q9UD5IMwRsV/xeLtYD7c9Oa6HXkHOPH
 VDRpczfHJNkWtd/TkvrJc4zK5bMK+Ox24dcGzIzC5sLWHcQJD9EL3Z6/LySWNKGqruTNETXsdVHlX
 MSj8jecoi05Gf7ac=;
Received: from xvfrpxhc.outbound-mail.sendgrid.net ([168.245.58.12])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jsLtj-00EmYQ-W9
 for v9fs-developer@lists.sourceforge.net; Mon, 06 Jul 2020 07:50:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=noobmk.com; 
 h=from:to:subject:mime-version:content-type; s=s1; 
 bh=+6nE7X3C0PIgtNE6VFgc2kIcuaRHddegg3wUgMlAK1c=; b=ofBJ/2Dr9fKvz
 As6V+beOk5so4ar7q0GQ9hFZlzPGTuEMv8evGeOqr9nudxlr22rIzHVuzgbjyaAv
 vONU9bQOrYuvzfjZ7RtXDD8F2uzXAA7ZZwfzBBNMxglffvjlcEA85H0uZ4Pvy5fU
 fACycp1/G4EMvJsjD0FAZMkOh+nXDE=
Received: by filter0885p1iad2.sendgrid.net with SMTP id
 filter0885p1iad2-3997-5F02D7C6-1B
 2020-07-06 07:50:30.986612219 +0000 UTC m=+548111.303984525
Received: from Amazon.co.jp (unknown)
 by ismtpd0022p1las1.sendgrid.net (SG) with ESMTP id NyIBigG6TDaY-67RzJSshw
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 06 Jul 2020 07:50:30.698 +0000 (UTC)
From: Amazon <Amazon@noobmk.com>
To: v9fs-developer <v9fs-developer@lists.sourceforge.net>
Date: Mon, 06 Jul 2020 07:50:31 +0000 (UTC)
Message-ID: <0077b2245809$e1299365$84e57712$@Amazon.co.jp>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
X-SG-EID: N1XBR1EmuL1ry2MK5urCrs2kFFnNuJB52KRPo0MACB4JbFq2V7WONv2GIdvRCchKEpUXz7rjP/m8VS
 q7oDdNaogqGmdrLk2glpiejSPFkQ+ZCNYBSf3zhagIgFHgje6COIaWGNtHwz3eMrRF3HVlAeneXvBs
 0m415yQUoZBYp28+0oFQ8TMmkVCAXI/n3AkAAKSMAsks7qJOCoyb6lhMOX1/OyMV2fFQufcKJ0qrMS
 w=
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [168.245.58.12 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [168.245.58.12 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
 0.0 T_REMOTE_IMAGE         Message contains an external image
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jsLtj-00EmYQ-W9
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
