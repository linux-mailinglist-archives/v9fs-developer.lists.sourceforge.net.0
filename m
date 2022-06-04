Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DB49653D80D
	for <lists+v9fs-developer@lfdr.de>; Sat,  4 Jun 2022 19:40:10 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nxXkr-0007KM-3W; Sat, 04 Jun 2022 17:40:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <info@yodobashi.com>) id 1nxXkq-0007KG-GV
 for v9fs-developer@lists.sourceforge.net; Sat, 04 Jun 2022 17:40:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :Message-ID:Subject:To:From:Date:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wqZAtK/4+Md29mFAjHPND4hdNW8Xh/GvcOKjrUuLX2s=; b=AQOY8F+u1FhxbltO0/MZSGtRsU
 OYILFXmS1qJj4k5WFL/lCVvWdj4O98p4YaocqmBFFcwCnwgvIw0CirgxSy/8Wk63ZZq0xzSpCRTG6
 0kctnpzu55MbYOv5HTTrHBQu3nFNwqc1wFi9L+lxMuOiA4DakRZMIgbPsA2ifyckDD7o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:Subject:To
 :From:Date:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=wqZAtK/4+Md29mFAjHPND4hdNW8Xh/GvcOKjrUuLX2s=; b=Y
 mb56ddexRH/MXtn2hN811zx4jjHAGSqoQG7dHYf+m1ox+6UAgeVhb91fJ3FUWi+SYBX8UmpjXsgjJ
 o6D1eQfYG85SmoxaNnwtaOVdFqFDpL/g7UBjQ7sK6u7GuvAVATCx5rc6SV1DXg+4IyBp+olcPeyG9
 BgWqFy0DtYNhLs8c=;
Received: from [117.50.183.71] (helo=yodobashi.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtp (Exim 4.94.2)
 id 1nxXkp-005Rb2-Ra
 for v9fs-developer@lists.sourceforge.net; Sat, 04 Jun 2022 17:40:04 +0000
Date: Sun, 5 Jun 2022 01:39:56 +0800
To: <v9fs-developer@lists.sourceforge.net>
Message-ID: <20220605014003657281@yodobashi.com>
X-mailer: Foxmail 6, 13, 102, 15 [cn]
Mime-Version: 1.0
X-Spam-Score: 6.5 (++++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  ■■■「お客様情報」パスワード変更の連絡■■■ （このメールは、配信専用のアドレスで配信されています）
    お客様のお客様情報変更手続きをおこないました。 内容のご確認をお願いいたします。
    （パスワードは、表示しておりません） 
 
 Content analysis details:   (6.5 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  1.0 RCVD_IN_UCE1           RBL: IP Listed in UCEPROTECT Level 1
                             [117.50.183.71 listed in dnsbl-1.uceprotect.net]
  0.9 SPF_FAIL               SPF: sender does not match SPF record (fail)
 [SPF failed: Please see http://www.openspf.org/Why?s=mfrom;id=info%40yodobashi.com;ip=117.50.183.71;r=util-spamd-2.v13.lw.sourceforge.com]
  0.0 SPF_HELO_FAIL          SPF: HELO does not match SPF record (fail)
 [SPF failed: Please see http://www.openspf.org/Why?s=helo;id=yodobashi.com;ip=117.50.183.71;r=util-spamd-2.v13.lw.sourceforge.com]
  1.3 RCVD_IN_VALIDITY_RPBL  RBL: Relay in Validity RPBL,
                             https://senderscore.org/blocklistlookup/
                             [117.50.183.71 listed in bl.score.senderscore.com]
  2.0 PYZOR_CHECK            Listed in Pyzor
                             (https://pyzor.readthedocs.io/en/latest/)
  0.0 FSL_BULK_SIG           Bulk signature with no Unsubscribe
  1.3 RDNS_NONE              Delivered to internal network by a host with no rDNS
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1nxXkp-005Rb2-Ra
Subject: [V9fs-developer]
	=?gb2312?B?peilyaXQpbelyaXDpcils6Xgo7qhuKSqv82YlMfpiPOhuaXRpbml7w==?=	=?gb2312?B?qWClyYnkuPykzt9CvWo=?=
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
From: yodobashi via V9fs-developer <v9fs-developer@lists.sourceforge.net>
Reply-To: yodobashi <admin@yodobashi.com>
Content-Type: multipart/mixed; boundary="===============3281889880594795876=="
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

--===============3281889880594795876==
Content-Type: text/plain;
	charset="gb2312"
Content-Transfer-Encoding: base64

ofah9qH2obikqr/NmJTH6Yjzobml0aW5pe+pYKXJieS4/KTO30K9aqH2ofah9g0Ko6iks6TOpeGp
YKXrpM+hosXk0MWMn9PDpM6loqXJpeyluaTHxeTQxaS1pOykxqSkpN6kuaOpDQoNCqSqv82YlKTO
pKq/zZiUx+mI84nkuPzK1r5BpK2k8qSqpLOkyqSkpN6kt6S/oaMNCsTayN2kzqS0tF/VSqTypKru
iqSkpKSkv6S3pN6kuaGjDQqjqKXRpbml76lgpcmkz6Gise3KvqS3pMakqqTqpN6ku6Tzo6kNCg0K
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0NCqG+ieS4/Iydz/OkzrvhhlSl0aW5pe+pYKXJob8NCrvhhlRJRKGhOqGhdjlmcy1kZXZlbG9w
ZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0DQotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0KDQqh8YnkuPyktaTspL+kqr/NmJTH6YjzIA0K
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0NCuuK1JK3rLrFDQrI1dbQpM6ktN9CvWrPyOuK1JK3rLrFDQoNCqS0tcflaMfpiPOkz6Giz8LT
m6G4pKq/zZiUjJ/Tw6XaqWCluKG5pKuk6aS0tF/VSqSvpMCktaSkoaMNCg0KqIukqr/NmJSMn9PD
pdqpYKW4DQpodHRwczovL3MueWFtLmNvbS9IcjYyMw0KDQotLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0Kofmks6TOpeGpYKXrxNrI3aTL
0MSkoqS/pOqkzqTKpKSI9rrPpM+hoqSqytbK/aTHpLmkrKGipeilyaXQpbc/pcmlw6XIP6WzpeCk
qoaWpKS6z6TvpLu3mb/apNjWwbyxpLTfQr1qpPKkqu6KpKSkpKS/pLek3qS5oaMNCg0KpLOkzqXh
qWCl66TPoaLF5NDFjJ/Tw6TOpaKlyaXspbmkx8Xk0MWktaTspMakpKTepLmhow0KpKrK1sr9pPKk
qpLspLGkpKS/pLek3qS5pKyhoqSzpM6l4algpeukzsTayN2ky6TEpKSkxqTOpKqGlqSkus+k76S7
pM/PwtObpM7fQr1qz8ik3qTHpKruiqSkpKSkv6S3pN6kuaGjDQoNCqXopcml0KW3pcmlw6XIpbOl
4CCkqoaWpKS6z6TvpLu3mb/aDQpFbWFpbDogaW5mb0B5b2RvYmFzaGkuY29tDQoNCg0KQ29weXJp
Z2h0MjAyMiBZb2RvYmFzaGkgQ2FtZXJhIENvLixMdGQuDQo=




--===============3281889880594795876==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============3281889880594795876==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

--===============3281889880594795876==--
