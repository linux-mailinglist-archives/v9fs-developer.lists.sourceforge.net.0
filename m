Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D71C6CB57B
	for <lists+v9fs-developer@lfdr.de>; Tue, 28 Mar 2023 06:47:15 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ph1En-00075w-Hz;
	Tue, 28 Mar 2023 04:47:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mcgrof@infradead.org>) id 1ph1Eh-00075l-Cs
 for v9fs-developer@lists.sourceforge.net;
 Tue, 28 Mar 2023 04:47:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Sender:In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ypv8+CH7Q6NpkZf86J8lzL3Lc4pGkQmgM3WoxMZ0Be4=; b=G1i2TtvwGULJ4bEL3bX75Y8LNf
 LRuxUqi5htFXG7Y1rvjGFZfBBzBosoBbngOW0eZ0Ef5rixpTcImSy1/Gp3yuYCTrGMjw9ATJEPWX9
 E3oy2o2E1FJRysCRvo7ZoPW1GcIy2KgsQ0FGRWdxAOxPQIEXIN7Kf0qJ22OiMRcNJAOg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Sender:In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ypv8+CH7Q6NpkZf86J8lzL3Lc4pGkQmgM3WoxMZ0Be4=; b=CIQzb3xl1ZLOfSlz13TDA1X8Rj
 cMzoF5iOqRrzJI2aHsPXBf8GmRxs3hIMG8qVS3DupJOplgETDDPrDSSpr5xGptAkIyVuEupWwZHfz
 /DXgk6LMqvAr8yFy/Ovpd4OHzV3kfKtjcBnnKYnUhFVGz8U7rf3qSYRsSHW/2qctq29s=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ph1Ec-006VqF-IP for v9fs-developer@lists.sourceforge.net;
 Tue, 28 Mar 2023 04:47:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=ypv8+CH7Q6NpkZf86J8lzL3Lc4pGkQmgM3WoxMZ0Be4=; b=BUesIyQeD48bsfZVTvqhiPR7jC
 bC/96figXudcJ6U6VQapH+2ONTJPPzOMnyj3rNrJxSTtf7QVGIFjgZgHqA8rKFfGJ+imfP4qGnfBE
 eGQWByJMOBrrEJKpB9HSmEeE/ha0YmTfI9/0DTnya000d0FwAhUzqNHHWxlMvuA0Nwa68UcImYYsO
 k7knV8JeBoJ2nhDIPsLVZ6oRMLGTObAfGzibKBN2rgmgKOGKxwSCW5zuZBv4oGPEfUzyFm5SHwcTn
 rjlmzELpdCtPVBsVKzZg84OnYp/gzbzmb5kxVryMB4g8ZEAlm5BesLzQbK3AQxB+5+wJRDUL1mgNJ
 U01zpcBg==;
Received: from mcgrof by bombadil.infradead.org with local (Exim 4.96 #2 (Red
 Hat Linux)) id 1ph1EQ-00D8Kw-1Q; Tue, 28 Mar 2023 04:46:50 +0000
Date: Mon, 27 Mar 2023 21:46:50 -0700
From: Luis Chamberlain <mcgrof@kernel.org>
To: asmadeus@codewreck.org
Message-ID: <ZCJxOgV92yPc3zu1@bombadil.infradead.org>
References: <ZCI+7Wg5OclSlE8c@bombadil.infradead.org>
 <ZCJGjuOYR6nGXiAw@codewreck.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZCJGjuOYR6nGXiAw@codewreck.org>
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Mar 28, 2023 at 10:44:46AM +0900,
 asmadeus@codewreck.org
 wrote: > I'm going to rant a bit here, but my main problem with testing is
 that > there are plenty of tools, but I have very little com [...] 
 Content analysis details:   (-2.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.137.202.133 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1ph1Ec-006VqF-IP
Subject: Re: [V9fs-developer] 9p regression linux-next next-20230327
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

On Tue, Mar 28, 2023 at 10:44:46AM +0900, asmadeus@codewreck.org wrote:
> I'm going to rant a bit here, but my main problem with testing is that
> there are plenty of tools, but I have very little compute available for
> this (just a small machine at home that's getting close to 10 years
> old...), as this is really a free time activity which isn't getting any
> funding.
> [read: happy to spend a bit more time on 9p if it's getting paid :P]

I think we can likely help with at least hardware access to help test 9p well.
If you're interested let me know!

  Luis


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
