Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B4EF32FDE7
	for <lists+v9fs-developer@lfdr.de>; Sat,  6 Mar 2021 23:44:54 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lIffG-0004ou-TA; Sat, 06 Mar 2021 22:44:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1lIffF-0004on-9g
 for v9fs-developer@lists.sourceforge.net; Sat, 06 Mar 2021 22:44:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Date:From:To:Subject:MIME-Version:Content-Type:
 Sender:Reply-To:Message-ID:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AuNfPLtPFGXT1neeba348YvzbNXMh8sougaFPQlk/DU=; b=Td0+HLrMsq02Fwr4DajjS4IfMN
 cxkvv6Mr9lIMCfDJ5DJcG/iJhYxQ20+UA8gka4VOb0dKQpGN1YKUlwjLGlfncJDYedJaS44z2ShCF
 ODIpc/vnzbeL0NJvZcDgUkwDtjl2FEsqrMBy5khwhpddv4326w+53t8zKxctX5BQZRkU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Date:From:To:Subject:MIME-Version:Content-Type:Sender:Reply-To:Message-ID
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=AuNfPLtPFGXT1neeba348YvzbNXMh8sougaFPQlk/DU=; b=D
 Di5jdzFvHhBRfPtWQkhyogSVMvH6Ky4pr3684BAXtWIu9iNonqjWQtb07S3jBF7EfrYg28DYfT/1e
 ExkOMJwer8qxfOoesHf3G2nYU1S5sglUmQn8ZNAEYAAFkZgLq9+xGhRv/3OLtn///F0D/PMD2Adsn
 NUWWnCPRJVVToyOw=;
Received: from securemail-r12.synaq.com ([196.35.198.118])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lIffD-0000UV-B2
 for v9fs-developer@lists.sourceforge.net; Sat, 06 Mar 2021 22:44:49 +0000
Authentication-Results: synaq.com; iprev=fail smtp.remote-ip=206.217.133.197;
 auth=pass (LOGIN) smtp.auth=souties@mweb.co.za;
 arc=none
Received: from [206.217.133.197]
 by securemail-pl-omx1.synaq.com with esmtpsa (TLS1) tls
 TLS_DHE_RSA_WITH_AES_256_CBC_SHA (Exim 4.93.0.4-30-5edf9c7)
 id 1lIff2-000Alq-EQ
 for v9fs-developer@lists.sourceforge.net; Sun, 07 Mar 2021 00:44:36 +0200
MIME-Version: 1.0
To: v9fs-developer@lists.sourceforge.net
From: "Malena Lindgren" <>
Date: Sat, 06 Mar 2021 14:44:19 -0800
X-UNKNOWN-NULL: Yes
X-Red-Router: yes
X-SYNAQ-Pinpoint-Information: Please contact SYNAQ for more information
X-SYNAQ-Pinpoint-ID: 1lIff2-000Alq-EQ
X-SYNAQ-Pinpoint: No virus infections found
X-SYNAQ-Pinpoint-SpamCheck: not spam, SpamAssassin (not cached, score=1.851,
 required 9, autolearn=disabled, ALL_TRUSTED -1.00, DCC_CHECK 0.10,
 FROM_NO_USER 2.60, FSL_BULK_SIG 0.00, HTML_MESSAGE 0.00,
 MISSING_MID 0.14, NULLSENDER 0.01)
X-SYNAQ-Pinpoint-SpamScore: s
X-Pinpoint-From: 
X-Spam-Score: 4.6 (++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 2.6 FROM_NO_USER           From: has no local-part before @ sign
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [196.35.198.118 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 1.0 MISSING_MID            Missing Message-Id: header
X-Headers-End: 1lIffD-0000UV-B2
Content-Description: Mail message body
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Hello Friend.
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net
Message-Id: <E1lIffG-0004ou-TA@sfs-ml-4.v29.lw.sourceforge.com>

Good Morning v9fs-developer@lists.sourceforge.net,
 Sorry this note might come as a surprise to you. You might consider it an invasion of privacy and I hope you forgive me , With this letter, I would like to seek for your attention. I know this is an unconventional way of reaching out to someone I've never meet or heard of. I also hope you don't find this letter provocative or intruding. I write to seek your attention as friends. My name is Malena Lindgren. I'm  Swedish Origin. I hope you do not view my contacting you strange because  I'm using something as cold as this means to reach you. But this is the best I can do for now. The purpose of this letter is to seek your friendship. And if it seats well with you, You can write me back and we can communicate further and learn about each other. I look forward to hear hearing from you.
 Please contact me on this email (malenalindgren43@gmail.com)
 Yours Malena

_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
