Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D4EAE222C8D
	for <lists+v9fs-developer@lfdr.de>; Thu, 16 Jul 2020 22:14:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jwAGX-00041V-S4; Thu, 16 Jul 2020 20:14:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <davem@davemloft.net>) id 1jwAGW-00041H-Fs
 for v9fs-developer@lists.sourceforge.net; Thu, 16 Jul 2020 20:14:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :References:In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=a1rPTlhRcaPC7O2DVunaVEZKoJYdtGoZLf9FVuX4JZg=; b=fz9gUfn8NCchnobnUcVpGfHx1V
 4WR/EM7pJfmAelArrXSCJipbPZQmk1VVeiYS9Xdnd9Soi4GSbte3HNxj1oHg/9zw3TI3DbXFM7QWN
 qRtil4lXmQ8f1cFL/PJ4GB2XGXTqlKKW0GGyUvZ8PQgzCS/Xvhga6raIWBAieEFjZpZo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:References:
 In-Reply-To:From:Subject:Cc:To:Message-Id:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=a1rPTlhRcaPC7O2DVunaVEZKoJYdtGoZLf9FVuX4JZg=; b=NDpuGtaYHjyWJOM+MevfJT3YK+
 ZSziswfn0TwaN2HOL8SUSk6x8FEIZbYhNGyeFnyg6EtDFNkZ74inZx+Z08E242vfBGD8VQqI/oL6c
 FhQz4rXhRfXG8dgS5a7QnLUAARaSlRV6ZvIFEEfpfdMoODXWgptOp6LqIKE8XoQGVF4Y=;
Received: from shards.monkeyblade.net ([23.128.96.9])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jwAGT-00B17D-MQ
 for v9fs-developer@lists.sourceforge.net; Thu, 16 Jul 2020 20:14:00 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id E8E8011E4591F;
 Thu, 16 Jul 2020 13:13:43 -0700 (PDT)
Date: Thu, 16 Jul 2020 13:13:41 -0700 (PDT)
Message-Id: <20200716.131341.1043144835432437801.davem@davemloft.net>
To: asmadeus@codewreck.org
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200716075820.GA3720@nautica>
References: <20200715134756.GB22828@nautica>
 <20200715.142459.1215411672362681844.davem@davemloft.net>
 <20200716075820.GA3720@nautica>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Thu, 16 Jul 2020 13:13:44 -0700 (PDT)
X-Spam-Score: -0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.5 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jwAGT-00B17D-MQ
Subject: Re: [V9fs-developer] [PATCH] net/9p: validate fds in p9_fd_open
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
Cc: lucho@ionkov.net, syzbot+e6f77e16ff68b2434a2c@syzkaller.appspotmail.com,
 ericvh@gmail.com, netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 nazard@nazar.ca, v9fs-developer@lists.sourceforge.net, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net


The amount of time you used to compose this email exceeds by several
orders of magnitude the amount of effort it would have taken to merge
the fix to Linus, calm the syzbot warnings, and make those warnings
therefore more useful for people doing active development.

I think your priorities are kinda off, but we can agree to disagree
I guess.

Thank you.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
