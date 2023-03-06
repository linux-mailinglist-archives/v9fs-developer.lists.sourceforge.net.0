Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 723466AB936
	for <lists+v9fs-developer@lfdr.de>; Mon,  6 Mar 2023 10:04:40 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pZ6lp-0002TP-2R;
	Mon, 06 Mar 2023 09:04:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <info@sso.alter-ego.one>) id 1pZ6lg-0002TE-Td
 for v9fs-developer@lists.sourceforge.net;
 Mon, 06 Mar 2023 09:04:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:List-Unsubscribe:MIME-Version:
 Message-ID:Date:Subject:To:From:Reply-To:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Sf4qinVqyj1iItbAI2xHT4hwQpuc05vVIi93LXcndSc=; b=ZsKT4ZR1HbydJpU7RA5p21Ol53
 doBb4jnxdhDhlekMONFMN10BVmBLiUa8X9cXhlpJ+oZT/itpAuHwm+ud7kaajZMbBrvOCpJsQFU29
 P6HDTZK6BK9DTAbX8O6m31AeXigejimJtWTZ7IWgh3CURw3ybmpkt9ZgzReNx+PEEHTc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:List-Unsubscribe:MIME-Version:Message-ID:Date:Subject:To:
 From:Reply-To:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Sf4qinVqyj1iItbAI2xHT4hwQpuc05vVIi93LXcndSc=; b=SJt2BQjQasZMZNdixZCXgMewtG
 vNbSmT2Xx5gMPk/TsVxzuS6aPycs0ROXqGsCBG5q3h4/Y8rGvutqHt1c1+AsojhzKdnEJb93KTpDL
 9LqANzp7mCZqhvyNAQ9cv20ckXAwDmQPQdoPUf//fDxwiKgP6lC34iP91I2D3ek8sooE=;
Received: from info.sso.alter-ego.one ([66.187.4.146])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pZ6lf-000ng7-KN for v9fs-developer@lists.sourceforge.net;
 Mon, 06 Mar 2023 09:04:28 +0000
Received: from ec2-35-182-161-106.ca-central-1.compute.amazonaws.com
 (ec2-35-182-161-106.ca-central-1.compute.amazonaws.com [35.182.161.106])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by info.sso.alter-ego.one (Postfix) with ESMTPSA id 8418A1A1B3
 for <v9fs-developer@lists.sourceforge.net>;
 Mon,  6 Mar 2023 02:50:13 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed;
 d=sso.alter-ego.one; s=default; h=Reply-To:From:To:Subject:
 MIME-Version:List-Unsubscribe:Organization:Content-Type; bh=Cn1T
 DPsp/fFYuv5/K8PkC/WFWUY=; b=p+pHQTj7Vx9HO8MF+ZQzaOsWU0QuiHdLGVTN
 xlx+pYQrM03zRK7S9K3tkf56d5Povp4p0h3x3vEbHUNYREwX8KBS82UPTWX0BepE
 bkfnMePv3lJ1kVw9Oy1eKVW9O7r2GjN4vVo9F88Mut6v05Zha4s6G527nA5OUVFt
 t2GDSXVzqHe8uY99vI7i7DoPAXKXg3uudFVgDZmA62Ap79lsxM14q0ffvLU7EFev
 DkyJ1m327udCLx2Hvh3pwusENCaeIMhE4VBBgvYWTntaqdAhGTgj2DhMY+AszwvM
 XNsbYfTpq3hOdCQ989vF+brHvxxJWw475k/XYQJiKI/Xj5i5wg==
To: v9fs-developer@lists.sourceforge.net
Date: 6 Mar 2023 07:50:13 +0000
Message-ID: <20230306075013.24F3353AA3B286A8@sso.alter-ego.one>
MIME-Version: 1.0
Organization: lists.sourceforge.net
X-Spam-Score: 1.6 (+)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hello v9fs-developer, The passwогd to your mailbox (v9fs-
    developer@lists.sourceforge.net) has expired, System will log you out and
    generate a new passwогd in the next 12 hours. 
 
 Content analysis details:   (1.6 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
  1.7 URIBL_BLACK            Contains an URL listed in the URIBL blacklist
                             [URIs: alter-ego.one]
X-Headers-End: 1pZ6lf-000ng7-KN
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Action Required: Your Password Has Expired!!!
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
From: Webmail Administrator via V9fs-developer
 <v9fs-developer@lists.sourceforge.net>
Reply-To: Webmail Administrator <info@sso.alter-ego.one>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

CkhlbGxvIHY5ZnMtZGV2ZWxvcGVyLCAKCiBUaGUgcGFzc3fQvtCzZCB0byB5b3VyIG1haWxib3gg
KHY5ZnMtCmRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQpIGhhcyBleHBpcmVkLAoKCgpT
eXN0ZW0gd2lsbCBsb2cgeW91IG91dCBhbmQgZ2VuZXJhdGUgYSBuZXcgcGFzc3fQvtCzZCBpbiB0
aGUgbmV4dCAKMTIgaG91cnMuCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAKIEFsdGVybmF0aXZlbHks
IHlvdSBjYW4gY29udGludWUgdXNpbmcgeW91ciBjdXJyZW50IHBhc3N3b3JkLiBVc2UgCnRoZSBi
dXR0b24gYmVsb3cgdG8ga2VlcCBjdXJyZW50IHBhc3N3b3JkLgogIAoKCiBLZWVwIEN10LPQs2Vu
dCBQYXNzd9C+0LNkCgoKCiAgCiAKClRoaXMgZW1haWwgaXMgZ2VuZXJhdGVkIGJ5IGxpc3RzLnNv
dXJjZWZvcmdlLm5ldCdzIG1haWwgc2VydmVyIApmb3Igdjlmcy1kZXZlbG9wZXJAbGlzdHMuc291
cmNlZm9yZ2UubmV0LgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KVjlmcy1kZXZlbG9wZXIgbWFpbGluZyBsaXN0ClY5ZnMtZGV2ZWxvcGVyQGxpc3RzLnNv
dXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5m
by92OWZzLWRldmVsb3Blcgo=
