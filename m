Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AF7F7217808
	for <lists+v9fs-developer@lfdr.de>; Tue,  7 Jul 2020 21:39:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To:Sender:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ugyBy13ReINzs4ZLdxbxDUpXOifGzW9OM6E2VUeFOIg=; b=YOVcEAIlJizqAgu3IWbce/PQsZ
	5fP6B24rXfP0+BXTqAJkDVIKoUYC5E4MEltLK50pzItL26iSAkFluqCQeFH1gBlc/8ZDwg54cSI4H
	h1rTJeC/Y+s8JaaNZzlQPDWN0gIF9Jy3tRdcHdONuYahajq9JE39lAdTxAqIaE2dhTBw=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jstRI-0003IL-MB; Tue, 07 Jul 2020 19:39:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from
 <bounces+17378781-eb25-v9fs-developer=lists.sourceforge.net@sendgrid.net>)
 id 1jstRH-0003IE-Hw
 for v9fs-developer@lists.sourceforge.net; Tue, 07 Jul 2020 19:39:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TP7XGNtgIYeWJvVWCIvL3qZlYi7PlwVMXc1ay+AOGgQ=; b=hBBROb7f/kmjo0Q3jwc02X4th2
 1LK6jZfYoXGk8L+lnMIgwhFFMVwwU2dt+JXqcXwkiNKSHQUR9eEZUpLJJdvdFeKJ+/ncrMHF1reMM
 YOUPj0YMG0iWUFDUulpS4tXqCavBHaRYIGnjotSGASMieoKJyBj0YO8bs3KA8bM75ves=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Date:Subject:To:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=TP7XGNtgIYeWJvVWCIvL3qZlYi7PlwVMXc1ay+AOGgQ=; b=E
 vfkxggGjurJzodgVabYZtQdZPv1RS8+xjUvCkAqlS6UFk7GdEbcFT6QgFoBHc5ig8joJvIdbBcR8R
 Uyx8nZwBhKHYAp690Sly8b06nLZ9zEsgFsKT76dtV3cGfZHOUAvAZ0AwY8w1vQxpXS4KBylRUPBvT
 XezLk56H5bksNVUk=;
Received: from wrqvnpft.outbound-mail.sendgrid.net ([149.72.35.247])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jstRG-00AVpZ-Ak
 for v9fs-developer@lists.sourceforge.net; Tue, 07 Jul 2020 19:39:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sendgrid.net; 
 h=from:to:subject:mime-version:content-type; s=smtpapi; 
 bh=TP7XGNtgIYeWJvVWCIvL3qZlYi7PlwVMXc1ay+AOGgQ=; b=DpSQ1VZ8l6H8j
 UZ9yi563vlqb+YKUsATD2tGOd6SFfStVqZ2Y4LKO192IPjekrPJJoyu5bgXvjf/t
 bcjI1E8e76gYYxE1QrnKotwTQbh62YUeaS5bhz2dQlUX+2MqWlk82NvO2BeuewsS
 5owfy31tmDRAw1sAMal7AzN+JZekSs=
Received: by filter1179p1las1.sendgrid.net with SMTP id
 filter1179p1las1-24932-5F04CF70-22
 2020-07-07 19:39:29.053132809 +0000 UTC m=+677986.005453570
Received: from mfxfhtdai (unknown)
 by ismtpd0007p1maa1.sendgrid.net (SG) with ESMTP id M_3590a4RcygEDBLvIAvHA
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 07 Jul 2020 19:39:28.128 +0000 (UTC)
To: v9fs-developer <v9fs-developer@lists.sourceforge.net>
Date: Tue, 07 Jul 2020 19:39:29 +0000 (UTC)
Message-ID: <00ba02f4e280$26cb73b4$f824cebb$@mfxfhtdai>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
X-SG-EID: N1XBR1EmuL1ry2MK5urCrs2kFFnNuJB52KRPo0MACB4JbFq2V7WONv2GIdvRCchKJB/v0zV0OxJ38I
 ggnZzjpCkKxmfaFCcob3R9HyidG0psj4x1WhUhxMRNvCkynBQIKNVQIfWqS8Ty5xFi15QiQ8l/okH8
 E3Vsmtv9T4gLUsCNLs1yzgaGmhCJKOeBD7YfYxBmhestrSEPlvK7Pnsa6YVbspw+MMuWE34utuWZ9X
 A=
X-Spam-Score: 4.3 (++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: sendgrid.net]
 1.2 RCVD_IN_BL_SPAMCOP_NET RBL: Received via a relay in bl.spamcop.net
 [Blocked - see <https://www.spamcop.net/bl.shtml?149.72.35.247>]
 0.0 RCVD_IN_MSPIKE_L5      RBL: Very bad reputation (-5)
 [149.72.35.247 listed in bl.mailspike.net]
 1.8 DKIM_ADSP_DISCARD      No valid author signature, domain signs all mail
 and suggests discarding the rest
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
 0.0 RCVD_IN_MSPIKE_BL      Mailspike blacklisted
 0.0 T_REMOTE_IMAGE         Message contains an external image
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jstRG-00AVpZ-Ak
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
From: Amazon via V9fs-developer <v9fs-developer@lists.sourceforge.net>
Reply-To: Amazon <amazonn@amazon.co.jp>
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

$B$*;YJ'$$J}K!$N>pJs$r99?7$7$F$/$@$5$$!#(BUpdate default card for your membership.

 
 $B%^%$%9%H%"(B? $B%?%$%`%;!<%k(B? $B%.%U%H7t(B 

 


Amazon$B%W%i%$%`$r$4MxMQD:$-$"$j$,$H$&$4$6$$$^$9!#$*5RMM$N(BAmazon$B%W%i%$%`2q0w;q3J$O!"(B2020/07/08$B$K99?7$r7^$($^$9!#$*D4$Y$7$?$H$3$m!"2qHq$N$*;YJ'$$$K;HMQ$G$-$kM-8z$J%/%l%8%C%H%+!<%I$,%"%+%&%s%H$KEPO?$5$l$F$$$^$;$s!#%/%l%8%C%H%+!<%I>pJs$N99?7!"?7$7$$%/%l%8%C%H%+!<%I$NDI2C$K$D$$$F$O0J2<$N<j=g$r$43NG'$/$@$5$$!#(B



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
