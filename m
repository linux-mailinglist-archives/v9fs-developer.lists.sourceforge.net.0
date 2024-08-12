Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0191C950612
	for <lists+v9fs-developer@lfdr.de>; Tue, 13 Aug 2024 15:10:59 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1sdrIf-0006xA-2u;
	Tue, 13 Aug 2024 13:10:57 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <csclco@server.cscl.co.in>) id 1sdrId-0006x1-7v
 for v9fs-developer@lists.sourceforge.net;
 Tue, 13 Aug 2024 13:10:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :List-Unsubscribe:Message-ID:From:Date:Subject:To:Sender:Reply-To:Cc:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wGCObYJp68cfQ9Z5YJUqgPsPNL2KVWyzRYTij0iv+SM=; b=ahojHiLDio9LV1KETMVQ5Kdjev
 qAsopo9BrLj+ONulXzfABtlJj3VRHlHbyJhNHEGXljaiS+pwiR3hrpLKZtETQ5mMBt4nbI76C87Md
 1ZO0x7FrA7u4WB5nqid85ftCKJss+U/k5DbsfwxED8o6AfZKCjjtGIKXXbGz2VBG2Wxs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:List-Unsubscribe:
 Message-ID:From:Date:Subject:To:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wGCObYJp68cfQ9Z5YJUqgPsPNL2KVWyzRYTij0iv+SM=; b=kjyGwBE6PS8WdKtpo01Rh7LOpI
 YrYdQxoV3LVgVi7wFjCcpKMEytg3H0IaZQyIn3GRok56rCZnStWSWgdqCJ9HmOdN2lAaRRNYMR8k0
 bd+PM8kns7FMhPzeojJt1uetTR+9RGDpqTKl9l+XhxRYPVaCWwLxOhyMwOEOBUerUsII=;
Received: from server.cscl.co.in ([115.124.105.159])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sdrId-00042C-4H for v9fs-developer@lists.sourceforge.net;
 Tue, 13 Aug 2024 13:10:55 +0000
Received: from csclco by server.cscl.co.in with local (Exim 4.96.2)
 (envelope-from <csclco@server.cscl.co.in>) id 1sdf3J-0004i6-1y
 for v9fs-developer@lists.sourceforge.net;
 Tue, 13 Aug 2024 05:36:17 +0530
To: v9fs-developer@lists.sourceforge.net
X-PHP-Script: dev.cscl.co.in/uploads/gallery/files/success.php for
 115.124.105.159
X-PHP-Originating-Script: 1000:success.php
Date: Mon, 12 Aug 2024 23:59:25 +0000
Message-ID: <7ec64de623c1f72197e42809d807290f@dev.cscl.co.in>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - server.cscl.co.in
X-AntiAbuse: Original Domain - lists.sourceforge.net
X-AntiAbuse: Originator/Caller UID/GID - [1000 992] / [47 12]
X-AntiAbuse: Sender Address Domain - server.cscl.co.in
X-Get-Message-Sender-Via: server.cscl.co.in: authenticated_id: csclco/from_h
X-Authenticated-Sender: server.cscl.co.in: support@dev.cscl.co.in
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Spam-Score: 2.2 (++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:        
 
 Content analysis details:   (2.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
                             blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URIs: logodix.com]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 SPF_NONE               SPF: sender does not publish an SPF Record
  0.0 HTML_FONT_LOW_CONTRAST BODY: HTML font color similar or
                             identical to background
  0.0 HTML_MESSAGE           BODY: HTML included in message
  0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
                             DNSWL was blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [115.124.105.159 listed in list.dnswl.org]
  2.2 PHP_SCRIPT             Sent by PHP script
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1sdrId-00042C-4H
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Your Package Cannot Be Delivered
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
From: DHL via V9fs-developer <v9fs-developer@lists.sourceforge.net>
Reply-To: DHL <support@dev.cscl.co.in>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

CgkKCQkKCQkJCgkJCQoJCQkJCgkJCQkJCgkJCQkJCcKgCgkJCQkJCQoJCQkJCQkKCQkJCQkJCgkJ
CQkJCQoJCQkJCQkJCgkJCQkJCQkJCgkJCQkJCQkJCQoJCQkJCQkJCQkKCQkJCQkJCQkJCgkJCQkJ
CQkJCgkJCQkJCQkJCgkJCQkJCQkJCcKgCgkJCQkJCQkJCgkJCQkJCQkJCgkJCQkJCQkJCQoJCQkJ
CQkJCQnCoAoKCQkJCQkJCQkJwqAKCgkJCQkJCQkJCVRoZSBzaGlwbWVudCBOOsKgNDc4NTYyMjQ3
ODXCoGludGVuZGVkIGZvciB5b3Ugd2FzIGhhbmRlZCBvdmVyIHRvwqBESEzCoGFuZCBpcyBleHBl
Y3RlZCB0byBiZSBkZWxpdmVyZWQgb27CoDE0LzA4LzIwMjQuCgkJCQkJCQkJCQoJCQkJCQkJCQlQ
bGVhc2UgY29uZmlybSBwYXltZW50ICgyLjk5ICQpLiBUaGUgb25saW5lIHZlcmlmaWNhdGlvbiBt
dXN0IGJlIGNvbXBsZXRlZCBiZWZvcmUgaXQgZXhwaXJlcy4KCQkJCQkJCQkJVG8gcGF5IGFuZCB0
cmFjayB5b3VyIHNoaXBtZW50LMKgY2xpY2sgaGVyZToKCgkJCQkJCQkJCQoJCQkJCQkJCQlTaGlw
bWVudCB0cmFja2luZwoJCQkJCQkJCQkKCQkJCQkJCQkKCQkJCQkJCQoJCQkJCQkKCgkJCQkJCcKg
CgoJCQkJCQlUaGFuayB5b3UgZm9yIHVzaW5nIE9uIERlbWFuZCBEZWxpdmVyeS4KCQkJCQkJCgkJ
CQkJCQoKCQkJCQkJCgkJCQkJCQkKCQkJCQkJCQkKCQkJCQkJCQkJwqAKCQkJCQkJCQkJwqAKCQkJ
CQkJCQkJwqAKCQkJCQkJCQkJwqAKCQkJCQkJCQkJwqAKCQkJCQkJCQkJMjAyNMKgwqkgLSBBbGwg
cmlnaHRzIHJlc2VydmVkLgoJCQkJCQkJCQoJCQkJCQkJCgkJCQkJCQoJCQkJCQkKCQkJCQkKCQkJ
CQoJCQkKCQkJCgkJCgkKCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fClY5ZnMtZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApWOWZzLWRldmVsb3BlckBsaXN0
cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlz
dGluZm8vdjlmcy1kZXZlbG9wZXIK
