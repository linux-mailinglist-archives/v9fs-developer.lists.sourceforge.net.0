Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 67C4B6CB302
	for <lists+v9fs-developer@lfdr.de>; Tue, 28 Mar 2023 03:12:34 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pgxt2-00048p-Ix;
	Tue, 28 Mar 2023 01:12:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mcgrof@infradead.org>) id 1pgxt1-00048j-FM
 for v9fs-developer@lists.sourceforge.net;
 Tue, 28 Mar 2023 01:12:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Sender:Content-Type:MIME-Version:Message-ID:Subject
 :Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=L7FSNc1vgVAeJP3WQWgrBGVSgOd3ygmN34pdIvG5vvk=; b=LXagk1C0StX7/72PbDX2kERlaB
 Bp2noVFAu5ZJ35JuFpYQyqSbwQ9A3uQyaxgSfL8cMoIwAdhU+gbNwZgeGdTdkXyvQO3rxgreqEi34
 SS8EsYyHcq3hKnm+MfimGXvmayyF5juE3Lm93e45hSlPbKMJ8LiIxVPwQjuUnbsFR6XQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Sender:Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=L7FSNc1vgVAeJP3WQWgrBGVSgOd3ygmN34pdIvG5vvk=; b=F
 +XEm5UuxSFWeALQVL9yaXyho/HHY0EZLHGYcwFnUhypfmXkHPIndBhMeSROfLce4kFhtz4FXukquT
 bzQPldOaA44oiKYTzFKkzvMrwdS8swtPcStGMCIy/2ev1LoyX6aX3GRyWjKcHyJilzukjySa1Wuc+
 BgITJjFwzSIhfGyQ=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pgxsx-0006aU-SI for v9fs-developer@lists.sourceforge.net;
 Tue, 28 Mar 2023 01:12:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Sender:Content-Type:MIME-Version:
 Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=L7FSNc1vgVAeJP3WQWgrBGVSgOd3ygmN34pdIvG5vvk=; b=Bsc9lcMjTD95pplz1jlvMeUI7b
 9idPhq/QIdIwe6y2JXuROqOjQiFn49gj46z2bKgZni4pjOfDceTY8ksFgqo/NxHX92G6JEUweVxRo
 CwVJB/pqUA4QwZ/E1qaHzzWrknz7nX3yvKxnI3Ls3Zyp4gZ5NdUfX544NQ4jDS9cUODYAn/42yqnN
 q1C40ug3w5fw3cOz6PIdk5m5SDm3XW4cXH0r7cTkjGbRS7fFi+cQm1WCNcM+SUOZBDXRgN/I3B0Xl
 OxxzuVWygOXx9hmUZ1srTeTvEfeHY0+nWEQcqBR6BjHIKEi9oh2aXYy/x3FRJUPffuq2oGD33uS1H
 ngS9f8hA==;
Received: from mcgrof by bombadil.infradead.org with local (Exim 4.96 #2 (Red
 Hat Linux)) id 1pgxsj-00Clkw-33; Tue, 28 Mar 2023 01:12:13 +0000
Date: Mon, 27 Mar 2023 18:12:13 -0700
From: Luis Chamberlain <mcgrof@kernel.org>
To: v9fs-developer@lists.sourceforge.net
Message-ID: <ZCI+7Wg5OclSlE8c@bombadil.infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: kdevops uses 9p for its client / host setup to enable rapid
 kernel development on guests using the host to compile / guest to install
 a read-only-mount. I updated the kernel today to next-20230327 and see the
 9p mount won't come up and so boot fails. I'm starting to bisect and see
 next-20230301 was OK. So at least have: 
 Content analysis details:   (-2.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.137.202.133 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1pgxsx-0006aU-SI
Subject: [V9fs-developer] 9p regression linux-next next-20230327
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
Cc: lucho@ionkov.net, Pankaj Raghav <p.raghav@samsung.com>,
 Eric Van Hensbergen <ericvh@gmail.com>, Amir Goldstein <amir73il@gmail.com>,
 Jeff Layton <jlayton@kernel.org>, Josef Bacik <josef@toxicpanda.com>,
 linux-kernel@vger.kernel.org, v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

kdevops uses 9p for its client / host setup to enable rapid kernel
development on guests using the host to compile / guest to install
a read-only-mount.

I updated the kernel today to next-20230327 and see the 9p mount won't
come up and so boot fails. I'm starting to bisect and see next-20230301
was OK. So at least have:

next-20230301: GOOD                                                             
next-20230315: GOOD
next-20230327: BAD

Once I narrow this down a bit further I'll poke back.

What sort of tests are run for 9p before some development changes get
pushed into a tree that lands on linux-next? If none exists, simply
testing 'make linux' works with kdevops could perhaps be a start.

  Luis


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
