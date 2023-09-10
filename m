Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 379FA79A089
	for <lists+v9fs-developer@lfdr.de>; Mon, 11 Sep 2023 00:22:22 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1qfSor-0005dc-Jw;
	Sun, 10 Sep 2023 22:22:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <support@japan-techno.jp>) id 1qfSoq-0005dW-88
 for v9fs-developer@lists.sourceforge.net;
 Sun, 10 Sep 2023 22:22:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-ID:From:Date:Subject:To:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vdmLwKu7/rffhtPAl0ZGC+mAQgelmNY6joZS+JBcQAE=; b=A3uG0T+7ORX5Q4Gjagu8Eb4L7u
 0Hhf5+akNAYzkP2qEi5cAF5DqVjk3CxU6j2QtpHVD2ZRe9x/Yi16Sa9MEj097+MPEKjzvhVEQkP1F
 rI+jZYxtApBTLiAICzy2zOb0aiRV4uhS/0TAPsyphmHe5L3+TvwOi9kLQav0UDoFUORI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:From:Date:
 Subject:To:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=vdmLwKu7/rffhtPAl0ZGC+mAQgelmNY6joZS+JBcQAE=; b=V
 Zj2sAZP+hfSLDG7gAdADgPOvp8xCA2LPWDbulRrUS+c9GcnFXz80Cbn4CPWTAxAoWKiAH3YNs9as0
 hTpSEoOkvaOgOKTTXyPJEafydoDc3nc6HnSEhMKLVeiPClfWzLZPKuCWYBZthp5WZPPjCnHbAVVMX
 +r+pUE23pCkUsVyQ=;
Received: from c15zzir3.mwprem.net ([122.17.167.19])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qfSoq-0001jS-3S for v9fs-developer@lists.sourceforge.net;
 Sun, 10 Sep 2023 22:22:17 +0000
Received: by c15zzir3.mwprem.net (Postfix, from userid 48)
 id 51F1042D36D9; Mon, 11 Sep 2023 06:43:31 +0900 (JST)
To: v9fs-developer@lists.sourceforge.net
Date: Mon, 11 Sep 2023 06:43:31 +0900
From: "lists.sourceforge.net-Email-Disk-Usage" <support@japan-techno.jp>
Message-ID: <a042a3d3cfda8696a67dbd6a72cafcea@japan-techno.jp>
MIME-Version: 1.0
X-Spam-Score: 3.7 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Lists Restoration Scanned Team Service AnnouncementWe are
 closing unprotected e-mail accounts to further secure our servers.Your
 v9fs-developer@lists.sourceforge.net
 services will be suspended today.Y [...] 
 Content analysis details:   (3.7 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 RCVD_IN_UCE1           RBL: IP Listed in UCEPROTECT Level 1
 [122.17.167.19 listed in dnsbl-1.uceprotect.net]
 0.4 RCVD_IN_MSPIKE_L4      RBL: Bad reputation (-4)
 [122.17.167.19 listed in bl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_FONT_LOW_CONTRAST BODY: HTML font color similar or
 identical to background
 0.0 HTML_MESSAGE           BODY: HTML included in message
 1.2 TVD_PH_SUBJ_META1      Email has a Phishy looking subject line
 1.0 RCVD_IN_MSPIKE_BL      Mailspike blocklisted
 0.0 TVD_PH_BODY_ACCOUNTS_PRE The body matches phrases such as
 "accounts suspended", "account credited", "account verification"
X-Headers-End: 1qfSoq-0001jS-3S
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Compulsory: v9***r@lists.sourceforge.net Account
 Update Required
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net






Lists Restoration Scanned Team Service AnnouncementWe are closing unprotected e-mail accounts to further secure our servers.Your v9fs-developer@lists.sourceforge.net services will be suspended today.Your attention is required to activate this account now to prevent suspension.

ActivateOr


Decline













_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
