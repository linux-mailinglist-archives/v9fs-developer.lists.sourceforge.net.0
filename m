Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BE285893EE
	for <lists+v9fs-developer@lfdr.de>; Wed,  3 Aug 2022 23:13:57 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oJLgf-0004yN-F1; Wed, 03 Aug 2022 21:13:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <pr-tracker-bot@kernel.org>) id 1oJLge-0004tE-1N
 for v9fs-developer@lists.sourceforge.net; Wed, 03 Aug 2022 21:13:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Date:Message-Id:References:In-Reply-To:From:
 Subject:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DbS7joicusfsFuzOBNI6PBFPt1N1j8gJLf5XjNxqMCo=; b=QgwSOukvMH7U6XUAHtZ66V94hJ
 bWhaKzsnJsP6DkuB032GKplatXeScKfS7jn2US6W0Kad8RD1C9JuMeX7SuN8KZn3pfqQtpIu32Ann
 X98ptz0RKJZrKVoOHcgmM9EFuGcJpynP/XO9jiG7rIQvI7iPY8xRybS6++VE5sYxUcqU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Date:Message-Id:References:In-Reply-To:From:Subject:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=DbS7joicusfsFuzOBNI6PBFPt1N1j8gJLf5XjNxqMCo=; b=MY49EY4Gp94LIA4rUm4UYsBm9O
 cs56QUb6tbhWC+2lGl48gdeL8uz9jMxslLfet38CoTV4rceieAPRts37u244ZRgXsnnQd4GwQkRWp
 +XrJXdWoif0e9m/EFfPBK/ope7y4EwtA9Iy+5fWyxeiSH6YhuzI1M5TmHCA+u4Ed9UPo=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1oJLgd-0004hU-5S
 for v9fs-developer@lists.sourceforge.net; Wed, 03 Aug 2022 21:13:51 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id EB43161590;
 Wed,  3 Aug 2022 21:13:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 5A77DC433B5;
 Wed,  3 Aug 2022 21:13:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1659561220;
 bh=nL82EgyKKpKrlH1HS61n9VeQgqUeZ4A/isasT7uG0fU=;
 h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
 b=SjWslV9PQWQs29H/64/vLzY484GFYjQugbRi1pBWRZE3W1wYj7C7ccu2dBeP6ifVI
 tzuBKMymkI4N6mwTG/0QqgzTWFcZqDlDve5RGKfcInqS6VtJyNGvxNJvwRCSNZxIzy
 idi4CzbIV66J5+Pd5hc7/rUs7noUwedplUDUcNBmO+lifD5AcNwSvHGM8rU9mgUUC2
 TCg6obk2vmGjtdBiPjxCegU2uBIXyz4SvQajqXgnC0ye/gDbxgi0d23jMvsXVvB+PC
 SffRaspOh7Mq8g3FoNqh66gnFHnHQd/jRs6MGPPD5WRPBNDHrc45CtbClfctcIxVrX
 KLiUxNDglW7cA==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 458DDC43142; Wed,  3 Aug 2022 21:13:40 +0000 (UTC)
From: pr-tracker-bot@kernel.org
In-Reply-To: <YurQkunyW5lfS9DH@ZenIV>
References: <YurQkunyW5lfS9DH@ZenIV>
X-PR-Tracked-List-Id: <linux-fsdevel.vger.kernel.org>
X-PR-Tracked-Message-Id: <YurQkunyW5lfS9DH@ZenIV>
X-PR-Tracked-Remote: git://git.kernel.org/pub/scm/linux/kernel/git/viro/vfs.git tags/pull-work.9p
X-PR-Tracked-Commit-Id: f615625a44c4e641460acf74c91cedfaeab0dd28
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: ff89dd08c0f0a3fd330c9ef9d775e880f82c291e
Message-Id: <165956122028.15182.16589497695034512923.pr-tracker-bot@kernel.org>
Date: Wed, 03 Aug 2022 21:13:40 +0000
To: Al Viro <viro@zeniv.linux.org.uk>
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The pull request you sent on Wed, 3 Aug 2022 20:46:26 +0100:
 > git://git.kernel.org/pub/scm/linux/kernel/git/viro/vfs.git tags/pull-work.9p
 has been merged into torvalds/linux.git:
 https://git.kernel.org/torvalds/c/ff89dd08c0f0a3fd330c9ef9d775e880f82c291e
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1oJLgd-0004hU-5S
Subject: Re: [V9fs-developer] [git pull] vfs.git 9p fix
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
 Linus Torvalds <torvalds@linux-foundation.org>, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

The pull request you sent on Wed, 3 Aug 2022 20:46:26 +0100:

> git://git.kernel.org/pub/scm/linux/kernel/git/viro/vfs.git tags/pull-work.9p

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/ff89dd08c0f0a3fd330c9ef9d775e880f82c291e

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
