Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C910B80A2D
	for <lists+v9fs-developer@lfdr.de>; Sun,  4 Aug 2019 11:49:44 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1huD92-0007w3-K0; Sun, 04 Aug 2019 09:49:40 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from
 <bounce-id=D216=U15855.cluster006.ovh.net=1564899235.14-F64J3@mail-out.cluster006.hosting.ovh.net>)
 id 1huD91-0007vw-1O
 for v9fs-developer@lists.sourceforge.net; Sun, 04 Aug 2019 09:49:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:From:Date:Subject:To:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yYuyn5JfVjHgnx0ralMyhk160HclOaUVEF4d0m66u78=; b=MMKwkrZtCRWVhgD+wx2N4p6L9s
 aXwZ3xL7saIOXbGx/b3ZDcwWRLjItg+m/COGln3D8J65DWrP6xS75oLJvZPRWNNcR2F5PxwEe4u0m
 7HO4J3KxrN7makxBI1tRbSqk+w58Tlwo1t4T/9hGRaJDQHYulhZz3T8iKyIsMia347sU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:From:Date:
 Subject:To:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=yYuyn5JfVjHgnx0ralMyhk160HclOaUVEF4d0m66u78=; b=A
 u7wP4rMRMq+g00S0j3N5nMlJGSP324UhS7td5n4T7I7YaAwYrHj7F9Skzgq0Zp7Ur/eGTFUT3NEq/
 9mM5MJrpw/1Tf3PxXLa6FZNFa1NmjzT3ZozhP5ELzT5aR+UG4o2OZ1eLfATjcr5fjGOMVcjcHsIpb
 9QTnVb6WtOYVMOsY=;
Received: from 7.mo161.mail-out.ovh.net ([46.105.63.229])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1huD8w-00ADLi-VO
 for v9fs-developer@lists.sourceforge.net; Sun, 04 Aug 2019 09:49:38 +0000
Received: from mail-out02.cluster006.gra.hosting.ovh.net (unknown
 [10.110.145.238])
 by mo161.mail-out.ovh.net (Postfix) with ESMTP id 5B8E5AB73B
 for <v9fs-developer@lists.sourceforge.net>;
 Sun,  4 Aug 2019 08:13:55 +0200 (CEST)
Received: from mail-out02.cluster006.gra.hosting.ovh.net
 (localhost.localdomain [127.0.0.1])
 by mail-out02.cluster006.gra.hosting.ovh.net (Postfix) with ESMTP id
 4104524005C for <v9fs-developer@lists.sourceforge.net>;
 Sun,  4 Aug 2019 08:13:55 +0200 (CEST)
Received: from cluster006.hosting.ovh.net (gwa.cluster006.hosting.ovh.net
 [51.68.11.202])
 by mail-out02.cluster006.gra.hosting.ovh.net (Postfix) with ESMTP id
 8BD4124005C for <v9fs-developer@lists.sourceforge.net>;
 Sun,  4 Aug 2019 08:13:54 +0200 (CEST)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
 by localhost.domain.tld (Postfix) with ESMTP id 8A02B6020C
 for <v9fs-developer@lists.sourceforge.net>;
 Sun,  4 Aug 2019 08:13:54 +0200 (CEST)
Received: by cluster006.hosting.ovh.net (Postfix, from userid 15855)
 id 6A30260453; Sun,  4 Aug 2019 08:13:54 +0200 (CEST)
To: v9fs-developer@lists.sourceforge.net
Date: Sun, 4 Aug 2019 06:13:54 +0000
From: SAV MECANUMERIC <sav@mecanumeric.com>
Message-ID: <c3671883fbd5c27b97cb981a52cdf16a@meca-line.com>
X-Priority: 3
X-Mailer: PHPMailer 5.2.9 (https://github.com/PHPMailer/PHPMailer/)
MIME-Version: 1.0
X-Ovh-Tracer-Id: 8620452639401975953
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 10
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduvddruddtgedguddtucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucgfrhhlucfvnfffucdluddtmd
X-Spam-Score: 3.3 (+++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: inskydrime.tk]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [46.105.63.229 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 0.5 RAZOR2_CHECK           Listed in Razor2 (http://razor.sf.net/)
 1.5 RAZOR2_CF_RANGE_51_100 Razor2 gives confidence level above 50%
 [cf: 100]
 0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal information
X-Headers-End: 1huD8w-00ADLi-VO
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Merci pour votre message
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

CgpTT0NJRVRFIC8gQ09NUEFOWWdvb2dsZQpWSUxMRSAvIENJVFlNYWRhZ2FzY2FyCk1PREVMRSBN
QUNISU5FIC8gTUFDSElORSBNT0RFTE1lZXQgc2V4eSBnaXJscyBpbiB5b3VyIGNpdHkKTsKwIFNF
UklFIE1BQ0hJTkUgLyBTRVJJQUwgTlVNQkVSIE1BQ0hJTkU0NjY4Ck5PTSBDT05UQUNUIC8gQ09O
VEFDVCBOQU1FS2VpdGhDZWFrcwpURUxFUEhPTkU4NjU1NDIzMTU0MQpFLU1BSUx2OWZzLWRldmVs
b3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKRMOpY3JpdmV6IHZvdHJlIGRlbWFuZGUgLyBEZXNj
cmliZSB5b3VyIHJlcXVlc3RGaW5kIHlvdXJzZWxmIGEgZ2lybCBmb3IgdGhlIG5pZ2h0IGluIHlv
dXIgY2l0eTogaHR0cDovL2luc2t5ZHJpbWUudGsvNzV4MDM/R2NnY1lVMXVEWG1ZbAoKSVA6IDE4
NS45NC4xOTIuODMKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpWOWZzLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMuc291
cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZv
L3Y5ZnMtZGV2ZWxvcGVyCg==
