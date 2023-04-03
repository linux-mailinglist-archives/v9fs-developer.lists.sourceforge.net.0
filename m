Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BF7D86D3E19
	for <lists+v9fs-developer@lfdr.de>; Mon,  3 Apr 2023 09:29:58 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pjEdY-0004DA-No;
	Mon, 03 Apr 2023 07:29:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <brauner@kernel.org>) id 1pjEdX-0004D4-8G
 for v9fs-developer@lists.sourceforge.net;
 Mon, 03 Apr 2023 07:29:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FLNXzVfoU0yYtcakjOeDDNUdnycYbbcKvXMQtjYma9s=; b=RsOIHFxu6TCFxDubBbYO5zO3Df
 SVk+SdpMrzJEo9ytpKnTc9JH6tvwnNUtAbHBgNjL1yXvkv8rQLB5HZDdmcFNHuFvGCHdo+KBpQPKI
 a6Yi7JAW+9XfqRmc/bp9CIiz9Xz6fJesWQmFRyW3rne+YL7MJ/vZsuw5ep6I9/H3lPkc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=FLNXzVfoU0yYtcakjOeDDNUdnycYbbcKvXMQtjYma9s=; b=eo75ZH8Miy5tl2Su9jfcHtMYD0
 yQR+/nIzMA3GGilctFIhz0eh6nNFdmH+pC2WdwAm9Y5j78i+vq95vEgV1UVq7AVLeIycyiPd+tl1o
 m8YbP+8YFg3NtPindI4fMVBsOY2Vmo4HAyuvYuCasJ4NMZyUuHtWOcNCIHzSqktrY5D8=;
Received: from ams.source.kernel.org ([145.40.68.75])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pjEdO-00DXcA-IH for v9fs-developer@lists.sourceforge.net;
 Mon, 03 Apr 2023 07:29:54 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 4BC49B81132;
 Mon,  3 Apr 2023 07:29:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 89D8FC433D2;
 Mon,  3 Apr 2023 07:29:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1680506975;
 bh=lQcjagvQW5vaKjYm9FM3pRh642wat0HtPZnNd6xz+c0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=N7io5QkHpEI2QN6UpD2VmiAswDOIIp1DM7o4nOxJKwqIDAZT6vBS4OEc9QGsbHx6/
 eWglYVbCgvn9waOVIPUg/kEKy8loKzgK8uZusMUHNcYzyrc3fPfSBzBU/kLfe1rQrd
 B4hmSlx83bj2+Zbd8lVv18yjY3c6lkZ5jSRYwDfK4GUKosy/1QbvXsMXaxnn3F9MC+
 Ioz9AMty2OOYXwGdWvefIrreav4Xiq5BTZ+9BV5NA1fqje3ZmNv1NWvhSQ8MjQLBpG
 jOTno9/vlsHwGv/8M7RrhvuXKxRlrBYNDqKYxG7o5JiTvEsYAetBWzjHWQb7k7w7r0
 D4NnRDCqPgUOQ==
From: Christian Brauner <brauner@kernel.org>
To: Jeff Layton <jlayton@kernel.org>
Date: Mon,  3 Apr 2023 09:28:07 +0200
Message-Id: <20230403-zealous-refusal-b811eb5e1cdf@brauner>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230330104144.75547-1-jlayton@kernel.org>
References: <20230330104144.75547-1-jlayton@kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=560; i=brauner@kernel.org;
 h=from:subject:message-id; bh=g7myO4zItbTFXcpfnu52zRNrXg6NcZ41DX48kuLxQ7o=;
 b=owGbwMvMwCU28Zj0gdSKO4sYT6slMaRo1T9/Ejv77vLS841zEjJjrzBVuqu/OWR8ateJIwttVLQy
 PotM6yhlYRDjYpAVU2RxaDcJl1vOU7HZKFMDZg4rE8gQBi5OAZhI0yRGhl8LcxlEbDJUJ+xl3J+6KT
 bt9q9j99YtDPhyrnV60M5nvvUM/xT7krZFGW014ZkX/rJe9Xeo0DTx7e3TDXlqDD0WCnruZQUA
X-Developer-Key: i=brauner@kernel.org; a=openpgp;
 fpr=4880B8C9BD0E5106FC070F4F7B3C391EFEA93624
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, 30 Mar 2023 06:41:43 -0400,
 Jeff Layton wrote: > There
 are three copies of the same dt_type helper sprinkled around the > tree.
 Convert them to use the common fs_umode_to_dtype function instea [...] 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [145.40.68.75 listed in list.dnswl.org]
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1pjEdO-00DXcA-IH
Subject: Re: [V9fs-developer] [PATCH] fs: consolidate duplicate dt_type
 helpers
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: "deprecated: use v9fs@lists.linux.dev"
 <v9fs-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=v9fs-developer>
List-Post: <mailto:v9fs-developer@lists.sourceforge.net>
List-Help: <mailto:v9fs-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=subscribe>
Cc: Latchesar Ionkov <lucho@ionkov.net>, Christian Brauner <brauner@kernel.org>,
 Eric Van Hensbergen <ericvh@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Phillip Potter <phil@philpotter.co.uk>, Tejun Heo <tj@kernel.org>,
 Chuck Lever <chuck.lever@oracle.com>, Joel Becker <jlbec@evilplan.org>,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 Christoph Hellwig <hch@lst.de>, Alexander Viro <viro@zeniv.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net


On Thu, 30 Mar 2023 06:41:43 -0400, Jeff Layton wrote:
> There are three copies of the same dt_type helper sprinkled around the
> tree. Convert them to use the common fs_umode_to_dtype function instead,
> which has the added advantage of properly returning DT_UNKNOWN when
> given a mode that contains an unrecognized type.
> 
> 

I've picked this up now,

tree: git://git.kernel.org/pub/scm/linux/kernel/git/vfs/idmapping.git
branch: fs.misc
[1/1] fs: consolidate duplicate dt_type helpers
      commit: 364595a6851bf64e1c38224ae68f5dd6651906d1


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
