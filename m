Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7567A214F92
	for <lists+v9fs-developer@lfdr.de>; Sun,  5 Jul 2020 22:49:12 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jsBZW-00041D-4G; Sun, 05 Jul 2020 20:49:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from
 <bounces+17344838-37d5-v9fs-developer=lists.sourceforge.net@em6119.fa376.com>)
 id 1jsBZV-000417-2A
 for v9fs-developer@lists.sourceforge.net; Sun, 05 Jul 2020 20:49:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4dvL6JMUCrb9LD2TMjtH2oWDwXEt4rVDj2snX94JJd0=; b=iUnWLsa8pDx8c79L1565xoKSZz
 pWWlvuoYutyc7J2UoL1a7X7hIuC+bRvl/jKgZqEXqqhamdshw4vaET+x9Xj125e0Zi3NP9JkieQJw
 YdVDvup3qnDD51/JW8OPVLL79gQ05a45y8aB2n+/EJI/S9ZPC5/POV9SXdfRnjJjF4N4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Date:Subject:To:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=4dvL6JMUCrb9LD2TMjtH2oWDwXEt4rVDj2snX94JJd0=; b=Y
 Y7Ubtggp86gAvU9Y2SCw6XAnJpPcNutP45YRyp3mgR8DqT1fuW98bhHniWNm0rzGVLvcJ8FJq/Uzd
 eXua1NbR6e38DAoqrddspXETKFUxpgTzm7CZs30FJ+0OlXMIoZnH8EmdsmIe0aIFkOBb3rtQzE07j
 whDZtsEAy8SyTypU=;
Received: from wrqvrfdk.outbound-mail.sendgrid.net ([149.72.95.209])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jsBZM-00BY3n-De
 for v9fs-developer@lists.sourceforge.net; Sun, 05 Jul 2020 20:49:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fa376.com; 
 h=from:to:subject:mime-version:content-type; s=s1; 
 bh=4dvL6JMUCrb9LD2TMjtH2oWDwXEt4rVDj2snX94JJd0=; b=dYghKiaeMcrfo
 EuTXL1L692H92m1WfQlRvPfUSff0/DOWcqPl8T8ASf70bJaTVw0s8DqYrYEUfIbe
 yOeh4oj5oPxZHvxr8HkNknWxQc+bgQwgOE/CBDs97M3k2U9lLAcDT1LKIQdHszg2
 YkYtTBOcSnxJPbNAyZa7gYWz044e18=
Received: by filter0496p1iad2.sendgrid.net with SMTP id
 filter0496p1iad2-29514-5F023CAD-15
 2020-07-05 20:48:46.017945213 +0000 UTC m=+509335.598228230
Received: from ijluseq (unknown)
 by ismtpd0001p1hnd1.sendgrid.net (SG) with ESMTP id iyypRlxRT7u7H9EXREmS6g
 for <v9fs-developer@lists.sourceforge.net>;
 Sun, 05 Jul 2020 20:48:45.558 +0000 (UTC)
From: Amazon <Amazon@fa376.com>
To: v9fs-developer <v9fs-developer@lists.sourceforge.net>
Date: Sun, 05 Jul 2020 20:48:46 +0000 (UTC)
Message-ID: <0007ab613f19$1bbec6bb$efe7cc56$@ijluseq>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
X-SG-EID: N1XBR1EmuL1ry2MK5urCrs2kFFnNuJB52KRPo0MACB4JbFq2V7WONv2GIdvRCchKHSXshmbulHg0VA
 LswpgY5++Vd/6n5BIHjjCQtQcpInMlt4PRr3Cy7NlVTuFLoZx26WAKSqfjloCk7g3GY1aFSmY2t7Hf
 Ik/5Ht3hzzJSqKOlQAhctyKm+PJKUUWDOmd61j8++S42u8NQI/idtZsy1kID9gNbTHKq7JmG5MW0R7
 U=
X-Spam-Score: 3.4 (+++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: amazon.co.jp]
 1.2 RCVD_IN_BL_SPAMCOP_NET RBL: Received via a relay in bl.spamcop.net
 [Blocked - see <https://www.spamcop.net/bl.shtml?149.72.95.209>]
 1.3 RCVD_IN_RP_RNBL        RBL: Relay in RNBL,
 https://senderscore.org/blacklistlookup/
 [149.72.95.209 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_MSPIKE_L4      RBL: Bad reputation (-4)
 [149.72.95.209 listed in bl.mailspike.net]
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
 -0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jsBZM-00BY3n-De
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

 


Amazon$B%W%i%$%`$r$4MxMQD:$-$"$j$,$H$&$4$6$$$^$9!#$*5RMM$N(BAmazon$B%W%i%$%`2q0w;q3J$O!"(B2020/07/06$B$K99?7$r7^$($^$9!#$*D4$Y$7$?$H$3$m!"2qHq$N$*;YJ'$$$K;HMQ$G$-$kM-8z$J%/%l%8%C%H%+!<%I$,%"%+%&%s%H$KEPO?$5$l$F$$$^$;$s!#%/%l%8%C%H%+!<%I>pJs$N99?7!"?7$7$$%/%l%8%C%H%+!<%I$NDI2C$K$D$$$F$O0J2<$N<j=g$r$43NG'$/$@$5$$!#(B



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
