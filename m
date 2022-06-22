Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 93901555086
	for <lists+v9fs-developer@lfdr.de>; Wed, 22 Jun 2022 17:59:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1o42l6-0002WU-Gw; Wed, 22 Jun 2022 15:59:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <pr-tracker-bot@kernel.org>) id 1o42l5-0002WM-9P
 for v9fs-developer@lists.sourceforge.net; Wed, 22 Jun 2022 15:59:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:Date:Message-Id:References:In-Reply-To:From:
 Subject:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nErgClMkRZ3OOfahQfLePAG3tc/MA5BxENrI0sCcR+c=; b=fDtxpgCDf9rBWP/ia8tJ0qDsNm
 +6HrLdXVZHUR712LpQm/zi0DfdBIvvuOiZA09XlGgSkQXaOPEs+AbCTFC0CG/6Om8spH7qJFqCuVK
 W4NEF9P9n+M60DQGUqSpJPu6cysVF5lNRa5EcfLWg4w1T/AXngXVqQ04mD8CjskCkMi8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:Date:Message-Id:References:In-Reply-To:From:Subject:Sender:Reply-To
 :MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=nErgClMkRZ3OOfahQfLePAG3tc/MA5BxENrI0sCcR+c=; b=Ju1mICNroqgwvyySA60rJlxuF8
 zOQZmVpnr2BTUuGKkrY4vN5nunyKGffhof3OLutuJgy6JhPUHNOyEwqAwasMUTQGk/MUn//z+qLac
 YDVLEy04Ht7n1biyhpb1m2ttOfWiclZiEA9mO6wG8eVFBhsv7m65b87qmQpJiUXbwOFk=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1o42kx-00011I-Fs
 for v9fs-developer@lists.sourceforge.net; Wed, 22 Jun 2022 15:59:08 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 29BFBB81F98;
 Wed, 22 Jun 2022 15:58:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB551C34114;
 Wed, 22 Jun 2022 15:58:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1655913528;
 bh=eJXLKQ3BYgNftB2DvfgHxogKBElNoxFmgA7Jbw3c6A4=;
 h=Subject:From:In-Reply-To:References:Date:To:Cc:From;
 b=lDanj8MFmMSAAWgwRBAE5PvgE6L0etVXvvng4lufcoK8jCY+eIBJqBh3Rjhs5U3Db
 Er7/j4pol3nQI/x4U8FUZFRH+TkfE+PdaTzgf1GHQqwIxW7nsfOflQrhvpRUZCrCQu
 AvTN0QXXV9ovcObREi8qDy20n/ww+od7WMRx5Vw4Fr/4tcsOdZOni3fmztkRZ79nkx
 mtn0QZhWX2D+cjzh3sHA8DCHojAVGAig24TRabx9h5ie150o+SKtvKMDnVSVrmOjFC
 JGv/UOJdwqqpKpFI4CkH/UX3GFxQTAHf4ntg7lQf6uvz8sKDC7Ou5zLg5ryJh3jiA1
 gsXdNromFXzfQ==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org
 (localhost.localdomain [127.0.0.1])
 by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id
 D5260E574DA; Wed, 22 Jun 2022 15:58:47 +0000 (UTC)
From: pr-tracker-bot@kernel.org
In-Reply-To: <YrKeHMRfXTNw3vTE@codewreck.org>
References: <YrKeHMRfXTNw3vTE@codewreck.org>
X-PR-Tracked-List-Id: <linux-kernel.vger.kernel.org>
X-PR-Tracked-Message-Id: <YrKeHMRfXTNw3vTE@codewreck.org>
X-PR-Tracked-Remote: https://github.com/martinetd/linux tags/9p-for-5.19-rc4
X-PR-Tracked-Commit-Id: b0017602fdf6bd3f344dd49eaee8b6ffeed6dbac
X-PR-Merge-Tree: torvalds/linux.git
X-PR-Merge-Refname: refs/heads/master
X-PR-Merge-Commit-Id: 3abc3ae553c7ed73365b385b9a4cffc5176aae45
Message-Id: <165591352786.24413.10949630559737106168.pr-tracker-bot@kernel.org>
Date: Wed, 22 Jun 2022 15:58:47 +0000
To: Dominique Martinet <asmadeus@codewreck.org>
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The pull request you sent on Wed, 22 Jun 2022 13:44:12 +0900:
 > https://github.com/martinetd/linux tags/9p-for-5.19-rc4 has been merged
 into torvalds/linux.git:
 https://git.kernel.org/torvalds/c/3abc3ae553c7ed73365b385b9a4cffc5176aae45
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [145.40.68.75 listed in list.dnswl.org]
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1o42kx-00011I-Fs
Subject: Re: [V9fs-developer] [GIT PULL] 9p fixes for 5.19-rc4
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
Cc: Christian Schoenebeck <linux_oss@crudebyte.com>,
 linux-kernel@vger.kernel.org, Tyler Hicks <tyhicks@linux.microsoft.com>,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 Linus Torvalds <torvalds@linux-foundation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

The pull request you sent on Wed, 22 Jun 2022 13:44:12 +0900:

> https://github.com/martinetd/linux tags/9p-for-5.19-rc4

has been merged into torvalds/linux.git:
https://git.kernel.org/torvalds/c/3abc3ae553c7ed73365b385b9a4cffc5176aae45

Thank you!

-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/prtracker.html


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
