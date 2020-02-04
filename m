Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 58F451513AF
	for <lists+v9fs-developer@lfdr.de>; Tue,  4 Feb 2020 01:37:52 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1iymDu-0003o7-76; Tue, 04 Feb 2020 00:37:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <rephsfmez@jcb.co.jp>) id 1iymDs-0003nz-Jx
 for v9fs-developer@lists.sourceforge.net; Tue, 04 Feb 2020 00:37:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Date:Subject:To:From:
 Message-ID:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XcK4m1nyNLQsPGToc6UW2IRJQNJwQg8S27uxz/WauqA=; b=GdgNzWF+GUQmCBCxNBhn+PO178
 gQMHvA6XhN1wVGoHH9kLi5pFfJ684r7MggnB8EPVdHcR96bEtJKna8XDDzqpwkd+uFSu25JopKaB4
 BBH6HQB/Pn8sF82Jpf91vfZsq1iHoumk8qp6JnelqbDdCpnxz8RHYQXTzq8V9QhJKvwo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Date:Subject:To:From:Message-ID:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=XcK4m1nyNLQsPGToc6UW2IRJQNJwQg8S27uxz/WauqA=; b=T
 GDEtTTsN9E96mOuFK3rbH0TqnmZm2Mv0Eei1buwMcemCBgCzDKWfhnWTp1LM2KXu+B0w/Uq9jQIdm
 StVUezaW5Es2zrWw52FLvAnMI7bGA/JgyhqCpeaS1Si+s3JK+iE7AaOutvIUCvBJIQvaXNmzHHkMO
 xZIeXzBHOFcgFbzw=;
Received: from [60.213.235.109] (helo=jcb.co.jp)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtp (Exim 4.92.2)
 id 1iymDq-00Fz2X-5D
 for v9fs-developer@lists.sourceforge.net; Tue, 04 Feb 2020 00:37:48 +0000
Message-ID: <20200204083745882405@jcb.co.jp>
From: "JCB" <rephsfmez@jcb.co.jp>
To: <v9fs-developer@lists.sourceforge.net>
Date: Tue, 4 Feb 2020 08:37:35 +0800
MIME-Version: 1.0
X-mailer: Hdnuoo 3
X-Spam-Score: 6.6 (++++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: eso-safe.com]
 1.3 RCVD_IN_RP_RNBL        RBL: Relay in RNBL,
 https://senderscore.org/blacklistlookup/
 [60.213.235.109 listed in bl.score.senderscore.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 0.5 RAZOR2_CHECK           Listed in Razor2 (http://razor.sf.net/)
 1.5 RAZOR2_CF_RANGE_51_100 Razor2 gives confidence level above 50%
 [cf: 100]
 1.0 RDNS_NONE Delivered to internal network by a host with no rDNS
 0.0 FSL_BULK_SIG           Bulk signature with no Unsubscribe
 0.0 TVD_SPACE_ENCODED      Space ratio & encoded subject
 1.3 TVD_SPACE_RATIO_MINFP  Space ratio
X-Headers-End: 1iymDq-00Fz2X-5D
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer]
	=?gb2312?B?pKq/zZiUpM5KQ0KloqWrpaal86XIpKyl7aXDpa+ktaTspMakpA==?=	=?gb2312?B?pOsgt6y6xaO6obg1MDQ3ODkwM6G5?=
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
Content-Type: multipart/mixed; boundary="===============3236672947324670188=="
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

This is a multi-part message in MIME format.

--===============3236672947324670188==
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
5Lj8pPKktCC3vbeoDQqoi015SkNCpe2lsKWkpfOkz6SzpMGk6Q0KaHR0cHM6Ly9qY2Itc2FmZXR5
LmVzby1zYWZlLmNvbS9pbmRleC9sb2dpbi9pbmRleC5odG1sDQogDQogDQogDQogDQqjvaO9o72j
vaO9o72jvaO9o72jvaO9o72jvaO9o72jvaO9o72jvaO9o72jvaO9o72jvaO9o72jvaO9o72jvaO9
o72jvQ0KoaHW6sq9u+HJ56W4paepYKW3qWCl06lgIA0KoaGWfL6ptry428f4xM/H4Mm9NS0xLTIy
oaHH4Mm9pemlpKW6pbmlr6WopaKhoaiTMTA3LTg2ODYNCqGhofmxvqXhqWCl66TPy83QxYyf08Ok
x6S5oaMNCqGhICCkqoaWpKS6z6TvpLukz8nPpM5VUkykzqGijJ/Tw6XVpampYKXgpOik6qSq7oqk
pKS3pN6kuaGjDQqjvaO9o72jvaO9o72jvaO9o72jvaO9o72jvaO9o72jvaO9o72jvaO9o72jvaO9
o72jvaO9o72jvaO9o72jvaO9o72jvQ0KoaGhuE15SkNCIEV4cHJlc3MgTmV3c6G5pMuS991kpLWk
7KTGpKSk66S5pNmkxqTO05vKwqGiDQqhoc7E1cK1yKTOn2+2z9ye3WSk8r371rmkt6TepLmhow0K
oaHW+Nf3mNikz6S5pNmkxqGi1urKvbvhyeeluKWnqWClt6lgpdOpYKTLjqLK9KS3pN6kuaGjDQqh
oUNvcHlyaWdodCBKQ0IgQ28uLCBMdGQuIDIwMTkNCqO9o72jvaO9o72jvaO9o72jvaO9o72jvaO9
o72jvaO9o72jvaO9o72jvaO9o72jvaO9o72jvaO9o72jvaO9o72jvaO9DQqhoaGhoaGhoaGhoaGh
oaGhoaGhoaGhoaGhoaGhoaGhoaGhoaGhoaGhoaGhoaGhoaGhoaGhoaGhoaGhIEUxOTEwMTAyNDI=

--===============3236672947324670188==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============3236672947324670188==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

--===============3236672947324670188==--


