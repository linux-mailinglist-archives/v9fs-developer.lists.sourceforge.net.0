Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4616D955EF4
	for <lists+v9fs-developer@lfdr.de>; Sun, 18 Aug 2024 22:43:07 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1sfmjx-0007Ax-5g;
	Sun, 18 Aug 2024 20:43:04 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <HF_Peter=zzcnc.firstabmfg.com@bounces.zzcnc.firstabmfg.com>)
 id 1sfmjv-0007Aq-TP for v9fs-developer@lists.sourceforge.net;
 Sun, 18 Aug 2024 20:43:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:List-Unsubscribe:To:
 Sender:Reply-To:Message-Id:Subject:Date:From:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=q9H8B/a9CSHlCfVh4CtAwJfXX2p7mpZU690/GwSEXrs=; b=OzJLAeO8LQmg2D8nMJ7PdjGcLk
 rpQY348+SUVJ2WClNtC4JUnQNCmjxirwi32YM0uvhmbLas6TYp05oPYXW+3Obnjd2ZXjXqjItKDFF
 Hy60QVdAHvzYc1dqN/Xo0xp97xS4BfddK5O0zRwuKcNbisPGWperM90Mqz3NiI5Y7OcA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:List-Unsubscribe:To:Sender:Reply-To:Message-Id:
 Subject:Date:From:Cc:Content-Transfer-Encoding:Content-ID:Content-Description
 :Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=q9H8B/a9CSHlCfVh4CtAwJfXX2p7mpZU690/GwSEXrs=; b=KbYvea+57nDG
 iwXqJ9BSnXAQpjsAInocbUu5nEg08d5TZaw0U3q59LNla7naNFbtDyvY+8lkOVN9Cadd8pp9RM+/M
 6SvMp+b/6W352NEBxblRmIR/1TeUeHpuBDkgOjUS1wQJXjRnASHcqHKGLFNQpGzdWyi5yH3OxhMZR
 PB+qM=;
Received: from [67.227.87.237] (helo=mkt.trycnmfg.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.95) id 1sfmjt-0003dl-M5
 for v9fs-developer@lists.sourceforge.net;
 Sun, 18 Aug 2024 20:43:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=zzcnc.firstabmfg.com; s=api;
 c=relaxed/simple; t=1724013774;
 h=from:date:subject:reply-to:to:list-unsubscribe:list-unsubscribe-post:
 mime-version; bh=q9H8B/a9CSHlCfVh4CtAwJfXX2p7mpZU690/GwSEXrs=;
 b=MPZNfuW0EJPfwzKHDhIlvGuU5Hq3Z9YepuF2Z+sqYxrxIcnV1mwlImyVr+cykgPD9NNcRjuelw8
 NsT9skgRmpa1M81YF8LuZ/1ImNrWHukz4bYp5X2PDeaRvndNuRRmLLN//fhCntd2TksC5ENisIalS
 ssoECk/iK1IdI+gFK4A=
DKIM-Signature: v=1; a=rsa-sha256; d=elasticemail.com; s=api;
 c=relaxed/simple; t=1724013774;
 h=from:date:subject:reply-to:to:list-unsubscribe:list-unsubscribe-post;
 bh=q9H8B/a9CSHlCfVh4CtAwJfXX2p7mpZU690/GwSEXrs=;
 b=Jxn6RcyoDTu2DILKZ4I5ikxk4m9rLlUftQuvAKpncr6OKFtgQR5ilvez/ChjK1t2z2lCWDdy4zY
 pQDEIX9A0Z9DtUUJtk3GtDHqypR8/kMcP9lmjKU+4pf1ZMZs7Q5gOi7LdC+4cChg0K7Zu/SyHowM1
 KIS7FL0aVWnxNEh4Q8g=
From: HF_Peter <HF_Peter@zzcnc.firstabmfg.com>
Date: Sun, 18 Aug 2024 20:42:54 +0000
Message-Id: <4unvfd059lov.ID1chBYiwfC05wMjmP58tw2@tracking.zzcnc.firstabmfg.com>
To: "v9fs-developer@lists.sourceforge.net"
 <v9fs-developer@lists.sourceforge.net>
List-Unsubscribe-Post: List-Unsubscribe=One-Click
X-Msg-EID: ID1chBYiwfC05wMjmP58tw2
MIME-Version: 1.0
X-Spam-Score: -0.7 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Dear V9Fs-Developer, I hope this email finds you well. This is
    Peter from HF Precision Machining.  With over 20 years of experience and
    two facilities in Shenzhen, China, HF Precision Machining is y [...] 
 
 Content analysis details:   (-0.7 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
                             blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URIs: elasticemail.com]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
                             high trust
                             [67.227.87.237 listed in list.dnswl.org]
  0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
                             query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                             [67.227.87.237 listed in bl.score.senderscore.com]
  0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
                             The query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                             [67.227.87.237 listed in sa-accredit.habeas.com]
 -0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
                             [67.227.87.237 listed in wl.mailspike.net]
  1.9 URIBL_CT_SURBL         Contains an URL listed in the CT SURBL blocklist
                             [URIs: firstabmfg.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  1.3 HTML_IMAGE_ONLY_24     BODY: HTML: images with 2000-2400 bytes of
                             words
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
  1.3 RDNS_NONE              Delivered to internal network by a host with no rDNS
X-Headers-End: 1sfmjt-0003dl-M5
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Precision Parts One-stop Manufacturer
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
Reply-To: HF_Peter <sales@hfmachining.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

RGVhciBWOUZzLURldmVsb3BlciwKSSBob3BlIHRoaXMgZW1haWwgZmluZHMgeW91IHdlbGwuIFRo
aXPCoGlzIFBldGVyIGZyb20gSEYgUHJlY2lzaW9uCk1hY2hpbmluZy7CoApXaXRoIG92ZXIgMjAg
eWVhcnMgb2YgZXhwZXJpZW5jZSBhbmQgdHdvIGZhY2lsaXRpZXMgaW4gU2hlbnpoZW4sCkNoaW5h
LCBIRiBQcmVjaXNpb24gTWFjaGluaW5nIGlzIHlvdXIgb25lLXN0b3AgbWFudWZhY3R1cmVyIGZv
cgpoaWdoLXF1YWxpdHksIGN1c3RvbSBDTkMgbWFjaGluZWQgcGFydHMuIFdlIHByb3ZpZGUgY29t
cHJlaGVuc2l2ZQpzZXJ2aWNlcyBmcm9tIHByb3RvdHlwZSBkZXZlbG9wbWVudCB0byBoaWdoLXZv
bHVtZSBwcm9kdWN0aW9uLgpPVVIgU0VSVklDRVM6CiogQ05DIG1pbGxpbmcKKiBDTkMgdHVybmlu
ZwoqIENOQyBncmluZGluZwoqIFJhcGlkIHByb3RvdHlwaW5nCiogU2hlZXQgbWV0YWwgZmFicmlj
YXRpb24KV2UgYWxzbyBvZmZlciBzdXJmYWNlIHRyZWF0bWVudHMgbGlrZSBhbm9kaXppbmcsIHBv
d2RlciBjb2F0aW5nLCBhbmQKcGxhdGluZy4KT1VSIEFEVkFOVEFHRVM6CiogMjAgeWVhcnMgb2Yg
ZXhwZXJpZW5jZQoqIFR3byBmYWNpbGl0aWVzIGluIFNoZW56aGVuCiogTm8gbWluaW11bSBvcmRl
ciBxdWFudGl0eQoqIENvbXBldGl0aXZlIHByaWNlcwoqIE9uLXRpbWUgZGVsaXZlcnkKQ29udGFj
dCB1cyB0b2RheSBmb3IgYSBmcmVlIHF1b3RlIG9uIHlvdXIgbmV4dCBDTkMgbWFjaGluaW5nIHBy
b2plY3QuCldlIGxvb2sgZm9yd2FyZCB0byB3b3JraW5nIHdpdGggeW91IQpCZXN0IHJlZ2FyZHMs
ClBldGVyIExlZQpTYWxlcyBEaXJlY3RvcgpzYWxlc0BoZm1hY2hpbmluZy5jb20KSEYgUHJlY2lz
aW9uIE1hY2hpbmluZwpVbnN1YnNjcmliZQpbL2h0dHA6Ly90cmFja2luZy56emNuYy5maXJzdGFi
bWZnLmNvbS90cmFja2luZy91bnN1YnNjcmliZT9kPS1MaXBYUHFhUFdIbVZjclZ5dWpRSmIxWHV1
LVZHcEk1ZE41RjFHYmtHc3Y3NmUxNk5JOHowVWpXWTI4OG5sNzl1S0dqOEVDcFBTb2EwX1Ewc2h0
a2NQT0ZjQlZ2M3phTlM1cXM1dnQzd09tZTN3ekxYZTVoYnBfckhocDU0LV8zZTYtSGtzSTJSbWtS
aVFKSmpNZmRqelZMS3dWY2d1VU9nY1B2X0o2SFJJMUxQUXV2OWxsZjFKczJZVmhzU0xJT0N4YlBC
WjhjcGd4d0lDeTA4THY5TktiZnRaNmR3OFhiZUNZNmZ1dkVIV3pERFJhMTMyaWJrR1pHY2JDY0l2
QWg0aFdRMTROY3l2alZqVWcwdEI5VWFGWTZ5Sjd0QVRTUjRuTzBRRkhfUldGQ1B5eHpJaXprbXZG
eXU1bG9FdnBvZW1pWTk2ckRjRGhzZFpWRjRNTGY0Q0thYTFnVzFoWHNaYnd2bkNtTEMyT0wxNUJO
aDRGd1c4UGNZa05rc3JoS2Y5Q2F5S1g3Szc4LTFZc2szWTNNczQyb3V4eWZRZFRpRDdXNWk1cHVI
bVUtcUpZWlh4RlBTbUxueVZTbi1fUEpHZHJKcTV1ZWJKUXBMT3pQWU1MNzVmTzNyQllnRTdVZ1VC
V0tQbmVpRTZTOWpzazI5d25rMTAzRDVZUGxlak5JajY0T19QWmFXV2s4MWRIOUhfYnlUQVkxXQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpWOWZzLWRldmVs
b3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0
dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3Y5ZnMtZGV2ZWxvcGVy
Cg==
