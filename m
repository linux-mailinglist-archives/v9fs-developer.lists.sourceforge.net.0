Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 33D5E5FAB4B
	for <lists+v9fs-developer@lfdr.de>; Tue, 11 Oct 2022 05:43:32 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oi6Ay-0003nr-TF;
	Tue, 11 Oct 2022 03:43:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <pr-tracker-bot@kernel.org>) id 1oi6Ax-0003nh-2g
 for v9fs-developer@lists.sourceforge.net;
 Tue, 11 Oct 2022 03:43:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Date:Message-Id:References:In-Reply-To:From:
 Subject:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4w+/iKCKIFv88sUuTP8BPOA1o9yKzU2VhyIA+rkwp9Y=; b=GnH0QwxfIltgIo61hpRJwJSV7J
 Q2KeoR1oaMW4mCG6TqMoDs9KcMhExEEjYmotVvCyfjGZ9y1ojhOxmN2qqkJrpjG8D2pbMvwz29UTG
 u/pltiGcjRKgAf4mjUeTVn7k6RzDFLIirnAkFUgsnVsm9qpYHZO4YJz5mlH8D1OdZ4Ik=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Date:Message-Id:References:In-Reply-To:From:Subject:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4w+/iKCKIFv88sUuTP8BPOA1o9yKzU2VhyIA+rkwp9Y=; b=C72MPA6UFP/qhnO3N2CSUGKCsA
 82SoFv3/I47NTYICyOZ2SuF+pRzPjRcSumeWPS3X93fCb4DIOGLwNbXG+rnBs3CDFq+aALTvE/tfc
 oaC1HPqIf+RJjUtfshETB0ULi7cTm3E68Y8VimJBqYPF41lAGTyXVxB+ZqgNzXelJlPY=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oi6Aw-0006lo-CZ for v9fs-developer@lists.sourceforge.net;
 Tue, 11 Oct 2022 03:43:26 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 0478461092;
 Tue, 11 Oct 2022 03:43:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DFC1C433B5;
 Tue, 11 Oct 2022 03:43:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1665459800;
 bh=jhwJ7HkLxQOURNVjQ4sMQTPoBm4dAaSF/3GIhqkyij0=;
 h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
 b=BVcgOuVlzMOZveXBBIin03b4tAtwws/b40Xv3U90A7IPVtEUCGypuTVR/3DD9boRl
 Mz+7mBdlry94zH0uXnQ+uQJYwA+5NcGJdDqDBCWjgcFvLkT1H+rwAhcrEoeUDbpDA+
 +g7eDNCjU1zmunDgYKXkJrq/+Q1ELjMre/+mq/AoWQJSwpUOW0ynGRsXQJ6BU2ycq8
 EuU+c/kYN8VmhWHUGKhG9U+x4uPbCgth8FGQhJNQ8C/ii2/oqGAOnfboCJ5jirquAF
 hvyhJiufWL4LuaEujRQhMjeDX+YEYof9fcv3c5f3PsepK255cqtLq9CK0t/csqXIGW
 VWWowDFJlV+Kg==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 5A344E29F34; Tue, 11 Oct 2022 03:43:20 +0000 (UTC)
From: pr-tracker-bot@kernel.org
In-Reply-To: <Y0OsOYmG+PU2CgcH@codewreck.org>
References: <Y0OsOYmG+PU2CgcH@codewreck.org>
X-PR-Tracked-List-Id: <linux-fsdevel.vger.kernel.org>
X-PR-Tracked-Message-Id: <Y0OsOYmG+PU2CgcH@codewreck.org>
X-PR-Tracked-Remote: https://github.com/martinetd/linux tags/9p-for-6.1
X-PR-Tracked-Commit-Id: a8e633c604476e24d26a636582c0f5bdb421e70d
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 00833408bb164342990102f272c77983f1ca5e94
Message-Id: <166545980036.4678.10364481447836785451.pr-tracker-bot@kernel.org>
Date: Tue, 11 Oct 2022 03:43:20 +0000
To: Dominique Martinet <asmadeus@codewreck.org>
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The pull request you sent on Mon, 10 Oct 2022 14:23:05 +0900:
 > https://github.com/martinetd/linux tags/9p-for-6.1 has been merged into
 torvalds/linux.git:
 https://git.kernel.org/torvalds/c/00833408bb164342990102f272c77983f1ca5e94
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1oi6Aw-0006lo-CZ
Subject: Re: [V9fs-developer] [GIT PULL] 9p fixes for 6.1
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
Cc: linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 Christian Schoenebeck <linux_oss@crudebyte.com>,
 Linus Torvalds <torvalds@linux-foundation.org>, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

The pull request you sent on Mon, 10 Oct 2022 14:23:05 +0900:

> https://github.com/martinetd/linux tags/9p-for-6.1

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/00833408bb164342990102f272c77983f1ca5e94

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
