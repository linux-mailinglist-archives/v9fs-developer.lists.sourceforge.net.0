Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BDF2015208D
	for <lists+v9fs-developer@lfdr.de>; Tue,  4 Feb 2020 19:44:17 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1iz3BH-0003Jy-5p; Tue, 04 Feb 2020 18:44:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jlel@jcb.co.jp>) id 1iz3BF-0003Jr-TL
 for v9fs-developer@lists.sourceforge.net; Tue, 04 Feb 2020 18:44:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Date:Subject:To:From:
 Message-ID:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IANLxhIBuFd6UDPDaa9tZEcSnrL8ted92aNTnjs7Aig=; b=NURmkL12Cogabok/iECch5Zh9w
 FZ+O9sNLVvuqe8Q09ecIL9b1FRpKsJcSBL5zWMfvBoOE0jDXXfmGMD4BYaU10UUc4FLHYb+oQGwLo
 E62jUBAf/XLWP93FP7Cjb32NsRHj8o4CbOkGWK7q7Vck2GYki4TOR8+k552h9Y4OjcrA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Date:Subject:To:From:Message-ID:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=IANLxhIBuFd6UDPDaa9tZEcSnrL8ted92aNTnjs7Aig=; b=T
 MT2O2vDuZfnuAkYISGbO3A8EdqCj3Dmr9mw1H3CVzFRZlnKmzfU8qQ37yk6nJlI++yL7+CkcLrCac
 g7eyfHmADrEFTHxJqLbkVW24gOCM4cl8MZ2qBxPQDQVJQN8QDhnWnD62ExsdufRmL0wiZTPd5/7Rs
 caFePV9uj7TgZ+rs=;
Received: from [101.36.64.89] (helo=jcb.co.jp)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtp (Exim 4.92.2)
 id 1iz3BD-00AJGW-AZ
 for v9fs-developer@lists.sourceforge.net; Tue, 04 Feb 2020 18:44:13 +0000
Message-ID: <20200205024411316144@jcb.co.jp>
From: "JCB" <jlel@jcb.co.jp>
To: <v9fs-developer@lists.sourceforge.net>
Date: Wed, 5 Feb 2020 02:43:58 +0800
MIME-Version: 1.0
X-mailer: Zpnfo 2
X-Spam-Score: 4.6 (++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 1.2 RCVD_IN_BL_SPAMCOP_NET RBL: Received via a relay in bl.spamcop.net
 [Blocked - see <https://www.spamcop.net/bl.shtml?101.36.64.89>]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: peaceeft.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 HTTPS_HTTP_MISMATCH    BODY: No description available.
 1.0 HTML_MESSAGE           BODY: HTML included in message
 1.0 RDNS_NONE Delivered to internal network by a host with no rDNS
 0.0 TVD_SPACE_ENCODED      Space ratio & encoded subject
 1.3 TVD_SPACE_RATIO_MINFP  Space ratio
X-Headers-End: 1iz3BD-00AJGW-AZ
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer]
	=?gb2312?B?pKq/zZiUpM5KQ0KloqWrpaal86XIpKyl7aXDpa+ktaTspMakpA==?=	=?gb2312?B?pOsgt6y6xaO6obg0Njg4NDQxOaG5?=
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
Content-Type: multipart/mixed; boundary="===============9049841948957128644=="
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

This is a multi-part message in MIME format.

--===============9049841948957128644==
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
5Lj8pPKktCC3vbeoDQqoi015SkNCpe2lsKWkpfOkz6SzpMGk6Q0KaHR0cHM6Ly9qY2IuY28uanAN
CiANCiANCiANCiANCqO9o72jvaO9o72jvaO9o72jvaO9o72jvaO9o72jvaO9o72jvaO9o72jvaO9
o72jvaO9o72jvaO9o72jvaO9o72jvaO9DQqhodbqyr274cnnpbilp6lgpbepYKXTqWAgDQqhoZZ8
vqm2vLjbx/jEz8fgyb01LTEtMjKhocfgyb2l6aWkpbqluaWvpailoqGhqJMxMDctODY4Ng0KoaGh
+bG+peGpYKXrpM/LzdDFjJ/Tw6THpLmhow0KoaEgIKSqhpakpLrPpO+ku6TPyc+kzlVSTKTOoaKM
n9PDpdWlqalgpeCk6KTqpKruiqSkpLek3qS5oaMNCqO9o72jvaO9o72jvaO9o72jvaO9o72jvaO9
o72jvaO9o72jvaO9o72jvaO9o72jvaO9o72jvaO9o72jvaO9o72jvaO9DQqhoaG4TXlKQ0IgRXhw
cmVzcyBOZXdzobmky5L33WSktaTspMakpKTrpLmk2aTGpM7Tm8rCoaINCqGhzsTVwrXIpM6fb7bP
3J7dZKTyvfvWuaS3pN6kuaGjDQqhodb41/eY2KTPpLmk2aTGoaLW6sq9u+HJ56W4paepYKW3qWCl
06lgpMuOosr0pLek3qS5oaMNCqGhQ29weXJpZ2h0IEpDQiBDby4sIEx0ZC4gMjAxOQ0Ko72jvaO9
o72jvaO9o72jvaO9o72jvaO9o72jvaO9o72jvaO9o72jvaO9o72jvaO9o72jvaO9o72jvaO9o72j
vaO9o70NCqGhoaGhoaGhoaGhoaGhoaGhoaGhoaGhoaGhoaGhoaGhoaGhoaGhoaGhoaGhoaGhoaGh
oaGhoaGhoaEgRTE5MTAxMDI0Mg==

--===============9049841948957128644==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============9049841948957128644==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

--===============9049841948957128644==--


