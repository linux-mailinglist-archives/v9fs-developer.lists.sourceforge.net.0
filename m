Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 16AAE152548
	for <lists+v9fs-developer@lfdr.de>; Wed,  5 Feb 2020 04:44:01 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1izBba-0001KG-Mg; Wed, 05 Feb 2020 03:43:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lidhaje@jcb.co.jp>) id 1izBbZ-0001K9-TU
 for v9fs-developer@lists.sourceforge.net; Wed, 05 Feb 2020 03:43:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Date:Subject:To:From:
 Message-ID:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5bL83pcJRJ7pvQDCmkXzFtII2H4hgKwq/V1bGpMxvmg=; b=TxXFmCK8jewhfgbxpjlIMFvyqi
 pU/3S7bP1krEg7W1oE4CUB/EObiJCuaSeCJYnNx2grvqCRchXq1rcV5o6ukRRnXZVHPUasvDTV0m0
 MI5JzmK5Q+rZ5N0b+myaBTEpzc4RBnbZeIaCmFgqMvFT++wO9BB1V5CU0U3Ye9ZBIViA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Date:Subject:To:From:Message-ID:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=5bL83pcJRJ7pvQDCmkXzFtII2H4hgKwq/V1bGpMxvmg=; b=V
 myMR8qbA28o3ptUxXl1NeMRxAHxGZCrHTb0PA3atc6s3BD0VjGm+iUnEI34QIZ5qAPP+pyow2r/hx
 o4Q2cgyb6FvGi0bzWsszSqRPBFj6VYIalY3PjkpiAwZzgyGOx7qgEIaUM1hDxUqj1b2PKPiHNCpli
 ff3NAvQkqR3CNaHQ=;
Received: from [14.118.208.218] (helo=jcb.co.jp)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtp (Exim 4.92.2)
 id 1izBbV-00AblJ-RS
 for v9fs-developer@lists.sourceforge.net; Wed, 05 Feb 2020 03:43:57 +0000
Message-ID: <20200205114349008407@jcb.co.jp>
From: "JCB" <lidhaje@jcb.co.jp>
To: <v9fs-developer@lists.sourceforge.net>
Date: Wed, 5 Feb 2020 11:43:42 +0800
MIME-Version: 1.0
X-mailer: Edgrddkjy 1
X-Spam-Score: 6.8 (++++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: jcb.co.jp]
 3.6 RCVD_IN_PBL            RBL: Received via a relay in Spamhaus PBL
 [14.118.208.218 listed in zen.spamhaus.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 1.0 RDNS_NONE Delivered to internal network by a host with no rDNS
 0.0 TVD_SPACE_ENCODED      Space ratio & encoded subject
 1.3 TVD_SPACE_RATIO_MINFP  Space ratio
X-Headers-End: 1izBbV-00AblJ-RS
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer]
	=?gb2312?B?pKq/zZiUpM5KQ0KloqWrpaal86XIpKyl7aXDpa+ktaTspMakpA==?=	=?gb2312?B?pOsgt6y6xaO6obgxODY3MDQ3M6G5?=
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
Content-Type: multipart/mixed; boundary="===============2372413148315350951=="
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

This is a multi-part message in MIME format.

--===============2372413148315350951==
Content-Type: text/plain;
	charset="gb2312"
Content-Transfer-Encoding: base64

DQoNCrG+peGpYKXrpM+lyaXhpaSl86TO31zTw6OopeGpYKXry83K3NDFpOSl26lgpeCl2qlgpbik
zrHtyr6jqaTL6Xak76TrDQqhodbY0qqkys2o1qqkyKTKpOqk3qS5oaMNCqH2oaGppamlqaWppaml
qaWppamlqaWppamlqaWppamlqaWppamlqaWppamlqaWppamlqaWppamlqaWppamlqaWppamlqaWp
pQ0KoaGh4KhFod+oRaHgqEWh36hFoeCoRaHgqEWh36hFoeCoRaHfqEWh4KhFoeCoRaHfqEWh4KhF
od+oRaHgqEWh4KhFod+oRaHgDQogDQqkoqTKpL+kzqWvpeyluKXDpcilq6lgpcm/2tf5pKy12sj9
1d+ky6TopMOkxsq508OktaTspMakpKTrpLOkyKTyl8rWqqS3pL+kzqTHoaKkoqTKpL+kzr/a1/mk
rNlZvfCkzrCyyKukzqS/pOGky4P2vVmktaTspL+kzqTHpLmkrKGipLmksKTLV0VCpbWpYKXTpblJ
RKTIpdGluaXvqWClyaTy1Nm1x+VopLekxqGi1sbP3qTyveKz/aS3pMqksaTspNCkyqTqpN6ku6Tz
DQogDQqJ5Lj8pPKktCBXRUKltalgpdOluaTopOqkqsnq3nqk36SvpMCktaSkoaMNCiANCiANCqH2
IInkuPyk8qS0ILe9t6gNCqiLTXlKQ0Kl7aWwpaSl86TPpLOkwaTpDQpodHRwczovL2pjYi5jby5q
cC9sb2dpbg0KIA0KIA0Ko72jvaO9o72jvaO9o72jvaO9o72jvaO9o72jvaO9o72jvaO9o72jvaO9
o72jvaO9o72jvaO9o72jvaO9o72jvaO9o70NCqGh1urKvbvhyeeluKWnqWClt6lgpdOpYCANCqGh
lny+qba8uNvH+MTPx+DJvTUtMS0yMqGhx+DJvaXppaSluqW5pa+lqKWioaGokzEwNy04Njg2DQqh
oaH5sb6l4algpeukz8vN0MWMn9PDpMekuaGjDQqhoSAgpKqGlqSkus+k76S7pM/Jz6TOVVJMpM6h
ooyf08Ol1aWpqWCl4KTopOqkqu6KpKSkt6TepLmhow0Ko72jvaO9o72jvaO9o72jvaO9o72jvaO9
o72jvaO9o72jvaO9o72jvaO9o72jvaO9o72jvaO9o72jvaO9o72jvaO9o70NCqGhobhNeUpDQiBF
eHByZXNzIE5ld3OhuaTLkvfdZKS1pOykxqSkpOukuaTZpMakztObysKhog0KoaHOxNXCtcikzp9v
ts/cnt1kpPK9+9a5pLek3qS5oaMNCqGh1vjX95jYpM+kuaTZpMahotbqyr274cnnpbilp6lgpbep
YKXTqWCky46iyvSkt6TepLmhow0KoaFDb3B5cmlnaHQgSkNCIENvLiwgTHRkLiAyMDE5DQqjvaO9
o72jvaO9o72jvaO9o72jvaO9o72jvaO9o72jvaO9o72jvaO9o72jvaO9o72jvaO9o72jvaO9o72j
vaO9o72jvQ0KoaGhoaGhoaGhoaGhoaGhoaGhoaGhoaGhoaGhoaGhoaGhoaGhoaGhoaGhoaGhoaGh
oaGhoaGhoaGhoSBFMTkxMDEwMjQy

--===============2372413148315350951==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============2372413148315350951==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

--===============2372413148315350951==--


