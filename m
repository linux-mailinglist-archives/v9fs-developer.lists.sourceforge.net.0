Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D6D8C543B98
	for <lists+v9fs-developer@lfdr.de>; Wed,  8 Jun 2022 20:37:48 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nz0Ym-0003zH-RV; Wed, 08 Jun 2022 18:37:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <officebackup198@gmail.com>) id 1nz0Yk-0003z7-UY
 for v9fs-developer@lists.sourceforge.net; Wed, 08 Jun 2022 18:37:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Date:Subject:
 To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cE4KZcpDngiCgBv3L9rdwEqQYdkJtpgjXZM+v0rkbsQ=; b=IoV+QvvuHIWzBLEs7nHe0FQZhE
 EPRT0FRsZBRZbcYJ0O2PpnIaBn+EYiAuzrdtwOrxjYOoC3ZOgp/JgGNPw3sZvrDXG9FxtylUO+KpH
 R8cxd2f8Kigaqxr+BHlayN+GHC+NOB8fxmNu6djWcMLe6mqDnD98YPKaoIOi06+JCR14=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Date:Subject:To:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=cE4KZcpDngiCgBv3L9rdwEqQYdkJtpgjXZM+v0rkbsQ=; b=i
 7t1T/CrtxTqdB8JNArwUVzwoUujQlp6+SZg5jmKF8cu7yPtTPLCOmMAlkxLhkao4o2CKloII+fqUa
 zfNphPP96DZexeoLSy1i4isAWx7+lkod8S+lkuMbV7Zb2jsh3r8VagypZQfGbaKaBQ0jtOW93u7yL
 TIIxhup49RoY6RTg=;
Received: from mail.pattayaaviation.com ([110.170.212.15])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nz0Yj-0001qv-AV
 for v9fs-developer@lists.sourceforge.net; Wed, 08 Jun 2022 18:37:39 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.pattayaaviation.com (Postfix) with ESMTP id 9D09BC85E88B
 for <v9fs-developer@lists.sourceforge.net>;
 Thu,  9 Jun 2022 01:36:17 +0700 (+07)
Received: from mail.pattayaaviation.com ([127.0.0.1])
 by localhost (mail.pattayaaviation.com [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id 88K1NLhmpIqk for <v9fs-developer@lists.sourceforge.net>;
 Thu,  9 Jun 2022 01:36:17 +0700 (+07)
Received: from localhost (localhost [127.0.0.1])
 by mail.pattayaaviation.com (Postfix) with ESMTP id 7E976C85E888
 for <v9fs-developer@lists.sourceforge.net>;
 Thu,  9 Jun 2022 01:36:17 +0700 (+07)
X-Virus-Scanned: amavisd-new at pattayaaviation.com
Received: from mail.pattayaaviation.com ([127.0.0.1])
 by localhost (mail.pattayaaviation.com [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id 5YSjd-cehx80 for <v9fs-developer@lists.sourceforge.net>;
 Thu,  9 Jun 2022 01:36:17 +0700 (+07)
Received: from gmail.com (unknown [193.233.182.24])
 by mail.pattayaaviation.com (Postfix) with ESMTPSA id 81441C85E884
 for <v9fs-developer@lists.sourceforge.net>;
 Thu,  9 Jun 2022 01:36:16 +0700 (+07)
To: v9fs-developer@lists.sourceforge.net
Date: 08 Jun 2022 20:36:16 +0200
Message-ID: <20220608203615.E17205213013AE0D@lists.sourceforge.net>
MIME-Version: 1.0
X-Spam-Score: 6.9 (++++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Attention: v9fs-developer@lists.sourceforge.net You have [9] quarantined messages in your quarantine portal
    as of Wednesday, June 8, 2022 4:30 AM (UTC). 
 
 Content analysis details:   (6.9 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  2.5 URIBL_DBL_MALWARE      Contains a malware URL listed in the Spamhaus
                             DBL blocklist
                             [URIs: candleandlace.com]
  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
                             in digit
                             [officebackup198[at]gmail.com]
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [officebackup198[at]gmail.com]
  1.1 DKIM_ADSP_ALL          No valid author signature, domain signs all mail
  1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
                             mail domains are different
  0.0 HTML_MESSAGE           BODY: HTML included in message
  0.0 HTML_FONT_LOW_CONTRAST BODY: HTML font color similar or
                             identical to background
  0.0 URIBL_PH_SURBL         Contains an URL listed in the PH SURBL blocklist
                             [URIs: candleandlace.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [110.170.212.15 listed in wl.mailspike.net]
  0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
                             EnvelopeFrom freemail headers are
                             different
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
  1.6 SPOOFED_FREEMAIL       No description available.
X-Headers-End: 1nz0Yj-0001qv-AV
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] cPanel is delaying (9) incoming messages
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
From: "lists.sourceforge.net via V9fs-developer"
 <v9fs-developer@lists.sourceforge.net>
Reply-To: "lists.sourceforge.net" <admin@lists.sourceforge.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

CgpBdHRlbnRpb246wqB2OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKCgpZb3XC
oGhhdmXCoFs5XcKgcXVhcmFudGluZWTCoG1lc3NhZ2VzwqBpbsKgeW91csKgcXVhcmFudGluZcKg
cG9ydGFsCgphc8Kgb2YgV2VkbmVzZGF5LMKgSnVuZSA4LCAyMDIyIDQ6MzAgQU0gKFVUQykuCgpZ
b3XCoGNhbsKgcmV2aWV3wqB0aGVzZcKgaGVyZcKgYW5kwqBjaG9vc2XCoHdoYXTCoGhhcHBlbnPC
oHRvwqB0aGVtLgoKUkVWSUVXIAoowqBodHRwczovL2NhbmRsZWFuZGxhY2UuY29tL3A3WHJ5M2Rh
VUcvdFVwR2N4bUZkeS9pbmRleC5odG1sI3Y5ZnMtZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdl
Lm5ldMKgKQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpW
OWZzLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9y
Z2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3Y5ZnMt
ZGV2ZWxvcGVyCg==
