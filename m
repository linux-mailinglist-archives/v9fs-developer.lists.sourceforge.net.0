Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FD845892F9
	for <lists+v9fs-developer@lfdr.de>; Wed,  3 Aug 2022 22:06:52 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oJKdj-000309-AF; Wed, 03 Aug 2022 20:06:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <viro@ftp.linux.org.uk>) id 1oJKdi-000302-6J
 for v9fs-developer@lists.sourceforge.net; Wed, 03 Aug 2022 20:06:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Sender:Content-Type:MIME-Version:Message-ID:Subject
 :Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ypV51LSC2yLMN8naik/AVolcR5swmIC7+UCe5lt32x0=; b=AlZu6x2H43Qw002B7mxeSUhVtK
 nn8sjKOzG9Ybuoz9anIz4efXKF78Cw3PLXxGBe7bY33Y/6ktT5rj/Hhe7Ze8zMqOJBoDgzGilPq76
 Qneevg+cLo5qRP0azG9I5LjCEUn8DaxRJoLskq4pJogJJLP3/E3Bwt5+BO6Ms01DG8VQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Sender:Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=ypV51LSC2yLMN8naik/AVolcR5swmIC7+UCe5lt32x0=; b=Q
 EBphvmojTB+S6TCtdxYhWg7bm+83LDm6MwWHRPHB7FlXDhG798C9igbLIZDmnVbCe5fM2cspvG0g6
 Gxej+ByAdYZ+TxL4GRsMMv8Pse6XHxk1hNf9gOIxzUGNjVuc7F+TTYGNGKrjN53VbjoLpFQHMlbtb
 fikuNztMYmI5Xmcw=;
Received: from zeniv.linux.org.uk ([62.89.141.173])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1oJKdL-0001w6-M6
 for v9fs-developer@lists.sourceforge.net; Wed, 03 Aug 2022 20:06:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=linux.org.uk; s=zeniv-20220401; h=Sender:Content-Type:MIME-Version:
 Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=ypV51LSC2yLMN8naik/AVolcR5swmIC7+UCe5lt32x0=; b=k1CL8+0uDNr3/hJG7V3DswqHe6
 t/Rz+U7fIA8MsFqtjQpBeBhmV9WX1tdcw3qexjJ5OUN34MsE+hpXZ1SIR3LJwQlQppA9TL2vxnwwk
 7EicddrS3b7NLPKiMozXtEXU4Flv60OD3ao/v6WjBqVQTnKbWC8B1deiHGBuFOsePNCUYBmc0YS6G
 Eq5UgLjfGoO02vjxWMHm73wgrzYmIW10km3JtZLIs7/NLy0mxfmT9HVJyoZchITqOrmSU+wYZJI6S
 tUXX+ihpQSbVPkd93esen0HFlIi9vwvoSdlsHSIqBMFM+SEmSbpcyOdsLRD2WsNacJgsxmFWi+VjN
 Mf70bO8g==;
Received: from viro by zeniv.linux.org.uk with local (Exim 4.95 #2 (Red Hat
 Linux)) id 1oJKK2-000vYN-C1; Wed, 03 Aug 2022 19:46:26 +0000
Date: Wed, 3 Aug 2022 20:46:26 +0100
From: Al Viro <viro@zeniv.linux.org.uk>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <YurQkunyW5lfS9DH@ZenIV>
MIME-Version: 1.0
Content-Disposition: inline
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The following changes since commit
 f2906aa863381afb0015a9eb7fefad885d4e5a56:
 Linux 5.19-rc1 (2022-06-05 17:18:54 -0700) are available in the Git repository
 at: Content analysis details:   (-0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1oJKdL-0001w6-M6
Subject: [V9fs-developer] [git pull] vfs.git 9p fix
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
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

The following changes since commit f2906aa863381afb0015a9eb7fefad885d4e5a56:

  Linux 5.19-rc1 (2022-06-05 17:18:54 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/viro/vfs.git tags/pull-work.9p

for you to fetch changes up to f615625a44c4e641460acf74c91cedfaeab0dd28:

  9p: handling Rerror without copy_from_iter_full() (2022-06-09 10:01:34 -0400)

----------------------------------------------------------------
	net/9p abuses iov_iter primitives - attempts to copy _from_
a destination-only iov_iter when it handles Rerror arriving in reply to
zero-copy request.  Not hard to fix, fortunately; it's a prereq for the
iov_iter_get_pages() work in the second part of iov_iter series,
ended up in a separate branch.

Signed-off-by: Al Viro <viro@zeniv.linux.org.uk>

----------------------------------------------------------------
Al Viro (1):
      9p: handling Rerror without copy_from_iter_full()

 net/9p/client.c       | 86 +--------------------------------------------------
 net/9p/trans_virtio.c | 34 ++++++++++++++++++++
 2 files changed, 35 insertions(+), 85 deletions(-)


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
