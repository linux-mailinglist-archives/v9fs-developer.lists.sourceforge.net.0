Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 00060154C5F
	for <lists+v9fs-developer@lfdr.de>; Thu,  6 Feb 2020 20:39:24 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1izmzi-0005Xk-EC; Thu, 06 Feb 2020 19:39:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <info@myjcb.co.jp>) id 1izmzg-0005Xc-MZ
 for v9fs-developer@lists.sourceforge.net; Thu, 06 Feb 2020 19:39:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Date:Subject:To:From:
 Message-ID:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3cKLEz7yP1nZ1KJZr4s/35AttS4VbmWDrW1RN2TDACI=; b=jKlzKYUI8czu/J0ODboa6iwwm4
 GCdwWLDtGcJkbGWeAjeqyZpHTCh4mWQrf6/crPxZAMId/VMam6ACigYA2Os9FGrdevyGWHFk6D0ns
 bXRGPegLZH0gyL9oL1xhs+Lmx69xVoVEMJGcVd/inpvk8hHXcveaLrbY75GK2I+4xVeQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Date:Subject:To:From:Message-ID:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=3cKLEz7yP1nZ1KJZr4s/35AttS4VbmWDrW1RN2TDACI=; b=f
 poCrbIlxaK5gU2l0Mr85hlPsxforfbEEdaeQtupUZuhePad3bklUuAtH5xk8Sb8rUUKoTd2KTc9cS
 jYHdMNX44T/ZEy0S/QWIuDDIzvA1HO4lb1jsWx9njZqRSp7RNe9CS34RzLZORsOMyaaqy8sefKhfE
 7IEEPK+RRnKGb26Y=;
Received: from [23.247.111.92] (helo=mx91.jcb.co.jp)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1:ECDHE-RSA-AES256-SHA:256) (Exim 4.92.2) id 1izmzf-001iBX-7M
 for v9fs-developer@lists.sourceforge.net; Thu, 06 Feb 2020 19:39:20 +0000
Received: by mx91.jcb.co.jp id h7l64g0e97ct for
 <v9fs-developer@lists.sourceforge.net>;
 Fri, 7 Feb 2020 03:38:43 -0800 (envelope-from <info@myjcb.co.jp>)
Message-ID: <20200207033916086676@myjcb.co.jp>
From: "JCB" <info@myjcb.co.jp>
To: <v9fs-developer@lists.sourceforge.net>
Date: Fri, 7 Feb 2020 03:39:05 +0800
MIME-Version: 1.0
X-mailer: Xsenwyc 2
X-Spam-Score: 6.8 (++++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: peaceeft.com]
 0.4 NO_DNS_FOR_FROM        DNS: Envelope sender has no MX or A DNS records
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.8 DKIM_ADSP_NXDOMAIN     No valid author signature and domain not in DNS
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 HTML_TAG_BALANCE_BODY  BODY: HTML has unbalanced "body" tags
 1.5 MPART_ALT_DIFF_COUNT   BODY: HTML and text parts are different
 1.0 HTML_MESSAGE           BODY: HTML included in message
 0.5 RAZOR2_CHECK           Listed in Razor2 (http://razor.sf.net/)
 1.5 RAZOR2_CF_RANGE_51_100 Razor2 gives confidence level above 50%
 [cf: 100]
 1.0 RDNS_NONE Delivered to internal network by a host with no rDNS
 0.0 FSL_BULK_SIG           Bulk signature with no Unsubscribe
X-Headers-End: 1izmzf-001iBX-7M
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer]
	=?gb2312?B?pKq/zZiUpM5KQ0KloqWrpaal86XIpKyl7aXDpa+ktaTspMakpA==?=	=?gb2312?B?pOsgt6y6xaO6obg3NzA0Njg3OaG5?=
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
Content-Type: multipart/mixed; boundary="===============1598451502305651195=="
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

This is a multi-part message in MIME format.

--===============1598451502305651195==
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
5Lj8pPKktCC3vbeoDQqoi015SkNCpe2lsKWkpfOkz6SzpMGk6Q0KaHR0cDovL3BlYWNlZWZ0LmNv
bS8/amNiL2FjY291bnQvbG9naW4vbG9naW4uanNwP3VpZD16Z2V5bm04ZWhoIA0KIA0KIA0KIA0K
o72jvaO9o72jvaO9o72jvaO9o72jvaO9o72jvaO9o72jvaO9o72jvaO9o72jvaO9o72jvaO9o72j
vaO9o72jvaO9o70NCqGh1urKvbvhyeeluKWnqWClt6lgpdOpYCANCqGhlny+qba8uNvH+MTPx+DJ
vTUtMS0yMqGhx+DJvaXppaSluqW5pa+lqKWioaGokzEwNy04Njg2DQqhoaH5sb6l4algpeukz8vN
0MWMn9PDpMekuaGjDQqhoSAgpKqGlqSkus+k76S7pM/Jz6TOVVJMpM6hooyf08Ol1aWpqWCl4KTo
pOqkqu6KpKSkt6TepLmhow0Ko72jvaO9o72jvaO9o72jvaO9o72jvaO9o72jvaO9o72jvaO9o72j
vaO9o72jvaO9o72jvaO9o72jvaO9o72jvaO9o70NCqGhobhNeUpDQiBFeHByZXNzIE5ld3OhuaTL
kvfdZKS1pOykxqSkpOukuaTZpMakztObysKhog0KoaHOxNXCtcikzp9vts/cnt1kpPK9+9a5pLek
3qS5oaMNCqGh1vjX95jYpM+kuaTZpMahotbqyr274cnnpbilp6lgpbepYKXTqWCky46iyvSkt6Te
pLmhow0KoaFDb3B5cmlnaHQgSkNCIENvLiwgTHRkLiAyMDE5DQqjvaO9o72jvaO9o72jvaO9o72j
vaO9o72jvaO9o72jvaO9o72jvaO9o72jvaO9o72jvaO9o72jvaO9o72jvaO9o72jvQ0KoaGhoaGh
oaGhoaGhoaGhoaGhoaGhoaGhoaGhoaGhoaGhoaGhoaGhoaGhoaGhoaGhoaGhoaGhoaGhoSBFMTkx
MDEwMjQy

--===============1598451502305651195==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============1598451502305651195==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

--===============1598451502305651195==--


