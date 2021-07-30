Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A7E923DB090
	for <lists+v9fs-developer@lfdr.de>; Fri, 30 Jul 2021 03:20:14 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1m9HC8-0005LC-6W; Fri, 30 Jul 2021 01:20:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <viro@ftp.linux.org.uk>) id 1m9HC7-0005L4-6k
 for v9fs-developer@lists.sourceforge.net; Fri, 30 Jul 2021 01:20:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Sender:In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JYcuKD2pIftTR8v09CiToeASzTAC9BkeRb44uQy7La0=; b=FXuLOoZNBTPkzfi9SD/zt0c5q
 4txyNc3dp05UKmgshgVlroUmSBRC22m6gcAi/Xs3bRW2Fq/SxrdoctQNWKUbAmDyeQ48HSDWhOT+M
 oFTla5b6VOV11Yxj2pdw71yIOVH+mxGidVkxXth60BTY5wuOhJ2JRjPRBAPF+xuAw/v0g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Sender:In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JYcuKD2pIftTR8v09CiToeASzTAC9BkeRb44uQy7La0=; b=GNVgIIdEqlu5nLkC/am7AzRL6v
 IYwWZ8xZ0esSaw1jhXJ+uVNe0FPrEryRwu64cggSf7RKHJzWQzahVDoRqgcaKzcQe9GIzkFCdhAfj
 p9QYv+ZGIyuYMxi4X1BU5Q47tB/o46/SxJXcrNrekqx7tPFVpHzq/TtO9xM9vETtB8AA=;
Received: from zeniv-ca.linux.org.uk ([142.44.231.140])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1m9HBz-0006RB-V8
 for v9fs-developer@lists.sourceforge.net; Fri, 30 Jul 2021 01:20:11 +0000
Received: from viro by zeniv-ca.linux.org.uk with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1m9Gpn-0053HG-6t; Fri, 30 Jul 2021 00:57:07 +0000
Date: Fri, 30 Jul 2021 00:57:07 +0000
From: Al Viro <viro@zeniv.linux.org.uk>
To: Vivek Goyal <vgoyal@redhat.com>
Message-ID: <YQNOY9H/6mJMWRNN@zeniv-ca.linux.org.uk>
References: <20210714202321.59729-1-vgoyal@redhat.com>
 <20210714202321.59729-4-vgoyal@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210714202321.59729-4-vgoyal@redhat.com>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1m9HBz-0006RB-V8
Subject: Re: [V9fs-developer] [PATCH v3 3/3] fs: simplify
 get_filesystem_list / get_all_fs_names
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
 stefanha@redhat.com, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Wed, Jul 14, 2021 at 04:23:21PM -0400, Vivek Goyal wrote:

> +static int __init split_fs_names(char *page, char *names)
>  {
> +	int count = 0;
> +	char *p = page;
>  
> +	strcpy(p, root_fs_names);
> +	while (*p++) {
> +		if (p[-1] == ',')
> +			p[-1] = '\0';
>  	}
> +	*p = '\0';
> +
> +	for (p = page; *p; p += strlen(p)+1)
> +		count++;
>  
> +	return count;
>  }

Ummm....  The last part makes no sense - it counts '\0' in the array
pointed to be page, until the first double '\0' in there.  All of
which had been put there by the loop immediately prior to that one...

Incidentally, it treats stray ,, in root_fs_names as termination;
is that intentional?


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
