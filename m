Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C0CC3F3A65
	for <lists+v9fs-developer@lfdr.de>; Sat, 21 Aug 2021 13:23:54 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mHP6O-00067c-38; Sat, 21 Aug 2021 11:23:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <user@domain.com>) id 1mHP6M-00067I-Nl
 for v9fs-developer@lists.sourceforge.net; Sat, 21 Aug 2021 11:23:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Reply-To:From:
 Date:Subject:To:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jtHBPXwFqiIxaZ94xi9TronPpIthKaaCorcIfMEFAJM=; b=W9zu01cmRPbrOd4PBB0nAoJhzl
 zO2poE8BxPlWECwKlF7ZzJRk063lEiARFlFlQf6FFZ2eLsGkQE5+zIuwnPZthyBy8zh+iv18+4Bn9
 S9vEv+CL0QfNgoI4if0bBtCwzEsewCl3ZT1/wM5JSD0S8WkFW+3nEqDTgkGyr3W2s1Nk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Reply-To:From:Date:Subject:To:Sender
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=jtHBPXwFqiIxaZ94xi9TronPpIthKaaCorcIfMEFAJM=; b=i
 zmX81QNKpBPztU7x0K53iej0kfwMEvbnxJYtaBeaU6++CvLBc4KoVkMbjysLdWxfGTmCUFWiGoY/d
 XAzIivQYk20nhF7ZfxQhUNl5uGqKuI6cuHokjWAmQd9uGwKfWdCXrFlA1v+77R0h6pe4c9niWlUV6
 QilVsIsKpt1lWGEs=;
Received: from [138.68.56.65] (helo=IdeaWebbMain.localdomain)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtp (Exim 4.92.3)
 id 1mHP6L-0004df-Js
 for v9fs-developer@lists.sourceforge.net; Sat, 21 Aug 2021 11:23:50 +0000
Received: by IdeaWebbMain.localdomain (Postfix, from userid 1006)
 id B7B403DF6A; Sat, 21 Aug 2021 11:06:39 +0000 (UTC)
To: v9fs-developer@lists.sourceforge.net
Date: Sat, 21 Aug 2021 11:06:39 +0000
From: Gang Wu <user@domain.com>
Message-ID: <95c84e84ce3b3d333e4b2151a81198bf@beeculturecrafthoney.com>
MIME-Version: 1.0
X-Spam-Score: 8.0 (++++++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [138.68.56.65 listed in zen.spamhaus.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.9 SPF_FAIL               SPF: sender does not match SPF record (fail)
 [SPF failed: Please see http://www.openspf.net/Why?s=mfrom;
 id=user%40domain.com; ip=138.68.56.65;
 r=util-malware-1.v13.lw.sourceforge.com]
 1.0 RDNS_NONE Delivered to internal network by a host with no rDNS
 2.5 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
X-Headers-End: 1mHP6L-0004df-Js
Subject: Re: [V9fs-developer] Hello
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
Reply-To: gngwuu@protonmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Greetings,

I wish to solicit for a moment of your bustling schedule to discuss a 100% legitimate
business preposition with you that is worth some fortune. If intrigued do reply and I
will finish you with full insights regarding the business.

Sincerely,
Gang Wu



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
