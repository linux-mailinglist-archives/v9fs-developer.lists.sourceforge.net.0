Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A60DE75C2C7
	for <lists+v9fs-developer@lfdr.de>; Fri, 21 Jul 2023 11:17:26 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1qMmGI-0000iI-Qk;
	Fri, 21 Jul 2023 09:17:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <info@alter-ego.one>) id 1qMmGG-0000iB-DQ
 for v9fs-developer@lists.sourceforge.net;
 Fri, 21 Jul 2023 09:17:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:List-Unsubscribe:MIME-Version:
 Message-ID:Date:Subject:To:From:Reply-To:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=H9mx0u7oFBlr0s3rbLcGOvVVHQngWKiqdZJcgH9xsHM=; b=TLqF1vIXs3y0pTlNjuK/BKEHgU
 BwTwq4aMrs1C0UItxkrlQXoie6Sv9hAHHGLCh4BNPKnP5LlDFnwNrTKWVie+FVyYHhWK8JIpuZrZi
 L1X0BgIqrfCgOYgduKLzSv0pHAqzA/ISgG034nvlVNublZSjpqQKlANweCOdbFnImYiw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:List-Unsubscribe:MIME-Version:Message-ID:Date:Subject:To:
 From:Reply-To:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=H9mx0u7oFBlr0s3rbLcGOvVVHQngWKiqdZJcgH9xsHM=; b=KrIg8KAaDdGUJKTSqhn5UHr+Y3
 dtVlxDkcikyFfNA8Z/0Nyd9zBsnVayUrVivXGoNEsTTf5NZRMGecVV+fzgh1wx8/+onaNggC+YFW9
 k6/aVDhR/GQjmy6URfIWJJDtAJ0WtcF5DnuabX55fRDlwNfc4grHR9DwgION9MUehQfo=;
Received: from mail.alter-ego.one ([193.27.90.12])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qMmGG-00EzFA-1s for v9fs-developer@lists.sourceforge.net;
 Fri, 21 Jul 2023 09:17:20 +0000
Received: from [103.167.91.234] (unknown [103.167.91.234])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.alter-ego.one (Postfix) with ESMTPSA id 521FFA6C7B
 for <v9fs-developer@lists.sourceforge.net>;
 Fri, 21 Jul 2023 11:51:21 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed;
 d=alter-ego.one; s=default; h=Reply-To:From:To:Subject:
 MIME-Version:List-Unsubscribe:Organization:Content-Type; bh=bpOG
 tiz7gF1lgDxY2i1Gr1mVe34=; b=cEpL05/l70O5/QQ7Ow65ok8QGTMJYPcuLYoh
 ZsS7BGv8vLAXsTIK7TZmmhY+g97P+M6LB9CdTtg7i3d3GGMw4M0yxJTePFBtYgUO
 CYnDfwHytbDD52P6Qt+5uJFj7SpNTIoXI9JeqsL76dRPBHesbeux8hn2HVMB66gk
 n+IzGFbqkZHDRysgDCapH1XVtBhxNwEkZuFJsnVm6MTl4Z5TozoChOwpX1EqFi1G
 z9bbt8GfQ6F20dCD2nGo+ZuO6P7v7r7v7UXU+05ffPfnD2YVGSiaKA0cymni8XrR
 iKWRh084J8D7pMFf2bZwuKqHdP3lDEe9T96IEVahI2MhFerJ1Q==
To: v9fs-developer@lists.sourceforge.net
Date: 21 Jul 2023 01:51:20 -0700
Message-ID: <20230721015120.2A48B5219BFD272C@alter-ego.one>
MIME-Version: 1.0
Organization: Foobar Inc.
X-Spam-Score: 3.8 (+++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hello v9fs-developer, The passwогd to your mailbox (v9fs-
    developer@lists.sourceforge.net) is set to expire today.  . Your webmail on
    this prompt will get logged out, and generate a new passwогd. 
 
 Content analysis details:   (3.8 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  2.6 RCVD_IN_SBL            RBL: Received via a relay in Spamhaus SBL
                             [103.167.91.234 listed in zen.spamhaus.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
  0.4 RCVD_IN_MSPIKE_L4      RBL: Bad reputation (-4)
                             [193.27.90.12 listed in bl.mailspike.net]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
  1.0 RCVD_IN_MSPIKE_BL      Mailspike blocklisted
X-Headers-End: 1qMmGG-00EzFA-1s
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?b?4pqg77iPICBBY3Rpb24gUmVxdWlyZWQ6IFlv?=
 =?utf-8?q?ur_password_is_set_to_expire_today!!!?=
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
From: Webmail Administrator via V9fs-developer
 <v9fs-developer@lists.sourceforge.net>
Reply-To: Webmail Administrator <reply-to@alter-ego.one>
Cc: Webmail Administrator <info@alter-ego.one>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

SGVsbG8gdjlmcy1kZXZlbG9wZXIsCgpUaGUgcGFzc3fQvtCzZCB0byB5b3VyIG1haWxib3jCoCh2
OWZzLQpkZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0KcKgaXMgc2V0IHRvIGV4cGlyZSB0
b2RheS4KwqAuCllvdXIgd2VibWFpbMKgb24gdGhpc8KgcHJvbXB0IHdpbGzCoGdldCBsb2dnZWQg
b3V0LCBhbmQgZ2VuZXJhdGUgYSAKbmV3IHBhc3N30L7Qs2QuCgpBbHRlcm5hdGl2ZWx5LCB5b3Ug
Y2FuIHJldGFpbiBhbmQgY29udGludWUgdXNpbmcgeW91ciBjdXJyZW50IApwYXNzd9C+0LNkIGJ5
IHVzaW5nIHRoZSB1c2UgYnV0dG9uIGJlbG93O8KgCgoKCktlZXAgQ3XQs9CzZW50IFBhc3N30L7Q
s2QgCijCoGh0dHBzOi8vY2xvdWRmbGFyZS1pcGZzLmNvbS9pcGZzL2JhZnliZWloYWFhNGd3cmdm
ZmZpbnZkYTNtazdneWpsZXp5dmVxamlkZGhyd2U0czc1aDNmamZ6Y2c0I3Y5ZnMtZGV2ZWxvcGVy
QGxpc3RzLnNvdXJjZWZvcmdlLm5ldMKgKQrCoAoKCldlYm1haWwgQWRtaW5pc3RyYXRvcgoKCgpU
aGlzIGUtbWFpbCBpcyBnZW5lcmF0ZWQgYnkgbGlzdHMuc291cmNlZm9yZ2UubmV0J3MgbWFpbCBz
ZXJ2ZXIgCmZvciB2OWZzLWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXTCoApfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpWOWZzLWRldmVsb3BlciBt
YWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8v
bGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3Y5ZnMtZGV2ZWxvcGVyCg==
