Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 81F6E23199E
	for <lists+v9fs-developer@lfdr.de>; Wed, 29 Jul 2020 08:33:33 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1k0fec-0002cv-O1; Wed, 29 Jul 2020 06:33:30 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@notk.org>) id 1k0feb-0002co-NW
 for v9fs-developer@lists.sourceforge.net; Wed, 29 Jul 2020 06:33:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=H1cVfU+MvVZ9xtv/Fv6t/3piZCazJ5GZiAVD34mJYT4=; b=Ld9QM5xPjfSA/mIonCqdTgMaL0
 qub0x/KTzHjAr/+HcA6ElajZMZmxjwoOvZgdoI8j8MNMRi0/uoFbFld5hT351aVClTwRoYnlep0o8
 OheoF7+z1gq3vZsKY1kBxzFJuuW3qzvV5mrssxbttzpwEkK01d8yOaWeCHKxuP94+YqI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=H1cVfU+MvVZ9xtv/Fv6t/3piZCazJ5GZiAVD34mJYT4=; b=l
 ccT5dFbg6nBGOaUMmO6yL8ZmL47hu5lDrp6XdNjgSRbNs9VP4pvUpiA31FD+594wOnBm3/rJKwigd
 6fNlfISfV5Y8mP6DwWEBNDUyC9Xh58AQ1OW4OpPX+9sejm5HBbRFm/VEQHYNMC8Sz3SyK7/GWf4JQ
 vR6FuYf5bHwHTdQ0=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1k0feZ-005r34-Uv
 for v9fs-developer@lists.sourceforge.net; Wed, 29 Jul 2020 06:33:29 +0000
Received: by nautica.notk.org (Postfix, from userid 1001)
 id C9EDDC01F; Wed, 29 Jul 2020 08:33:21 +0200 (CEST)
Date: Wed, 29 Jul 2020 08:33:06 +0200
From: Dominique Martinet <asmadeus@codewreck.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <20200729063306.GA19549@nautica>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1k0feZ-005r34-Uv
Subject: [V9fs-developer] [GIT PULL] 9p update for 5.8
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Sorry for the late request, I took some time to fix my test setup and to
be convinced these two patches are worth sending now and not wait until
the next merge window.

(the "weird" -2 at the end of the tag is because I had already used
9p-for-5.8 for the original -rc1 pull)


The following changes since commit 11ba468877bb23f28956a35e896356252d63c983:

  Linux 5.8-rc5 (2020-07-12 16:34:50 -0700)

are available in the Git repository at:

  https://github.com/martinetd/linux tags/9p-for-5.8-2

for you to fetch changes up to 74d6a5d5662975aed7f25952f62efbb6f6dadd29:

  9p/trans_fd: Fix concurrency del of req_list in
  p9_fd_cancelled/p9_read_work (2020-07-19 14:58:47 +0200)

----------------------------------------------------------------
A couple of syzcaller fixes for 5.8

the first one in particular has been quite noisy ("broke" in -rc5)
so this would be worth landing even this late even if users likely
won't see a difference

----------------------------------------------------------------
Christoph Hellwig (1):
      net/9p: validate fds in p9_fd_open

Wang Hai (1):
      9p/trans_fd: Fix concurrency del of req_list in p9_fd_cancelled/p9_read_work

 net/9p/trans_fd.c | 39 ++++++++++++++++++++++++++++++---------
 1 file changed, 30 insertions(+), 9 deletions(-)
-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
