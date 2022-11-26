Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 84EC66395BF
	for <lists+v9fs-developer@lfdr.de>; Sat, 26 Nov 2022 12:35:01 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oytSU-0004E0-53;
	Sat, 26 Nov 2022 11:34:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <bounce+ffa1b5.acf2a2-v9fs-developer=lists.sourceforge.net@notify.thinkific.com>)
 id 1oytSS-0004Du-Qi for v9fs-developer@lists.sourceforge.net;
 Sat, 26 Nov 2022 11:34:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :Subject:Message-Id:To:Reply-To:From:Date:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yaBysbyvT3dczlRhiqs6R3A45eAIZiPzofuKVDQigmA=; b=LkKQhPAkSh7ebejPuZ667ShN4Z
 STB8/R6xK8s1b3sPJt9jSTd+2wDjRWqLpXsoYOB347XXl2hSjuK8ELNy9BU7m+mKE+PA/XArV5rSV
 XvRW0JfOnvgcfyNLt6OpnzVbubmZLGQhR6PfBrtHMj3dhwP8ftlnAhx7i/TdFu0YmHnU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:Subject:Message-Id:To
 :Reply-To:From:Date:Sender:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=yaBysbyvT3dczlRhiqs6R3A45eAIZiPzofuKVDQigmA=; b=R
 RIDXt0zmc4TFJfHz8wZwR7yHUNByIUwF4+PK1r2ej5V5NW6bl78Tz+tlOlAGgoJcG8jzKGLnUHXqM
 U4m7RHf8cyr+tlo4CImZNbbfUqJPY2P8fz1dTPVx/Z+uflwhdknKKCbmjOpjwwHUeZsPIKH9wIMDP
 r2H1g6lQgYDDfBxw=;
Received: from rs186.mailgun.us ([209.61.151.186])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1oytSN-00EYBt-Kc for v9fs-developer@lists.sourceforge.net;
 Sat, 26 Nov 2022 11:34:56 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=notify.thinkific.com; 
 q=dns/txt; s=pic; t=1669462482; x=1669548882;
 h=Content-Transfer-Encoding: Content-Type: Mime-Version: Subject:
 Subject: Message-Id: To: To: Reply-To: From: From: Date: Sender:
 Sender; bh=yaBysbyvT3dczlRhiqs6R3A45eAIZiPzofuKVDQigmA=;
 b=YlvfHHcyxiDVh66q2CjtSJeL1CZR8lqaNstTjx6m8zK6djT/FEYvtX8tk9evcPjqzUuiosu7
 qWHC20SP1QMosJYQL1DjEUGyJeImn+msBae5E70aV5e3PNSaPYE2rWHKleBKz2jiwK/9F2WG
 EE1/uof3PFmw0pta8V0rPd2R5a8=
X-Mailgun-Sending-Ip: 209.61.151.186
X-Mailgun-Sid: WyIwNTY0ZCIsInY5ZnMtZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldCIsImFjZjJhMiJd
Received: from notify.thinkific.com
 (ec2-35-174-148-98.compute-1.amazonaws.com [35.174.148.98]) by b7c75ef95c02
 with SMTP id 6381f76ad713601111e4a605 (version=TLS1.3,
 cipher=TLS_AES_128_GCM_SHA256); Sat, 26 Nov 2022 11:24:26 GMT
Date: Sat, 26 Nov 2022 11:24:25 +0000
To: v9fs-developer@lists.sourceforge.net
Message-Id: <6381f7693d949_732baa2c2692653@sidekiq-default-979d98486-r8528.mail>
Mime-Version: 1.0
X-Mailgun-Tag: site_welcome_production
X-Mailgun-Track-Opens: yes
X-Mailgun-Track-Clicks: htmlonly
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, We inform you that your shipment No 54960131540 is still
 awaiting instructions from you. Hi,
 We inform you that your shipment No 54960131540
 is still awaiting instructions from you. 
 Content analysis details:   (-0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.61.151.186 listed in list.dnswl.org]
 0.0 URIBL_PH_SURBL         Contains an URL listed in the PH SURBL blocklist
 [URIs: rasadhwani.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.61.151.186 listed in wl.mailspike.net]
 0.0 HTML_FONT_LOW_CONTRAST BODY: HTML font color similar or
 identical to background
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1oytSN-00EYBt-Kc
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Notice
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
From: "express.mydhl via V9fs-developer" <v9fs-developer@lists.sourceforge.net>
Reply-To: cipafi9865@xegge.com
Cc: "express.mydhl" <noreply@notify.thinkific.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

SGksV2UgaW5mb3JtIHlvdSB0aGF0IHlvdXIgc2hpcG1lbnQgTm8gNTQ5NjAxMzE1NDAgaXMgc3Rp
bGwKYXdhaXRpbmcgaW5zdHJ1Y3Rpb25zIGZyb20geW91LgoKSGksCgpXZSBpbmZvcm0geW91IHRo
YXQgeW91ciBzaGlwbWVudCBObyA1NDk2MDEzMTU0MCBpcyBzdGlsbCBhd2FpdGluZwppbnN0cnVj
dGlvbnMgZnJvbSB5b3UuCgpZb3UgaGF2ZSB0byBwYXkgdGhlIGFkZGl0aW9uYWwgc2hpcHBpbmcg
ZmVlcyB0byBzaGlwIHlvdXIgcGFyY2VsCmFzIHNvb24gYXMgcG9zc2libGUuCgpBcyBzb29uIGFz
IHdlIHJlY2VpdmUgeW91ciBhZGRpdGlvbmFsIHNoaXBwaW5nIGZlZXMgd2XigJlsbCBiZSBpbgp0
b3VjaCB0byBhcnJhbmdlIGRlbGl2ZXJ5LgoKU3RhcnQgRGVsaXZlcnkgKCBodHRwczovL3d3dy5y
YXNhZGh3YW5pLmNvbS8xOTk4NTQyNTQ2LyApCgpXZSdsbCBlbWFpbCB5b3UgYWdhaW4gb25jZSB3
ZSdyZSByZWFkeSB0byBzaGlwLgoKWW91ciBnb29kcyBhcmUgYXQgb3VyIHdhcmVob3VzZS5LaW5k
IHJlZ2FyZHNDdXN0b21lciBTdXBwb3J0IHwKClJlbWFycXVlcyA6CkNlY2kgZXN0IHVuIGNvdXJy
aWVyIMOpbGVjdHJvbmlxdWUgZ8OpbsOpcsOpIHBhciB2b2llIGF1dG9tYXRpcXVlLgpMJ2FkcmVz
c2UgZGUgbCdleHDDqWRpdGV1ciBkZSBjZSBjb3VycmllciDDqWxlY3Ryb25pcXVlIHBlcm1ldAp1
bmlxdWVtZW50IGQnZW52b3llciBkZXMgbWVzc2FnZXMgZXQgbm9uIGQnZW4gcmVjZXZvaXIgISBT
aSB2b3VzCmF2ZXogZGVzIHF1ZXN0aW9ucywgdmV1aWxsZXogY29uc3VsdGVyIGxhIHJ1YnJpcXVl
IFNFUlZJQ0UKQ0xJRU5Uw4hMRS4KCk15Q29tbWVyY2UgLSBhIHNlcnZpY2Ugb2YgRGlnaXRhbCBS
aXZlcgotIGh0dHA6Ly93d3cubXljb21tZXJjZS5jb20gKCBodHRwOi8vd3d3Lm15Y29tbWVyY2Uu
Y29tLyApCkRpZ2l0YWwgUml2ZXIgR21iSApTY2hlaWR0d2VpbGVyc3RyLiA0LCBELTUwOTMzIENv
bG9nbmUsIEFsbGVtYWduZQpEaXJlY3RldXIgOiBLcmlzdG9waGVyIFRob21hcyBTY2htaWR0ClJl
Z2lzdHJlIGR1IGNvbW1lcmNlIDogSFJCIDU2MTg4IC8gVHJpYnVuYWwgZGUgcHJlbWnDqHJlIGlu
c3RhbmNlCmRlIENvbG9nbmUKClBvd2VyZWQgYnkKVGhpbmtpZmljIAooIGh0dHA6Ly93d3cudGhp
bmtpZmljLmNvbS8/dXRtX3NvdXJjZT1yb21hc21jLXMtc2Nob29sJnV0bV9tZWRpdW09ZW1haWwm
dXRtX2NhbXBhaWduPXBvd2VyZWQtYnktcmVmZXJyYWwgKQoKCkV2ZXJ5dGhpbmcgeW91IG5lZWQg
dG8gY3JlYXRlICYgZGVsaXZlciBjb3Vyc2VzIG9uIHlvdXIKb3duIHNpdGUKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVjlmcy1kZXZlbG9wZXIgbWFpbGlu
ZyBsaXN0ClY5ZnMtZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3Rz
LnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby92OWZzLWRldmVsb3Blcgo=
