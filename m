Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B10C949B56
	for <lists+v9fs-developer@lfdr.de>; Wed,  7 Aug 2024 00:34:44 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1sbSlN-0004E9-Tm;
	Tue, 06 Aug 2024 22:34:42 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <qine83vo@server-614661.fondnews.org>)
 id 1sbSlL-0004E2-OR for v9fs-developer@lists.sourceforge.net;
 Tue, 06 Aug 2024 22:34:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:Subject:Reply-To:From:To:Date:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OcR6f059X0DloOIEIzopG+ZpMzYl7SGtcW/L7zlVztA=; b=aJueAHHsUncqj5N/Lwx7bdh0L0
 h/LCNq7VJ7p7J6Qx0iSSgts0GF9MA4N1QduVezsqex171D7ek+bNQ1+IpTK+CZgjoXCf6h+XptKYf
 VGDrxye5P9SXYbH1CULtK25GEugqau12kybIVx4JGI+u/rNdSg2+pw77mRBrtd74MuqI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Subject:
 Reply-To:From:To:Date:Sender:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=OcR6f059X0DloOIEIzopG+ZpMzYl7SGtcW/L7zlVztA=; b=m
 Dup4rst4rjYh5WOQvDYWUXjNyqeuOnCMmLpXsBcD/wpsJHNkO+jzLC+QIvM3NSiPsw6qd4HKgv2Ei
 QM/iR0lpfr+Ji/Gpxxlq+VIp1VE8nJBdAUjulm07UBaVlaqVArPMgIAteGNUV5OwEFAQTdrNOJ9vK
 tzybil0nKu1TFlZc=;
Received: from [50.6.170.184] (helo=50-6-170-184.unifiedlayer.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sbSlL-0002mQ-RA for v9fs-developer@lists.sourceforge.net;
 Tue, 06 Aug 2024 22:34:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=fondnews.org; s=default; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:Message-ID:Subject:Reply-To:From:To:Date:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OcR6f059X0DloOIEIzopG+ZpMzYl7SGtcW/L7zlVztA=; b=iTCOvDlifUbMXWDMQPMqe/9JZT
 gxvSFSaendbsVaZoy1LCQg3xXu37x0gzBCgRssF1aISZlKH95BdXdseTWgSSU1PbkhQqGWEg6fT/9
 NIWJOX/kL7CVTQlcgjMF3Oly1nrGj2aocq5v3+ycODx6lCXqrOba78EggyB/wz/E7ATTeTTKu0WKX
 O4qHAmUH5l8co26ZvNYfNjCNJufzeFzMZ4XmlKZiHNnfkScCFES3B1uIEzPcun22ZrdogYn0GjlkU
 DZpyc5eHEtup2A+5dYwfEtrDZoK2Tev1iRto4rLAr8rcjugS/jyqlkXDEQK3EQcGT7VDvwAuEKPmj
 ztRstNCA==;
Received: from qine83vo by server-614661.fondnews.org with local (Exim 4.96.2)
 (envelope-from <qine83vo@server-614661.fondnews.org>)
 id 1sbSku-007QsV-1H for v9fs-developer@lists.sourceforge.net;
 Tue, 06 Aug 2024 22:34:12 +0000
Date: Tue, 6 Aug 2024 18:33:04 -0400
To: v9fs-developer@lists.sourceforge.net
From: KRA PHILIPPE <krphlipp@gmail.com>
Message-ID: <a8dbf63f3229f90341a8854388024f4c@gmail.com>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - server-614661.fondnews.org
X-AntiAbuse: Original Domain - lists.sourceforge.net
X-AntiAbuse: Originator/Caller UID/GID - [1003 976] / [47 12]
X-AntiAbuse: Sender Address Domain - server-614661.fondnews.org
X-Get-Message-Sender-Via: server-614661.fondnews.org: authenticated_id:
 qine83vo/only user confirmed/virtual account not confirmed
X-Authenticated-Sender: server-614661.fondnews.org: qine83vo
X-Source: 
X-Source-Args: php-fpm: pool fondnews_org                               
X-Source-Dir: fondnews.org:/public_html
X-Spam-Score: -1.6 (-)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  ﻿Hello, I hope this email finds you well. After going through
    your business profile I believe we can do business together. I have a very
    profitable business which I would like your company to handle and execute
    on a partnership basis. There is this wealthy cattle farmer who needs a very
    important cattle vaccine. 
 
 Content analysis details:   (-1.6 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
                             blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URIs: fondnews.org]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
                             high trust
                             [50.6.170.184 listed in list.dnswl.org]
  1.0 FORGED_GMAIL_RCVD      'From' gmail.com does not match 'Received'
                             headers
  0.0 SPF_NONE               SPF: sender does not publish an SPF Record
  0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [krphlipp[at]gmail.com]
  0.0 DKIM_ADSP_CUSTOM_MED   No valid author signature, adsp_override is
                              CUSTOM_MED
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
  0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
                             EnvelopeFrom freemail headers are
                             different
  1.3 RDNS_NONE              Delivered to internal network by a host with no rDNS
  1.2 NML_ADSP_CUSTOM_MED    ADSP custom_med hit, and not from a mailing
                             list
X-Headers-End: 1sbSlL-0002mQ-RA
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Contract
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
Reply-To: WKRAPHIL20@caramail.fr
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

77u/SGVsbG8sCgpJIGhvcGUgdGhpcyBlbWFpbCBmaW5kcyB5b3Ugd2VsbC4KQWZ0ZXIgZ29pbmcg
dGhyb3VnaCB5b3VyIGJ1c2luZXNzIHByb2ZpbGUgSSBiZWxpZXZlIHdlIGNhbiBkbyBidXNpbmVz
cyB0b2dldGhlci4KCkkgaGF2ZSBhIHZlcnkgcHJvZml0YWJsZSBidXNpbmVzcyB3aGljaCBJIHdv
dWxkIGxpa2UgeW91ciBjb21wYW55IHRvIGhhbmRsZSBhbmQgZXhlY3V0ZSBvbiBhIHBhcnRuZXJz
aGlwIGJhc2lzLgpUaGVyZSBpcyB0aGlzIHdlYWx0aHkgY2F0dGxlIGZhcm1lciB3aG8gbmVlZHMg
YSB2ZXJ5IGltcG9ydGFudCBjYXR0bGUgdmFjY2luZS4KCldlIHdpbGwgZ2V0IHRoZSB2YWNjaW5l
IGF0IGEgcHJpY2Ugb2YgVVNENTc1IHBlciBjYXJ0b24gYW5kIHNlbGwgaXQgdG8gdGhlIGZhcm1l
ciBhdCBVU0QxMjUwIHBlciBjYXJ0b24uCgpUaGUgZmFybWVyIHdpbGwgbWFrZSBhbiB1cGZyb250
IHBheW1lbnQgb2YgNzAlIG9mIGhpcyB0b3RhbCBvcmRlciB0byB5b3VyIGNvbXBhbnkgYW5kIHBh
eSB0aGUgYmFsYW5jZSAzMCUgd2hlbiB0aGUgc2hpcG1lbnQgaXMgcmVhZHkuCgpIZSBuZWVkcyBt
b3JlIHRoYW4gNTAwMCBjYXJ0b25zIG5vdy4KCkNhbiB5b3UgZ2V0IGJhY2sgdG8gbWUgZm9yIGRl
dGFpbHM/CgpUaGlzIGNvbnRyYWN0IGlzIDEwMCUgcmlzayBmcmVlIGFuZCBndWFyYW50ZWVkIHJl
dHVybnMuCgpSZWdhcmRzLAoKS3JhIFBoaWxpcHBlCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KVjlmcy1kZXZlbG9wZXIgbWFpbGluZyBsaXN0ClY5ZnMt
ZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdl
Lm5ldC9saXN0cy9saXN0aW5mby92OWZzLWRldmVsb3Blcgo=
