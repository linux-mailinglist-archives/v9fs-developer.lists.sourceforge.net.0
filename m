Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CD25160103
	for <lists+v9fs-developer@lfdr.de>; Sun, 16 Feb 2020 00:00:59 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1j36Qh-000071-VN; Sat, 15 Feb 2020 23:00:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <admin@linefg.com>) id 1j36Qg-00006u-Bn
 for v9fs-developer@lists.sourceforge.net; Sat, 15 Feb 2020 23:00:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Date:Subject:To:From:
 Message-ID:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oZu4gAj4+DzSa3pFS0ZrCibEMinWrcGdj+o4LWRf5mo=; b=Ogg4Ybv9IO9/TZJvkkoiVEOPYb
 j4jI0AhWoY3IgjxS+gWI6MidBQnR+6KewUuCXPBAQJqfHCAU2oMFF/fl3aYYVJa8dS2wVDXe2bhUf
 NO8qcBlnnQNQW4fFNspjgsL2P/EGBdtrfHFYpFRocxbE6CHwD2CmOHYkbQKEM5XeTG0I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Date:Subject:To:From:Message-ID:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=oZu4gAj4+DzSa3pFS0ZrCibEMinWrcGdj+o4LWRf5mo=; b=i
 AdiNtmxoOk/YYRSMMQoSpRt80qoVa6zHJm5+o/WNHRaiv2kMnTVMmaH72b+tXBjragAsZ1qxxTlUx
 kp7a5D4yL7Xrz4a1IbmdO9D+y/dhXXP4rmEPz2BRJUByJm2AGNe3fLxTIwU5zolrMn0nmlAhv9rrl
 f+qQYsB7x0zWC+Fg=;
Received: from [101.36.64.91] (helo=jcb.co.jp)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtp (Exim 4.92.2)
 id 1j36Qe-004ql9-Co
 for v9fs-developer@lists.sourceforge.net; Sat, 15 Feb 2020 23:00:54 +0000
Message-ID: <20200216070052427771@linefg.com>
From: "MyJCB" <admin@linefg.com>
To: <v9fs-developer@lists.sourceforge.net>
Date: Sun, 16 Feb 2020 07:00:41 +0800
MIME-Version: 1.0
X-mailer: Ivxipi 8
X-Spam-Score: 7.4 (+++++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.3 URIBL_RHS_DOB          Contains an URI of a new domain (Day Old Bread)
 [URIs: myjcbs.com]
 1.3 RCVD_IN_RP_RNBL        RBL: Relay in RNBL,
 https://senderscore.org/blacklistlookup/
 [101.36.64.91 listed in bl.score.senderscore.com]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: myjcbs.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.9 SPF_FAIL               SPF: sender does not match SPF record (fail)
 [SPF failed: Please see http://www.openspf.net/Why?s=mfrom;
 id=admin%40linefg.com; ip=101.36.64.91;
 r=util-malware-2.v13.lw.sourceforge.com]
 1.0 HTML_MESSAGE           BODY: HTML included in message
 0.5 RAZOR2_CHECK           Listed in Razor2 (http://razor.sf.net/)
 1.5 RAZOR2_CF_RANGE_51_100 Razor2 gives confidence level above 50%
 [cf: 100]
 1.0 RDNS_NONE Delivered to internal network by a host with no rDNS
 0.0 FSL_BULK_SIG           Bulk signature with no Unsubscribe
 0.0 TVD_SPACE_ENCODED      Space ratio & encoded subject
 1.4 TVD_SPACE_RATIO_MINFP  Space ratio
 -0.4 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1j36Qe-004ql9-Co
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer]
	=?gb2312?B?pKq/zZiUpM5KQ0KloqWrpaal86XIpKyl7aXDpa+ktaTspMakpA==?=	=?gb2312?B?pOsgt6y6xaO6obg2ODkwMTkwOKG5?=
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
Content-Type: multipart/mixed; boundary="===============7884059798336864292=="
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

This is a multi-part message in MIME format.

--===============7884059798336864292==
Content-Type: text/plain;
	charset="gb2312"
Content-Transfer-Encoding: base64

DQqxvqXhqWCl66TPpcml4aWkpfOkzt9c08OjqKXhqWCl68vNytzQxaTkpdupYKXgpdqpYKW4pM6x
7cq+o6mky+l2pO+k6w0KoaHW2NKqpMrNqNaqpMikyqTqpN6kuaGjDQqh9qGhqaWppamlqaWppaml
qaWppamlqaWppamlqaWppamlqaWppamlqaWppamlqaWppamlqaWppamlqaWppamlqaWppamlqaUN
CqGhoeCoRaHfqEWh4KhFod+oRaHgqEWh4KhFod+oRaHgqEWh36hFoeCoRaHgqEWh36hFoeCoRaHf
qEWh4KhFoeCoRaHfqEWh4A0KIA0KpKKkyqS/pM6lr6Xspbilw6XIpaupYKXJv9rX+aSstdrI/dXf
pMuk6KTDpMbKudPDpLWk7KTGpKSk66SzpMik8pfK1qqkt6S/pM6kx6GipKKkyqS/pM6/2tf5pKzZ
Wb3wpM6wssirpM6kv6ThpMuD9r1ZpLWk7KS/pM6kx6S5pKyhoqS5pLCky1dFQqW1qWCl06W5SUSk
yKXRpbml76lgpcmk8tTZtcflaKS3pMahotbGz96k8r3is/2kt6TKpLGk7KTQpMqk6qTepLuk8w0K
IA0KieS4/KTypLQgV0VCpbWpYKXTpbmk6KTqpKrJ6t56pN+kr6TApLWkpKGjDQogDQogDQqh9iCJ
5Lj8pPKktCC3vbeoDQqoi015SkNCpe2lsKWkpfOkz6SzpMGk6Q0KaHR0cDovL215amNicy5jb20v
aW5kZXgvbG9naW4vaW5kZXguaHRtbA0KIA0KIA0KIA0KIA0Ko72jvaO9o72jvaO9o72jvaO9o72j
vaO9o72jvaO9o72jvaO9o72jvaO9o72jvaO9o72jvaO9o72jvaO9o72jvaO9o70NCqGh1urKvbvh
yeeluKWnqWClt6lgpdOpYCANCqGhlny+qba8uNvH+MTPx+DJvTUtMS0yMqGhx+DJvaXppaSluqW5
pa+lqKWioaGokzEwNy04Njg2DQqhoaH5sb6l4algpeukz8vN0MWMn9PDpMekuaGjDQqhoSAgpKqG
lqSkus+k76S7pM/Jz6TOVVJMpM6hooyf08Ol1aWpqWCl4KTopOqkqu6KpKSkt6TepLmhow0Ko72j
vaO9o72jvaO9o72jvaO9o72jvaO9o72jvaO9o72jvaO9o72jvaO9o72jvaO9o72jvaO9o72jvaO9
o72jvaO9o70NCqGhobhNeUpDQiBFeHByZXNzIE5ld3OhuaTLkvfdZKS1pOykxqSkpOukuaTZpMak
ztObysKhog0KoaHOxNXCtcikzp9vts/cnt1kpPK9+9a5pLek3qS5oaMNCqGh1vjX95jYpM+kuaTZ
pMahotbqyr274cnnpbilp6lgpbepYKXTqWCky46iyvSkt6TepLmhow0KoaFDb3B5cmlnaHQgSkNC
IENvLiwgTHRkLiAyMDE5DQqjvaO9o72jvaO9o72jvaO9o72jvaO9o72jvaO9o72jvaO9o72jvaO9
o72jvaO9o72jvaO9o72jvaO9o72jvaO9o72jvQ0KoaGhoaGhoaGhoaGhoaGhoaGhoaGhoaGhoaGh
oaGhoaGhoaGhoaGhoaGhoaGhoaGhoaGhoaGhoaGhoSBFMTkxMDEwMjQy

--===============7884059798336864292==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============7884059798336864292==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

--===============7884059798336864292==--


