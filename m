Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B9C196F02A
	for <lists+v9fs-developer@lfdr.de>; Fri,  6 Sep 2024 11:50:52 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1smVcA-00046W-JL;
	Fri, 06 Sep 2024 09:50:50 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <yumi@sandchips.com>) id 1smVc9-00046O-BS
 for v9fs-developer@lists.sourceforge.net;
 Fri, 06 Sep 2024 09:50:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Date:From:MIME-Version:Subject:To:Message-ID:
 Content-Type:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+qJXVLHgnNc5VhIBHRhjmV3b2wCG7kEkJ8iy3p6sxPc=; b=ASJz9xx6YKYK+38FQ048Q9najf
 aJGOMTKVMOhD6fkeT2Bwa10r74ETZP8EJE2KovfSy2laPNLzH7Ju9txXzGji7m7FpqWGLnoQ1pdGB
 8NEF/Jmf6Rstg8GhmGP1rc4hB/lKC3Nsjnpk1d7cZo93LTbi45Ti90E9v/FkKFOp/61A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Date:From:MIME-Version:Subject:To:Message-ID:Content-Type:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=+qJXVLHgnNc5VhIBHRhjmV3b2wCG7kEkJ8iy3p6sxPc=; b=c
 c320W4XExvBc38kJu/ZWcHqcCYuj5xd/UG2CJ7+QQL02xAAQ092foseGr5KpeYS332rKlFp0D7DKU
 VIt+FZchkI4wHrAgSkS9fFxioXCRMxTc5nuTTFIVP5mBAsG2Z305EhE94XiQixbFJmUXFh1RfXozL
 C3pXwYwNxlG6Cl68=;
Received: from mail-m2463.xmail.ntesmail.com ([45.195.24.63])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1smVc6-00084H-Qo for v9fs-developer@lists.sourceforge.net;
 Fri, 06 Sep 2024 09:50:48 +0000
Received: from sandchips.com (localhost [127.0.0.1])
 by smtp.ntesmail.com (Wmail) with ESMTP id BD31920A68
 for <v9fs-developer@lists.sourceforge.net>;
 Fri,  6 Sep 2024 16:45:40 +0800 (CST)
Message-ID: <AKYAEgArICLE9qwUaNoydKpQ.1.1725612340768.Wmail.yumi@sandchips.com>
To: v9fs-developer@lists.sourceforge.net
X-Priority: 3
X-Originating-IP: 14.153.77.215
MIME-Version: 1.0
Received: from yumi@sandchips.com( [10.156.19.39] ) by ajax-webmail (
 [127.0.0.1] ) ; Fri, 6 Sep 2024 16:45:40 +0800 (GMT+08:00)
Date: Fri, 6 Sep 2024 16:45:40 +0800 (GMT+08:00)
X-WM-Spam-Status: e1kfGhgUHx5ZQUhXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
 tZV1koWUFDSUNOSEtLS0k3V1ktWUFJV1kPCRoVCBIfWUFZGkJPTFZOTUNISk5PGUIYTB1WDBZVEw
 ETFhoSFyQUDg9ZV1kYEgtZQVlKS1VKTk1VSkJVSEJZV1kWGg8SFR0UWUFZT0tIVUpLSUJCQkhVT1
 VLWQY+
X-WM-Tid: 0a91c682b51d09b0kunm1919e2577ca
X-WM-MType: 2
X-WM-Sender-Digest: e1kMHhlZQQ8JDh5XWRIfHhUPWUFZRzowIjo#HDoJMjg3PkIKDC4aNRQC
 HzALKlVKVUpMSU5NSklIT0pJTktVMxYaEhdVAg4WEjsIGhUfGBMSCwhVGBQWRVlXWRILWUFZSktV
 Sk5NVUpCVUhCWVdZCAFZQU9OSENPN1dZFAsPEhQVCFlBTDcG
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  We are authorized distributor of Microchip Hi dear,
 Greetings! This is Yumi Huang from S&D Electronics(HK) Co.,
 Ltd. S&D Electronics established in 2015,
 we are a value-added service provider dedicated to provide comprehensive
 electronic components supp [...] 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [45.195.24.63 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [45.195.24.63 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
X-Headers-End: 1smVc6-00084H-Qo
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: Re: [V9fs-developer] =?utf-8?q?ATSAMD21J18A-AUT_Microchip?=
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: "deprecated: use v9fs@lists.linux.dev"
 <v9fs-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=v9fs-developer>
List-Post: <mailto:v9fs-developer@lists.sourceforge.net>
List-Help: <mailto:v9fs-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=subscribe>
From: Yumi Huang via V9fs-developer <v9fs-developer@lists.sourceforge.net>
Reply-To: Yumi Huang <yumi@sandchips.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

V2UgYXJlIGF1dGhvcml6ZWQgZGlzdHJpYnV0b3Igb2YgTWljcm9jaGlwCgpIaSBkZWFyLAogCkdy
ZWV0aW5ncyEKVGhpcyBpcyBZdW1pIEh1YW5nIGZyb20gUyZEIEVsZWN0cm9uaWNzKEhLKSBDby4s
IEx0ZC4KUyZEIEVsZWN0cm9uaWNzIGVzdGFibGlzaGVkIGluIDIwMTUsd2UgYXJlIGEgdmFsdWUt
YWRkZWQgc2VydmljZSBwcm92aWRlciBkZWRpY2F0ZWQgdG8gcHJvdmlkZSBjb21wcmVoZW5zaXZl
IGVsZWN0cm9uaWMgY29tcG9uZW50cyBzdXBwbHkgY2hhaW4gc29sdXRpb25zIGZvciBPRU0sT0JN
LEVNUyBhbmQgSURILiBXZSBhcmUgYXV0aG9yaXplZCBkaXN0cmlidXRvciBvZiBNaWNyb2NoaXAs
IGFuZCBoYXZlIG91ciBvd24gc3RvY2suCk91ciBtYWluIHByb2R1Y3RzIGluY2x1ZGUgSUMgY2hp
cCwgY2FwYWNpdG9yLHJlc2lzdG9yLHNlbnNvcix0cmFuc2lzdG9yIGV0Yy4KT3VyIGFkdmFudGFn
ZSBicmFuZHM6IE1pY3JvY2hpcCxHRCxTaWVtZW5zLEFCQixTY2huZWlkZXIsUGhvZW5peCxFYXRv
bixNb3Juc3VuLiAKCgpQbHMgY2hlY2sgc29tZSBvZiBvdXIgaW4gc3RvY2sgcGFydHM6CgoKClBJ
QzE2RjE4MjNULUUvU1QKIE1JQ1JPQ0hJUAogS1NaOTAzMVJOWElDLVRSCiBNSUNST0NISVAKIEFU
U0FNRDIxSjE4QS1BVVQKIE1JQ1JPQ0hJUAogVVNYMjA2NC1BRVpHLVRSCiBNSUNST0NISVAKIEEz
UEUzMDAwLVBRRzIwOEkKIE1JQ1JPQ0hJUAogS1NaOTAzMVJOWElDCiBNSUNST0NISVAKIFBJQzE2
RjE1MThULUkvU1MKIE1JQ1JPQ0hJUAogUElDMTZGMTUxOC1JL1NTCiBNSUNST0NISVAKIFBJQzE4
RjY2SzgwLUUvUFQKIE1JQ1JPQ0hJUAogIAogCk91ciBzZXJ2aWNlOgph44CBMTAwJU5ldyBhbmQg
b3JpZ2luYWwgcGFydHMKYuOAgU9uZS1zdG9wIEtJVFRJTkcgc2VydmljZQpj44CBNyoyNCBmYXN0
IGZlZWRiYWNrCmTjgIFFeGNlc3Mgc3RvY2sgcmVzZWxsaW5nCmXjgIFTYW1wbGVzIGF2YWlsYWJs
ZSBmb3IgdGVzdCAoTm8gTU9RKQoKCgpCZXN0IFJlZ2FyZHMgCll1bWkgSHVhbmcKUyZEIEVsZWN0
cm9uaWMoSEspIENvLixMaW1pdGVkCkFkZDogMjgwMUUsVG93ZXIgQSxXb3JsZCBUcmFkZSBQbGF6
YSxOby45LEZ1aG9uZyBSb2FkLApGdW5hbiBDb21tdW5pdHksRnV0aWFuIFN0cmVldCxGdXRpYW4g
RGlzdHJpY3QsU2hlbnpoZW4KV2Vic2l0ZTogd3d3LnNhbmRjaGlwcy5jb20KU2t5cGU6IHl1bWlA
c2FuZGNoaXBzLmNvbQoKVGVsOiArODYtNzU1LTI4MjYwNTE1CgoKCgpJZiB5b3UgZG9uJ3Qgd2Fu
dCB0byByZWNlaXZlIG91ciBlbWFpbHMsIHlvdSBjYW4gZWFzaWx5IHVuc3Vic2NyaWJlIGhlcmUu
CgoKIAoKCg0KDQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KVjlmcy1kZXZlbG9wZXIgbWFpbGluZyBsaXN0ClY5ZnMtZGV2ZWxvcGVyQGxpc3RzLnNvdXJj
ZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby92
OWZzLWRldmVsb3Blcgo=
