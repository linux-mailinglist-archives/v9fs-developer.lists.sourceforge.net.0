Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DF6AF20C555
	for <lists+v9fs-developer@lfdr.de>; Sun, 28 Jun 2020 04:15:00 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jpMqR-0004lC-AG; Sun, 28 Jun 2020 02:14:59 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jianyong.wu@arm.com>) id 1jpMqP-0004kv-Gj
 for v9fs-developer@lists.sourceforge.net; Sun, 28 Jun 2020 02:14:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xhX4Ka8GJDG4OzmU+49u2tiopN2DXl+Uoor2V5UK2k8=; b=nPryWuOQ/Io5FtXVS4rvRqkNPO
 yfxoQlSwgsdLpOOndTtBLUMnFj2s6yT2GCQ+vSaOH4jLf5LMeb70vS2aZDK+8cDR9JiS8db6JqLYJ
 7zyDwKqHkkaip/MoPLP0IeK14fCJesq0InSR03p2WApO/CTb+NdpaJ6lONC/7kOON50s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xhX4Ka8GJDG4OzmU+49u2tiopN2DXl+Uoor2V5UK2k8=; b=jiXwEzQgrf2HZr264N33CqPdtF
 yrFOhvASdkbhJjKFo0Fn/6Sn+wZG+aNnnbcfhlPLziWqq3i+N1W1oYVclcVT9UZ/kLREhGPgb8dSs
 6hARI6jwaj6niewUxzpkyai1v5anKMkjFO823q0BtSiXYEjj8/NK4GewsWaAyvFzt43c=;
Received: from foss.arm.com ([217.140.110.172])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtp (Exim 4.92.2)
 id 1jpMqN-0036p5-7y
 for v9fs-developer@lists.sourceforge.net; Sun, 28 Jun 2020 02:14:57 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 60F09D6E;
 Sat, 27 Jun 2020 18:59:04 -0700 (PDT)
Received: from entos-d05.shanghai.arm.com (entos-d05.shanghai.arm.com
 [10.169.40.35])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 7BF6A3F73C;
 Sat, 27 Jun 2020 18:59:01 -0700 (PDT)
From: Jianyong Wu <jianyong.wu@arm.com>
To: ericvh@gmail.com, lucho@ionkov.net, asmadeus@codewreck.org,
 v9fs-developer@lists.sourceforge.net
Date: Sun, 28 Jun 2020 09:58:52 +0800
Message-Id: <20200628015854.34674-1-jianyong.wu@arm.com>
X-Mailer: git-send-email 2.17.1
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: arm.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1jpMqN-0036p5-7y
Subject: [V9fs-developer] [RFC PATCH 0/2] 9p: retrieve fid from file if it
 exsits
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
Cc: Kaly.Xin@arm.com, jianyong.wu@arm.com, justin.he@arm.com, wei.chen@arm.com,
 Steve.Capper@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

in the current implementation in setattr in 9p, fid will always be retrieved
from dentry, which may be against the original intension of user and lead to
bug.
also, remove no used code in 9p.

Signed-off-by: Jianyong Wu <jianyong.wu@arm.com>

Jianyong Wu (2):
  9p: retrive fid from file when file instance exist.
  9p: remove unused code in 9p

 fs/9p/vfs_inode.c      | 58 +++---------------------------------------
 fs/9p/vfs_inode_dotl.c |  5 +++-
 2 files changed, 8 insertions(+), 55 deletions(-)

-- 
2.17.1



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
