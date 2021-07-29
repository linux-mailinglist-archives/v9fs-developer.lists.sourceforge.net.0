Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 977BF3DA72C
	for <lists+v9fs-developer@lfdr.de>; Thu, 29 Jul 2021 17:08:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1m97eI-0003Yk-P1; Thu, 29 Jul 2021 15:08:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <SRS0=h9KE=MV=ubuntu.com=christian.brauner@kernel.org>)
 id 1m97eH-0003YK-6M
 for v9fs-developer@lists.sourceforge.net; Thu, 29 Jul 2021 15:08:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ewf6Ble6MZ+h2+ZkHN604BJ4A/sxYTRvX86G+B/60Ac=; b=cW/0r3FiaOxSyHDwK6svNRiI1q
 /yqdViWBtTCkpnATx7B9RI898y3rQZuAddQn+N68LDXt2bJVSr6vbWEVrbPUbWEi5wOVXFW0x8xNg
 dFYxnm7/KuqFCpBzEk3wOEn/C0JPMrBoHzPTz6Uq7K6tCUskt2FD4KlWiSffdlVaxe+k=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ewf6Ble6MZ+h2+ZkHN604BJ4A/sxYTRvX86G+B/60Ac=; b=PIrrtXMzl/7EAM2InZucBWyMIw
 UIc/aUXYBddG6R5tU+daBE937rlyTgFGm6516mSJxkyLLo1Tjfhpr/Ij5lyOWct8yrreN4QKgZnRR
 kFXmZZq98rD57+uZle69lSV+qEO956Lr8iY9tmXCj9NDfAl9qPgE2hxKmw5Uv9smJkFk=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1m97e7-00085l-UQ
 for v9fs-developer@lists.sourceforge.net; Thu, 29 Jul 2021 15:08:37 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2E90D60EBC;
 Thu, 29 Jul 2021 15:08:19 +0000 (UTC)
Date: Thu, 29 Jul 2021 17:08:16 +0200
From: Christian Brauner <christian.brauner@ubuntu.com>
To: Vivek Goyal <vgoyal@redhat.com>
Message-ID: <20210729150816.jg5brzgt7nndhtdi@wittgenstein>
References: <20210714202321.59729-1-vgoyal@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210714202321.59729-1-vgoyal@redhat.com>
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: ubuntu.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1m97e7-00085l-UQ
Subject: Re: [V9fs-developer] [PATCH v3 0/3] support booting of arbitrary
 non-blockdevice file systems
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
Cc: miklos@szeredi.hu, linux-kernel@vger.kernel.org, virtio-fs@redhat.com,
 viro@zeniv.linux.org.uk, stefanha@redhat.com, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Wed, Jul 14, 2021 at 04:23:18PM -0400, Vivek Goyal wrote:
> Hi,
> 
> This is V3 of patches. Christoph had posted V2 here.
> 
> https://lore.kernel.org/linux-fsdevel/20210621062657.3641879-1-hch@lst.de/
> 
> There was a small issue in last patch series that list_bdev_fs_names()
> did not put an extra '\0' at the end as current callers were expecting.
> 
> To fix this, I have modified list_bdev_fs_names() and split_fs_names()
> to return number of null terminated strings they have parsed. And
> modified callers to use that to loop through strings (instead of
> relying on an extra null at the end).
> 
> Christoph was finding it hard to find time so I took his patches, 
> added my changes in patch3 and reposting the patch series.
> 
> I have tested it with 9p, virtiofs and ext4 filesystems as rootfs
> and it works for me.

lgtm,
Acked-by: Christian Brauner <christian.brauner@ubuntu.com>


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
